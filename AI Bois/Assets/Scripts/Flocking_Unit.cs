using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Flocking_Unit : MonoBehaviour
{
    public float speed;
    public GameObject body;
    public float clusterDistance;
    public float viewDistance;
    public LayerMask layer;

    private GameObject[] flockMembers;
    private Vector3 flockCenter;
    private Vector3 flockAvgVelocity;

    public void Converge(Vector3 _pivot){
        
    }

    public void Disperse(Vector3 _pivot){

    }

    public void Align(Vector3 _direction, float _speed){

    }

    public void Attract(Vector3 _position){

    }

    public void FollowTarget(Vector3 _targetPos){

    }

    public void SearchTarget(Vector3 _targetLastPos){

    }

    public void SearchParty(){

    }

    public void CheckFrontCollisions(){
        Physics.Raycast(transform.position, transform.forward, layer);

        

        Debug.DrawRay(transform.position, transform.forward, Color.green, 5f);
    }

    private void Update(){

    }
}
