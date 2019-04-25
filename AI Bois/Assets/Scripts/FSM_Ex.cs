using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(FSM_Ex_StateA))]
[RequireComponent(typeof(FSM_Ex_StateB))]

public class FSM_Ex : MonoBehaviour
{
    public int m_counter;
    public Renderer m_renderer;

    public FSM<FSM_Ex> m_myMachine;
    public FSM_Ex_StateA m_stateA;
    public FSM_Ex_StateB m_stateB;

    public enum States
    {
        stateA = 0,
        stateB = 1,
    }

    private void Awake()
    {
        m_stateA = GetComponent<FSM_Ex_StateA>();
        m_stateB = GetComponent<FSM_Ex_StateB>();
    }

    void Start()
    {
        m_myMachine = new FSM<FSM_Ex>();
        m_myMachine.InitFSM(this, m_stateA);
    }

    void Update()
    {
        m_myMachine.UpdateFSM();
    }

    private void LateUpdate()
    {
        m_myMachine.LateUpdateFSM();
    }

    private void FixedUpdate()
    {
        m_myMachine.FixedUpdateState();
    }

    public void ChangeState(States nextState)
    {
        switch (nextState)
        {
            case States.stateA: m_myMachine.ChangeState(m_stateA);break;
            case States.stateB: m_myMachine.ChangeState(m_stateB);break;
        }
    }
}
