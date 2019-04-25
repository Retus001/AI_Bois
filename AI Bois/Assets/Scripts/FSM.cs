using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FSM<T>
{
    private T m_parent;
    private FSM_State<T> m_currentState;
    private FSM_State<T> m_previousState;

    public void InitFSM(T parent, FSM_State<T> startState)
    {
        m_parent = parent;
        ChangeState(startState);
    }

    public void UpdateFSM()
    {
        m_currentState?.UpdateState(m_parent);
    }

    public void LateUpdateFSM()
    {
        m_currentState?.LateUpdateState(m_parent);
    }

    public void FixedUpdateState()
    {
        m_currentState?.FixedUpdateState(m_parent);
    }

    public void ChangeState(FSM_State<T> nextState)
    {
        m_previousState = m_currentState;
        m_currentState?.ExitState(m_parent);
        m_currentState = nextState;
        m_currentState?.EnterState(m_parent);
    }

    public void RevertToPreviousState()
    {
        if(m_previousState != null)
        {
            ChangeState(m_previousState);
        }
    }
}
