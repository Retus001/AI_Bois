using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DistanceMeasure : MonoBehaviour
{
    public float distance;

    public GameObject goA;
    public GameObject goB;

    void Update()
    {
        if (goA && goB)
            distance = Vector3.Distance(goA.transform.position, goB.transform.position);
    }
}
