using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using AllStar;
using TMPro;

public class AStar_Node : MonoBehaviour
{
    public bool viewConnections = false;

    public GameObject floor;
    public TextMeshPro nodeNameLabel;

    public string nodeName;
    public float heuristicValue;
    public bool shortest = false;
    public bool randomHeuristic = false;
    
    public List<GameObject> connectedNodes = new List<GameObject>();
    public List<AStar_Node> connections = new List<AStar_Node>();
    public List<float> weights = new List<float>();

    static MaterialPropertyBlock propBlock;
    static int emissionPowerId = Shader.PropertyToID("_EmissionPower");
    static int emisisonColorId = Shader.PropertyToID("_EmissionColor");
    static int mainColorId = Shader.PropertyToID("_MainColor");

    public void SetEmission() {
        if (propBlock == null) {
            propBlock = new MaterialPropertyBlock();
        }

        propBlock.SetFloat(emissionPowerId, heuristicValue);
        floor.GetComponent<MeshRenderer>().SetPropertyBlock(propBlock);
    }

    public void SetEmissionColor(Color _color) {
        if (propBlock == null) {
            propBlock = new MaterialPropertyBlock();
        }

        propBlock.SetColor(mainColorId, _color);
        propBlock.SetColor(emisisonColorId, _color);
        propBlock.SetFloat(emissionPowerId, heuristicValue);
        floor.GetComponent<MeshRenderer>().SetPropertyBlock(propBlock);
    }

    public void SetNodeData(string _name, float _hValue, List<AStar_Node> _connections, List<float> _weights){
        nodeName = _name;
        
        if (randomHeuristic) {
            heuristicValue = Random.Range(0f, 10f);
        } else {
            heuristicValue = _hValue;
        }
        connections = _connections;
        weights = _weights;
        
        nodeNameLabel.text = nodeName + " : " + heuristicValue.ToString("F2");
        SetEmissionColor(Color.red);
    }
 
    void Start() {
        for (int i = 0; i < connectedNodes.Count; i++) {
            connections.Add(connectedNodes[i].GetComponent<AStar_Node>());
        }

        SetNodeData(nodeName, heuristicValue, connections, weights);
    }

    void Update() {
        if (viewConnections) {
            for (int i = 0; i < connections.Count; i++) {
                Debug.DrawLine(transform.position + new Vector3(0f, 0.21f, 0f), connectedNodes[i].transform.position + new Vector3(0f, 0.42f, 0f), Color.yellow);
            }
        }
    
        if (Input.GetKeyDown(KeyCode.D)) {
            viewConnections = !viewConnections;
        }
    }
}
