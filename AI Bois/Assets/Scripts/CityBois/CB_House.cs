using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CB_House : MonoBehaviour
{
    public int maxResidents;
    public List<GameObject> residents = new List<GameObject>();
    public Transform entrance;
    public Transform[] inside;

    public void StoreResident(GameObject _resident){
        if (residents.Count < maxResidents){
            residents.Add(_resident);
            _resident.transform.position = inside[residents.Count].position;
        } else {
            Debug.Log("Not Enough Space at: " + gameObject.name + " to house: " + _resident);
        }
        
    }

    public void DropResident(GameObject _resident){
        residents.Remove(_resident);
        _resident.transform.position = entrance.position;
    }
}
