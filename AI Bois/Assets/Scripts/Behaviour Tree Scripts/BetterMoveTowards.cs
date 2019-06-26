using UnityEngine;
using BehaviorDesigner.Runtime;
using BehaviorDesigner.Runtime.Tasks;

public class BetterMoveTowards : Action
{
	public SharedGameObject man;
	public SharedGameObject target;
	public SharedFloat speed;
	
	public override void OnStart()
	{
		man.Value.transform.LookAt(target.Value.transform);
		man.Value.transform.Translate(Vector3.forward * speed.Value * Time.deltaTime, Space.Self);
	}

	public override TaskStatus OnUpdate()
	{
		return TaskStatus.Success;
	}
}