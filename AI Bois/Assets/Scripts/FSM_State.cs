using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FSM_State<T> : MonoBehaviour
{
    // Entrance code
    public virtual void EnterState(T parent) { }
    
    // Constant code
    public virtual void UpdateState(T parent) { }
    public virtual void LateUpdateState(T parent) { }
    public virtual void FixedUpdateState(T parent) { }

    // Exit code
    public virtual void ExitState(T parent) { }
}
