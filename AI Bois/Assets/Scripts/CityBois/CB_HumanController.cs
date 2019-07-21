using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CB_HumanController : MonoBehaviour
{
    // Internal
    public float speed;
    public float velocityGainDelay;
    public float velocityFalloffDelay;
    private Rigidbody rig;

    // External
    public Transform house;
    public Transform car;
    public Transform job;

    public enum BEHAVIOURSTATES
    {
        IDLE,
        MOVING,
        RUNNING
    }

    public BEHAVIOURSTATES currentState = BEHAVIOURSTATES.MOVING;

    public void SetState(BEHAVIOURSTATES _state)
    {
        currentState = _state;
    }

    void Start()
    {
        
    }

    void Update()
    {
        switch(currentState) {
            default:
                Debug.Log("Entered Invalid State");
            break;

            case BEHAVIOURSTATES.IDLE:
                rig.velocity = Vector3.Lerp(rig.velocity, Vector3.zero, velocityFalloffDelay);
            break;

            case BEHAVIOURSTATES.MOVING:
                rig.velocity = Vector3.Lerp(rig.velocity, transform.forward * speed * Time.deltaTime, velocityGainDelay);
            break;

            case BEHAVIOURSTATES.RUNNING:
                rig.velocity = Vector3.Lerp(rig.velocity, transform.forward * speed * 2f * Time.deltaTime, velocityGainDelay);
            break;
        }
    }

    public void FollowTarget(Transform _target){
        
    }
}
