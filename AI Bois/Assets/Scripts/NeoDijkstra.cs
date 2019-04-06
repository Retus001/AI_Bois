using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NeoDijkstra : MonoBehaviour {

    private Queue<NodeComponent> nodes = new Queue<NodeComponent>();
    public NodeComponent startingNode;
    public NodeComponent endingNode;
    private NodeComponent currentNode;

    public string result;

    public void Dijkstra() {
        currentNode.visited = true;
        for (int i = 0; i < currentNode.nodeConn.Length; i++) {
            if (!currentNode.nodeConn[i].GetComponent<NodeComponent>().visited)
                nodes.Enqueue(currentNode.nodeConn[i].GetComponent<NodeComponent>());
        }

        for (int i = 0; i < currentNode.nodeConn.Length; i++) {
            float newPathCost = currentNode.weight + currentNode.pathCost[i];
            if (newPathCost < currentNode.nodeConn[i].GetComponent<NodeComponent>().weight) {
                currentNode.nodeConn[i].GetComponent<NodeComponent>().parent = currentNode;
                currentNode.nodeConn[i].GetComponent<NodeComponent>().weight = newPathCost;
            }
        }

        if (nodes.Count > 0)
        {
            currentNode = nodes.Dequeue();
            Dijkstra();
        }
    }

	void Start () {
        startingNode.weight = 0;
        currentNode = startingNode;

        Dijkstra();

        result = endingNode.name;

        NodeComponent currentFinal = endingNode;
        while (currentFinal != startingNode)
        {
            result = currentFinal.parent.name + " -> " + result;
            currentFinal = currentFinal.parent;
        }

        Debug.Log(result);
	}
	
	void Update () {
		
	}
}
