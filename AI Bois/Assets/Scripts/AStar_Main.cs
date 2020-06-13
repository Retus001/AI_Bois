using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace AllStar {
    public class AStar_Main : MonoBehaviour
    {
        public AStar_Node[] nodes;

        public AStar_Node startingNode;
        public AStar_Node endingNode;

        public List<AStar_Node> path = new List<AStar_Node>();
        private float pathLength = 0;

        public void SearchPath(AStar_Node _startingNode, AStar_Node _endingNode) {
            path.Add(_startingNode);
            if (_startingNode == _endingNode) {
                FinishPath();
            } else {
                int nextNodeId = -1;
                float nextNodeWeight = 0;
                for (int i = 0; i < _startingNode.connections.Count; i++) {
                    bool visited = false;
                    for (int j = 0; j < path.Count; j++) {
                        if (_startingNode.connections[i] == path[j]) {
                            visited = true;
                        }
                    }
                    if (!visited) {
                        if (nextNodeId == -1) {
                            nextNodeId = i;
                            nextNodeWeight = pathLength + _startingNode.weights[i] + _startingNode.connections[i].heuristicValue;
                        } else {
                            float newNodeWeight = pathLength + _startingNode.weights[i] + _startingNode.connections[i].heuristicValue;
                            if (nextNodeWeight > newNodeWeight) {
                                nextNodeId = i;
                                nextNodeWeight = newNodeWeight;
                            }
                        }
                    } else {
                        
                    }
                }

                Debug.Log("Next Node ID: " + nextNodeId);
                pathLength += _startingNode.weights[nextNodeId];
                SearchPath(_startingNode.connections[nextNodeId], _endingNode);
            }
        }

        public void FinishPath() {
            for (int i = 0; i < path.Count; i++) {
                path[i].shortest = true;
                path[i].SetEmissionColor(Color.green);
            }
        }

        public void ClearPath() {
            for (int i = 0; i < nodes.Length; i++) {
                nodes[i].SetEmissionColor(Color.red);
            }

            path.Clear();
            pathLength = 0;
        }

        public void Reset() {
            for (int i = 0; i < nodes.Length; i++) {
                nodes[i].SetNodeData(nodes[i].nodeName, 0, nodes[i].connections, nodes[i].weights);
            }
        }

        void Update()
        {
            if (Input.GetKeyDown(KeyCode.P)) {
                SearchPath(startingNode, endingNode);
            }
            if (Input.GetKeyDown(KeyCode.R)) {
                Reset();
            }

            if (Input.GetKeyDown(KeyCode.C)) {
                ClearPath();
            }
        }
    }
}
