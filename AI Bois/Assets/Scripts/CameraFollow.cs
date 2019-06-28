using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public Transform target;
    public float speed;
    public float rotSpeed;
    public Vector3 offset;

    public bool rotateWithTarget = true;

    void Update()
    {
        if (target){
            if (Vector3.Distance(transform.position, target.position) > 0.1f)
                transform.position = Vector3.Lerp(transform.position, target.position + offset, speed * Time.deltaTime);
            if (rotateWithTarget)
                transform.rotation = Quaternion.Lerp(transform.rotation, target.rotation, rotSpeed * Time.deltaTime);
        }
    }
}
