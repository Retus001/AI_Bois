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
            _resident.GetComponent<Rigidbody>().isKinematic = true;
            _resident.transform.position = inside[residents.Count].position;
            _resident.transform.rotation = inside[residents.Count].rotation;
            residents.Add(_resident);
        } else {
            Debug.Log("Not Enough Space at: " + gameObject.name + " to house: " + _resident);
        }
    }

    public void DropResident(GameObject _resident){
        residents.Remove(_resident);
        _resident.transform.position = entrance.position;
        _resident.transform.rotation = entrance.rotation;
        _resident.GetComponent<Rigidbody>().isKinematic = false;
    }

    public void Interact(GameObject _user) {
        StoreResident(_user);
    }
}
