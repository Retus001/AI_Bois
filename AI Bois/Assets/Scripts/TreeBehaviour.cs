using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TreeBehaviour : MonoBehaviour
{
    private int maxApples;
    private int currentApples;

    void Start()
    {
        maxApples = (int)Random.Range(5, 20);
        currentApples = maxApples;
    }

    public void HarvestApple(){
        currentApples--;
        if (currentApples <= 0){
            Destroy(gameObject);
        }
    }
}
