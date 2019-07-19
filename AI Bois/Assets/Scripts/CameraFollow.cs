using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public GameObject target;
    public Vector3 offset;
    public float followSpeed;
    public bool followX;
    public bool followY;
    public bool followZ;
    public bool lookAt;
    public bool rotateWithTarget;
    public Vector3 rotationOffset;

    private Vector3 targetPos;

    public void FollowAll(bool _bool)
    {
        followX = _bool;
        followY = _bool;
        followZ = _bool;
    }

    void Update()
    {
        if (target)
        {
            targetPos = new Vector3(followX ? target.transform.position.x + offset.x : transform.position.x, followY ? target.transform.position.y + offset.y : transform.position.y, followZ ? target.transform.position.z + offset.z : transform.position.z);
            transform.position = Vector3.Lerp(transform.position, targetPos, followSpeed);

            if (rotateWithTarget)
                transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(target.transform.rotation.eulerAngles.x + rotationOffset.x, target.transform.rotation.eulerAngles.y + rotationOffset.y, target.transform.rotation.eulerAngles.z + rotationOffset.z), followSpeed);

            if (lookAt)
                transform.LookAt(target.transform.position);
        }
    }
}