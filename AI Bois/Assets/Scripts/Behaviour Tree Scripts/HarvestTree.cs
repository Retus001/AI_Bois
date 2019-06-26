using UnityEngine;
using BehaviorDesigner.Runtime;
using BehaviorDesigner.Runtime.Tasks;

public class HarvestTree : Action
{
	public SharedGameObject s_nearestTree;
	public SharedInt s_collectedApples;

	public override void OnStart()
	{
		if (s_nearestTree.Value != null){
			s_nearestTree.Value.GetComponent<TreeBehaviour>().HarvestApple();
			s_collectedApples.Value++;
		}
	}

	public override TaskStatus OnUpdate()
	{
		if (s_nearestTree.Value == null){
			Debug.LogWarning("Transform is null");
            return TaskStatus.Failure;
		}

		return TaskStatus.Success;
	}
}