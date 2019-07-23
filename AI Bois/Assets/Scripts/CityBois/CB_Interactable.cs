using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CB_Interactable : MonoBehaviour
{
    public void Interact(GameObject _user) {
        switch(gameObject.tag) {
            default:
                Debug.Log("Interacted with " + gameObject.name);
            break;

            case "CB_House":
                GetComponent<CB_House>().Interact(_user);
            break;

            case "CB_Car":
                // GetComponent<CB_Car>().Interact(_user);
            break;
        }
    }
}
