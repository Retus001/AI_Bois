using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DFS : MonoBehaviour {

    private Stack<NodeComponent> Snodes = new Stack<NodeComponent>();
    private Queue<NodeComponent> Qnodes = new Queue<NodeComponent>();
    public NodeComponent startingNode;
    public NodeComponent endingNode;

    private NodeComponent currentNode;
    private bool gotResult = false;
    private string result = "";

    [Header("On: BFS, Off: DFS")]
    public bool BFS;

    public void DepthFirstSearch() {
        currentNode.visited = true;
        if (currentNode == endingNode) {
            gotResult = true;
            return;
        } else {
            if (currentNode.nodeConn.Length > 0)
            {
                for (int i = 0; i < currentNode.nodeConn.Length; i++)
                {
                    if (!currentNode.nodeConn[i].GetComponent<NodeComponent>().visited)
                    {
                        currentNode.nodeConn[i].GetComponent<NodeComponent>().parent = currentNode;
                        Snodes.Push(currentNode.nodeConn[i].GetComponent<NodeComponent>());
                    }
                }
                currentNode = Snodes.Pop();
            }
            DepthFirstSearch();
        }
    }

    public void BreathFisrtSearch() {
        currentNode.visited = true;
        if (currentNode == endingNode)
        {
            gotResult = true;
            return;
        }
        else
        {
            if (currentNode.nodeConn.Length > 0)
            {
                for (int i = 0; i < currentNode.nodeConn.Length; i++)
                {
                    if (!currentNode.nodeConn[i].GetComponent<NodeComponent>().visited)
                    {
                        currentNode.nodeConn[i].GetComponent<NodeComponent>().parent = currentNode;
                        Qnodes.Enqueue(currentNode.nodeConn[i].GetComponent<NodeComponent>());
                    }
                }
                currentNode = Qnodes.Dequeue();
            }
            BreathFisrtSearch();
        }
    }

	void Start () {
        startingNode.parent = startingNode;
        currentNode = startingNode;

        if (BFS) {
            BreathFisrtSearch();
        } else {
            DepthFirstSearch();
        }

        if (gotResult)
        {
            NodeComponent currentFinal = endingNode;
            result = currentFinal.name;
            while (currentFinal != startingNode)
            {
                currentFinal = currentFinal.parent;
                result = currentFinal.name + " -> " + result;
            }
            Debug.Log(result);
        } else
        {
            Debug.Log("Unable to Reach Node");
        }
	}

	void Update () {
		
	}
}
