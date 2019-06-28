using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Flocking_Unit : MonoBehaviour
{
    public Rigidbody rig;
    public float speed;
    public float rotSpeed;
    public GameObject body;
    public Vector2 clusterLimits;
    public float targetDistanceLimit;
    public float viewDistance;
    public float attractionForce;
    public float dispersionForce;
    public float alignDelay;
    public Transform targetPos;
    public LayerMask layer;
    public GameObject centerOfMassDebug;

    [Header("Testing")]
    public Vector3 TEMP_centerOfMass;

    [SerializeField]
    public List<GameObject> flockMembers = new List<GameObject>();
    private Vector3 flockCenter;
    private Vector3 flockAvgVelocity;
    private Vector3 vel;
    private bool advance = true;
    private bool locateTarget = true;
    private float currentTime;

    private void Start(){
        rig = GetComponent<Rigidbody>();
        currentTime = alignDelay;
    }
 
    public void OnTriggerEnter(Collider _col){
        if (_col.gameObject.CompareTag("FlockUnit") && !IsFlockMember(_col.gameObject)){
            Debug.Log("Added " + _col + " to flock");
            flockMembers.Add(_col.gameObject);
        }
    }

    /*public void OnTriggerExit(Collider _col){
        if (_col.gameObject.CompareTag("FlockUnit") && IsFlockMember(_col.gameObject)){
            Debug.Log(_col + " has left the flock");
            flockMembers.Remove(_col.gameObject);
        }
    }*/

    private bool IsFlockMember(GameObject _go){
        for (int i = 0; i < flockMembers.Count; i++){
            if (_go == flockMembers[i])
                return true;
        }
        return false;
    }
 
    public void CalculateCenterOfMass(){
        Vector3 centerOfMass;

        Bounds bounds = new Bounds(transform.position, Vector3.zero);
        bounds.Encapsulate(transform.position);
        for (int i = 0; i < flockMembers.Count; i++){
            bounds.Encapsulate(flockMembers[i].transform.position);
        }

        centerOfMass = bounds.center;

        centerOfMassDebug.transform.position = centerOfMass;

        flockCenter = centerOfMass;
    }

    public void Converge(){
        
    }

    public void Disperse(){
        rig.AddForce((transform.position - flockCenter) * dispersionForce, ForceMode.Impulse);
    }

    public void Align(){
        Vector3 avgVel = new Vector3(0, 0, 0);
        for (int i = 0; i < flockMembers.Count; i++){
            avgVel += flockMembers[i].GetComponent<Rigidbody>().velocity;
        }
        avgVel = avgVel/flockMembers.Count;

        rig.velocity = avgVel;
    }

    public void Attract(){
        rig.AddForce((flockCenter - transform.position) * attractionForce, ForceMode.Impulse);
    }

    public void FollowTarget(Vector3 _targetPos){
        transform.LookAt(_targetPos);
        if (Vector3.Distance(transform.position, _targetPos) > targetDistanceLimit)
            advance = true;
        else 
            advance = false;
    }

    public void CheckFrontCollisions(){
        RaycastHit hit;

        if (Physics.Raycast(transform.position, transform.forward, out hit, viewDistance, layer)){
            Debug.DrawRay(transform.position, transform.forward * hit.distance, Color.red);
            transform.Rotate(Vector3.up * rotSpeed, Space.Self);
            if (locateTarget == true)
                StartCoroutine(DelayLocateTarget());
        } else {
            Debug.DrawRay(transform.position, transform.forward * viewDistance, Color.green);
        }
    }

    private void Update(){

        CalculateCenterOfMass();
        CheckFrontCollisions();

        if (targetPos && locateTarget)
            FollowTarget(targetPos.position);

        if (flockMembers.Count > 1){
            if (Vector3.Distance(transform.position, flockCenter) > clusterLimits.y){
                Attract();
            } else if (Vector3.Distance(transform.position, flockCenter) <= clusterLimits.x){
                Disperse();
            }
        }
 
        if (currentTime <= 0){
            Align();
            currentTime = alignDelay;
        } else {
            currentTime-=Time.deltaTime;
        }

        if (advance)
            vel = transform.forward * speed;
        else
            vel = Vector3.zero;
        rig.velocity = vel;
    }

    IEnumerator DelayLocateTarget(){
        locateTarget = false;
        yield return new WaitForSeconds(1f);
        locateTarget = true;
    }
}
