using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public Transform mainTarget;
    private Transform target;
    public Vector3 offset;
    public float followSpeed;
    public bool followX;
    public bool followY;
    public bool followZ;
    public bool lookAt;
    public bool rotateWithTarget;
    public Vector3 rotationOffset;
    
    public KeyCode toggleListMode;
    public KeyCode nextTargetKey;
    public KeyCode prevTargetKey;

    private bool listMode = false;
    private int currentListTarget;

    public Transform[] targetList;

    private Vector3 targetPos;

    void Awake() {
        target = mainTarget;
    }

    public void FollowAll(bool _bool)
    {
        followX = _bool;
        followY = _bool;
        followZ = _bool;
    }

    public void ToggleListMode() {
        if (!listMode) {
            currentListTarget = 0;
            target = targetList[currentListTarget];
            listMode = true;
        } else {
            target = mainTarget;
            listMode = false;
        }
    }

    void Update()
    {
        if (Input.GetKeyDown(toggleListMode)) {
            ToggleListMode();
        }

        if (Input.GetKeyDown(nextTargetKey)) {
            currentListTarget++;
            if (currentListTarget >= targetList.Length){
                currentListTarget = 0;
            }
            target = targetList[currentListTarget];
        }

        if (Input.GetKeyDown(prevTargetKey)) {
            currentListTarget--;
            if (currentListTarget < 0) {
                currentListTarget = targetList.Length -1;
            }
            target = targetList[currentListTarget];
        }

        if (target)
        {
            targetPos = new Vector3(followX ? target.position.x + offset.x : transform.position.x, followY ? target.position.y + offset.y : transform.position.y, followZ ? target.position.z + offset.z : transform.position.z);
            transform.position = Vector3.Lerp(transform.position, targetPos, listMode ? followSpeed * 5 : followSpeed);

            if (rotateWithTarget)
                transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(target.rotation.eulerAngles.x + (listMode ? 0 : rotationOffset.x), target.rotation.eulerAngles.y + (listMode ? 0 : rotationOffset.y), target.rotation.eulerAngles.z + (listMode ? 0 : rotationOffset.z)), listMode ? followSpeed * 5 : followSpeed);

            if (lookAt)
                transform.LookAt(target.position);
        }
    }
}