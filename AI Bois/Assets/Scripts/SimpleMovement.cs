using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleMovement : MonoBehaviour
{
    public float speed;
    public float rotSpeed;
    public bool canMove = true;
    public bool canRotate = true;

    void Update()
    {
        if (canMove)
        {
            float Xspeed = speed * Input.GetAxis("Horizontal") * Time.deltaTime;
            float Zspeed = speed * Input.GetAxis("Vertical") * Time.deltaTime;



            if (Xspeed != 0 || Zspeed != 0)
            {
                transform.Translate(Vector3.forward * Zspeed, Space.Self);
                transform.Translate(Vector3.right * Xspeed, Space.Self);
            }

            if (Input.GetKey(KeyCode.Space))
            {
                transform.Translate(Vector3.up * speed * Time.deltaTime, Space.World);
            }
            if (Input.GetKey(KeyCode.LeftShift))
            {
                transform.Translate(Vector3.down * speed * Time.deltaTime, Space.World);
            }
        }

        if (canRotate)
        {
            float Xrot = rotSpeed * Input.GetAxis("Mouse X") * Time.deltaTime;

            if (Xrot != 0 && Input.GetMouseButton(1))
            {
                transform.Rotate(Vector3.up * Xrot, Space.World);
            }
        }

    }
}