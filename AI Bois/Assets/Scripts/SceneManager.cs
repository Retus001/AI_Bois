using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SceneManager : MonoBehaviour {

    public float resetTime;
    SceneManager sceneman;

	void Start () {
        StartCoroutine(Reset());
	}

    IEnumerator Reset()
    {
        yield return new WaitForSeconds(resetTime);
        Application.LoadLevel(0);
    }
}
