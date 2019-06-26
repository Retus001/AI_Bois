using UnityEngine;
using BehaviorDesigner.Runtime;
using BehaviorDesigner.Runtime.Tasks;

public class SearchNearestTree : Action
{
	public SharedGameObject s_targetGameobject;
	public SharedGameObject s_storeValue;

	private GameObject nearestTree;

	public void SetNearestTree(){
		GameObject[] trees = GameObject.FindGameObjectsWithTag("Tree");
		if (trees.Length > 0){
			nearestTree = trees[0];
			for (int i = 1; i < trees.Length; i++){
				if (Vector3.Distance(s_targetGameobject.Value.transform.position, trees[i].transform.position) < Vector3.Distance(s_targetGameobject.Value.transform.position, nearestTree.transform.position)){
					nearestTree = trees[i];
				}
			}
		}
	}

	public override void OnStart()
	{
		SetNearestTree();
	}

	public override TaskStatus OnUpdate()
	{
		if (nearestTree == null){
			Debug.LogWarning("NearestTree is null");
            return TaskStatus.Failure;
		}

		s_storeValue.Value = nearestTree;

		return TaskStatus.Success;
	}
}