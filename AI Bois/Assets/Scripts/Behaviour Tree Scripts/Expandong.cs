using UnityEngine;
using BehaviorDesigner.Runtime;
using BehaviorDesigner.Runtime.Tasks;

public class Expandong : Action
{
	public SharedGameObject s_target;
	public SharedColor s_colorman;

	GameObject target;

	public override void OnStart()
	{
		s_target.Value.GetComponent<MeshRenderer>().material.color = s_colorman.Value;
	}

	public override TaskStatus OnUpdate()
	{
		return TaskStatus.Success;
	}
}