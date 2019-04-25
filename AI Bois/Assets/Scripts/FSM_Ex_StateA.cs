using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FSM_Ex_StateA : FSM_State<FSM_Ex>
{
    public Color m_stateColor;

    public override void EnterState(FSM_Ex parent)
    {
        parent.m_renderer.material.color = m_stateColor;
    }

    public override void UpdateState(FSM_Ex parent)
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            parent.ChangeState(FSM_Ex.States.stateB);
        }
    }

    public override void ExitState(FSM_Ex parent)
    {
        
    }
}
