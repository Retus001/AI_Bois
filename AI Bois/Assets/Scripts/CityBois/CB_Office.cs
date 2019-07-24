using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CB_Office : MonoBehaviour
{
    public int maxEmployees;
    public List<GameObject> employees;
    public Transform entrance;

    public void StoreEmployee(GameObject _employee) {
        _employee.transform.position = gameObject.transform.position;
        if (employees.Count < maxEmployees) {
            employees.Add(_employee);
        } else {
            DropEmployee(_employee);
        }
    }

    public void DropEmployee(GameObject _employee) {
        employees.Remove(_employee);
        _employee.transform.position = entrance.position;
    }
}
