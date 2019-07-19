using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CB_HumanController : MonoBehaviour
{
    // Internal
    public float speed;

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

    public BEHAVIOURSTATES currentState;

    public void SetState(BEHAVIOURSTATES _state)
    {
        currentState = _state;
    }

    void Start()
    {
        
    }

    void Update()
    {
        
    }
}
