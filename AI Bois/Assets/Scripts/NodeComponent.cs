using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class NodeComponent : MonoBehaviour {

    public GameObject[] nodeConn;
    public float[] pathCost;
    public GameObject LabelPrefab;
    private GameObject[] labels;
    
    public bool useCost = true;

    public struct Connections
    {
        public GameObject node;
        public float cost;
    }

    public Connections[] conns;

    [HideInInspector]
    public bool visited = false;
    [HideInInspector]
    public float weight = 9999;
    [HideInInspector]
    public NodeComponent parent;

    private GameObject weightLabel;
    private GameObject visitedLabel;

	void Start () {

        conns = new Connections[nodeConn.Length];
        labels = new GameObject[nodeConn.Length];

		for (int i = 0; i < nodeConn.Length; i++)
        {
            conns[i].node = nodeConn[i];

            if (useCost)
            {
                conns[i].cost = pathCost[i];
                Vector3 center = Vector3.Lerp(transform.position, conns[i].node.transform.position, 0.5f);
                GameObject pathLabel = Instantiate(LabelPrefab, center + new Vector3(0, 1f, 0), Quaternion.identity);
                pathLabel.GetComponent<TextMeshPro>().text = conns[i].cost.ToString();
                labels[i] = pathLabel;
            }
        }

        if (useCost)
        {
            weightLabel = Instantiate(LabelPrefab, transform.position + new Vector3(0, 2f, 0), Quaternion.identity);
            visitedLabel = Instantiate(LabelPrefab, transform.position + new Vector3(0, 1f, 0), Quaternion.identity);
        }
    }
	
	void Update () {
		for (int i = 0; i < conns.Length; i++) {
            Debug.DrawLine(transform.position, conns[i].node.transform.position, GetComponent<MeshRenderer>().material.color);
            if (useCost)
                labels[i].transform.position = Vector3.Lerp(transform.position, conns[i].node.transform.position, 0.5f);
        }

        if (useCost)
        {
            if (visited)
            {
                visitedLabel.GetComponent<TextMeshPro>().text = "visited";
            }
            else
            {
                visitedLabel.GetComponent<TextMeshPro>().text = "pending";
            }

            weightLabel.GetComponent<TextMeshPro>().text = weight.ToString();

            visitedLabel.transform.position = transform.position + new Vector3(0, 1f, 0);
            weightLabel.transform.position = transform.position + new Vector3(0, 2f, 0);
        }
	}
}
