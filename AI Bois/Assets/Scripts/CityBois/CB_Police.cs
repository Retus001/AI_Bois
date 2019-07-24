using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CB_Police : MonoBehaviour
{
    public int maxPolicemen;
    public int maxInmates;

    public List<GameObject> policemen = new List<GameObject>();
    public List<GameObject> inmates = new List<GameObject>();

    public Transform entrance;

    public void StorePoliceman(GameObject _policeman) {

    }

    public void StoreInamte(GameObject _inmate) {

    }

    public void DropCitizen(GameObject _citizen) {

    }
}
