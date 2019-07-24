using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CB_Hospital : MonoBehaviour
{
    public int maxPatients;
    public int maxDoctors;

    public List<GameObject> patients = new List<GameObject>();
    public List<GameObject> waitlist = new List<GameObject>();
    public List<GameObject> doctors = new List<GameObject>();

    public Transform entrance;

    public void StoreDoctor(GameObject _doctor) {
        _doctor.transform.position = transform.position;
    }

    public void StorePatient(GameObject _patient) {

    }

    public void DropDoctor(GameObject _doctor) {
        doctors.Remove(_doctor);
        _doctor.transform.position = entrance.position;
    }

    public void DropPatient(GameObject _patient) {
        
    }
}
