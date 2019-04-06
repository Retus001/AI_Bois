using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RoombaMan : MonoBehaviour {

    public enum status
    {
        ADVANCING,
        ROTATING,
        NEEDCHARGE,
        NEEDDUMP,
        CHARGING,
        DUMPING,
        DEAD
    }

    public Rigidbody rig;
    public BoxCollider triggerer;
    public TextMesh counterTxt;
    public TextMesh chargeTxt;
    public float speed;
    public float batteryDrop;

    public Transform chargePad;
    public Transform dumpSite;

    public status currentStatus;

    public float maxBattery;
    private float currentBattery;
    public float minChargePercent;
    public float maxCapacity;
    private float currentCapacity;

    private int chargePercent;
    private float chargeColor;

    private float rotationTime;

    public float rotationBuffer;
    private bool canRotate = true;

    private float stuckAway = 2;

    public void OnTriggerEnter(Collider _col)
    {
        if ((_col.CompareTag("Wall") || _col.CompareTag("Roomba")) && currentStatus == status.ADVANCING && canRotate)
        {
            float randomTimer = Random.Range(8, 12);
            Spin(randomTimer);
            StartCoroutine(RotBuffer(rotationBuffer));
        }
        else if (!_col.CompareTag("Floor") && !_col.CompareTag("Wall") && !_col.CompareTag("Utility") && !_col.CompareTag("Roomba"))
        {
            Destroy(_col.gameObject);
            currentCapacity++;

            counterTxt.text = currentCapacity.ToString();

            if (currentCapacity == maxCapacity)
            {
                triggerer.enabled = false;
                currentStatus = status.NEEDDUMP;
            }
        }
    }

    void Start () {
        currentBattery = maxBattery;
        currentCapacity = 0;
	}

    void Update() {
        switch (currentStatus)
        {
            case status.ADVANCING:
                currentBattery -= batteryDrop;
                rig.velocity = transform.forward * speed;

                if (stuckAway <= 0.1 && stuckAway > 0)
                {
                    triggerer.enabled = false;
                    stuckAway -= 0.02f;
                }
                else if (stuckAway <= 0)
                {
                    triggerer.enabled = true;
                    stuckAway = 2;
                }
                else
                {
                    stuckAway -= 0.02f;
                }

                break;

            case status.ROTATING:
                currentBattery -= batteryDrop;
                if (rotationTime > 0)
                {
                    transform.Rotate(Vector3.up * speed / 2);
                    rotationTime -= 0.1f;
                }
                else {
                    rotationTime = 0;
                    currentStatus = status.ADVANCING;
                }
                break;

            case status.NEEDCHARGE:
                transform.LookAt(chargePad.position);
                triggerer.enabled = false;
                if (Vector3.Distance(transform.position, chargePad.position) > 0.5f)
                {
                    rig.velocity = transform.forward * speed;
                } else
                {
                    currentStatus = status.CHARGING;
                }
                currentBattery -= batteryDrop;
                break;

            case status.NEEDDUMP:
                transform.LookAt(dumpSite.position);
                if (Vector3.Distance(transform.position, dumpSite.position) > 0.5f)
                {
                    rig.velocity = transform.forward * speed;
                }
                else
                {
                    StartCoroutine(Dump());
                    currentStatus = status.DUMPING;
                }
                currentBattery -= batteryDrop;
                break;

            case status.CHARGING:
                if (currentBattery >= maxBattery)
                {
                    currentBattery = maxBattery;
                    currentStatus = status.ADVANCING;
                    triggerer.enabled = true;
                }
                break;

            case status.DUMPING:
                if (currentCapacity <= 0)
                {
                    currentCapacity = 0;
                    currentStatus = status.ADVANCING;
                    triggerer.enabled = true;
                }
                currentBattery -= batteryDrop;
                break;

            case status.DEAD:

                break;

            default:

                break;
        }

        chargePercent = (int)(currentBattery * 100 / maxBattery);
        chargeColor = chargePercent / 100.0f;
        chargeTxt.text = chargePercent.ToString() + "%";
        chargeTxt.color = new Color(1 - chargeColor, chargeColor, 0);

        if ((currentStatus != status.NEEDCHARGE && currentStatus != status.CHARGING) && chargePercent < minChargePercent)
        {
            currentStatus = status.NEEDCHARGE;
        }

        if (currentBattery <= 0)
        {
            currentStatus = status.DEAD;
        }
	}

    public void Spin(float time)
    {
        rotationTime = time;
        currentStatus = status.ROTATING;
    }

    public void Charge(float _chargeAmmount)
    {
        if (currentStatus == status.CHARGING)
            currentBattery += _chargeAmmount;
    }

    IEnumerator RotBuffer(float _rotationBuffer)
    {
        triggerer.enabled = false;
        canRotate = false;
        yield return new WaitForSeconds(_rotationBuffer);
        canRotate = true;
        triggerer.enabled = true;
    }

    IEnumerator Dump()
    {
        while(currentCapacity > 0)
        {
            currentCapacity--;
            counterTxt.text = currentCapacity.ToString();
            yield return new WaitForSeconds(0.2f);
        }
    }
}
