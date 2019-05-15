using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class Bayes : MonoBehaviour
{
    [Header("Test")]
    public bool isPlus15;

    [Header("+15 -15")]
    public Vector2 carA_percents;
    public Vector2 carB_percents;

    [Header("UI")]
    public TextMeshProUGUI carA;
    public TextMeshProUGUI carB;
    public TextMeshProUGUI carAplus;
    public TextMeshProUGUI carAmins;
    public TextMeshProUGUI carBplus;
    public TextMeshProUGUI carBmins;
    public TextMeshProUGUI Aplus;
    public TextMeshProUGUI Amins;
    public TextMeshProUGUI Bplus;
    public TextMeshProUGUI Bmins;

    private float carA_val = 0.5f;
    private float carB_val = 0.5f;
    private float Aplus_val;
    private float Amins_val;
    private float Bplus_val;
    private float Bmins_val;

    public void NewTest()
    {
        RecalculateData();
    }

    private void CalculateFinalPercents()
    {
        Aplus_val = carA_val * carA_percents.x;
        Amins_val = carA_val * carA_percents.y;
        Bplus_val = carB_val * carB_percents.x;
        Bmins_val = carB_val * carB_percents.y;

        Aplus.text = Aplus_val.ToString();
        Amins.text = Amins_val.ToString();
        Bplus.text = Bplus_val.ToString();
        Bmins.text = Bmins_val.ToString();
    }

    private void RecalculateData()
    {
        if (isPlus15)
        {
            carA_val = PAB(Aplus_val, Bplus_val);
            carB_val = 1 - carA_val;
        }
        else
        {
            carA_val = PAB(Amins_val, Bmins_val);
            carB_val = 1 - carA_val;
        }

        carA.text = carA_val.ToString();
        carB.text = carB_val.ToString();

        CalculateFinalPercents();
    }

    private float PAB(float _a, float _b)
    {
        return _a / (_a + _b);
    }

    void Start()
    {
        // Default 50/50
        carA.text = carA_val.ToString();
        carB.text = carB_val.ToString();

        // Custom Percents
        carAplus.text = carA_percents.x.ToString();
        carAmins.text = carA_percents.y.ToString();
        carBplus.text = carB_percents.x.ToString();
        carBmins.text = carB_percents.y.ToString();

        CalculateFinalPercents();
    }
}
