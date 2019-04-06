using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChargingStation : MonoBehaviour {

    public float chargeAmmount;
    public float chargeDelay;
    public bool canCharge = true;

    private void OnTriggerStay(Collider _col)
    {
        if (_col.CompareTag("Roomba") && canCharge)
        {
            StartCoroutine(Charge(chargeDelay, _col.gameObject, chargeAmmount));
        }        
    }

    IEnumerator Charge(float _delay, GameObject _go, float _chargeAmmount)
    {
        _go.GetComponent<RoombaMan>().Charge(_chargeAmmount);
        canCharge = false;
        yield return new WaitForSeconds(_delay);
        canCharge = true;
    }
}
