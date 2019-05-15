using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

[RequireComponent(typeof(FuzzyMemberships))]

public class WashingMachine : MonoBehaviour
{
    public float weight;
    public float grime;

    public TextMeshProUGUI soapLevels;
    public TextMeshProUGUI waterLevels;
    public TextMeshProUGUI timeLevels;

    public float lowWater;
    public float medWater;
    public float highWater;

    public float soapSprinkle;
    public float soapCup;
    public float soapCupDouble;

    public float express;
    public float normal;
    public float extended;

    public float finalWater;
    public float finalSoap;
    public float finalTime;

    private float Soap;
    private float Water;
    private float Time;

    private float w_light, w_average, w_heavy, w_massive;
    private float g_clean, g_dirty, g_poisonous;

    private FuzzyMemberships mmb;

    private void Start()
    {
        mmb = GetComponent<FuzzyMemberships>();
    }

    public void SetWeight(float _w)
    {
        weight = _w;
        NewWash();
    }

    public void SetGrime(float _g)
    {
        grime = _g;
        NewWash();
    }

    public void NewWash()
    {
        FuzzWeight();
        FuzzGrime();
        CalculateWashingData();
    }

    public void FuzzWeight()
    {
        w_light = mmb.functionDegree_Inv(weight, 10, 15);
        w_average = mmb.functionTrapezoid(weight, 10, 15, 30, 35);
        w_heavy = mmb.functionTrapezoid(weight, 25, 35, 50, 55);
        w_massive = mmb.functionDegree(weight, 50, 55);
    }

    public void FuzzGrime()
    {
        g_clean = mmb.functionDegree_Inv(grime, 10, 15);
        g_dirty = mmb.functionTriangle(grime, 10, 30, 50);
        g_poisonous = mmb.functionDegree(grime, 45, 55);
    }

    public void UpdateUIData(float _water, float _soap, float _time)
    {
        waterLevels.text = _water.ToString("f2") + "Lts.";
        soapLevels.text = _soap.ToString("f2") + "Gr.";
        timeLevels.text = _time.ToString("f2") + "min.";
    }

    private float Remap(float _fromA, float _fromB , float _toA, float _toB, float _val)
    {
        return _toA + (_val - _fromA) * (_toB - _toA) / (_fromB - _fromA);
    }

    public void CalculateWashingData()
    {
        // Water Levels
        lowWater = mmb.F_AND(w_light, mmb.F_NOT(mmb.F_OR(w_heavy, w_massive)));
        medWater = mmb.F_AND(mmb.F_NOT(w_heavy), w_average);
        highWater = mmb.F_OR(w_heavy, w_massive);

        finalWater = Mathf.Lerp(1, 200, ((1 - lowWater) + medWater + highWater)/2);

        // Soap Levels
        soapSprinkle = mmb.F_AND(g_clean, mmb.F_NOT(mmb.F_AND(g_dirty, g_poisonous)));
        soapCup = mmb.F_AND(mmb.F_OR(g_clean, g_dirty), w_average);
        soapCupDouble = mmb.F_AND(g_dirty, mmb.F_OR(w_heavy, w_massive));

        finalSoap = Mathf.Lerp(10, 300, ((1 - soapSprinkle) + soapCup + soapCupDouble)/2);

        // Time
        express = mmb.F_AND(w_light, g_clean);
        normal = mmb.F_AND(mmb.F_OR(w_light, w_average), g_dirty);
        extended = mmb.F_AND(mmb.F_OR(w_heavy, w_massive), mmb.F_OR(g_dirty, g_poisonous));

        finalTime = Mathf.Lerp(5, 120, ((1 - express) + normal + extended)/2);

        UpdateUIData(finalWater, finalSoap, finalTime);
    }
}
