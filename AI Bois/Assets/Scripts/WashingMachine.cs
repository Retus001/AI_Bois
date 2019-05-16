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

    private float Soap;
    private float Water;
    private float Time;

    private float w_light, w_average, w_heavy, w_massive;
    private float g_clean, g_dirty, g_poisonous;

    private FuzzyMemberships memberships;

    private void Start()
    {
        memberships = GetComponent<FuzzyMemberships>();
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
        w_light = memberships.functionDegree_Inv(weight, 10, 15);
        w_average = memberships.functionTrapezoid(weight, 10, 15, 30, 35);
        w_heavy = memberships.functionTrapezoid(weight, 25, 35, 50, 55);
        w_massive = memberships.functionDegree(weight, 50, 55);
    }

    public void FuzzGrime()
    {
        g_clean = memberships.functionDegree_Inv(grime, 10, 15);
        g_dirty = memberships.functionTriangle(grime, 10, 30, 50);
        g_poisonous = memberships.functionDegree(grime, 45, 55);
    }

    public void UpdateUIData(float _water, float _soap, float _time)
    {
        waterLevels.text = _water.ToString("f2") + "Lts.";
        soapLevels.text = _soap.ToString("f2") + "Gr.";
        timeLevels.text = _time.ToString("f2") + "min.";
    }

    private float Remap(float _fromA, float _fromB , float _toA, float _toB, float _val)
    {
        return (_val - _fromA) / (_toA - _fromA) * (_toB - _fromB) + _fromB;
    }

    public void CalculateWashingData()
    {
        // Water Levels
        float lesserWater = w_light;
        float commonWater = memberships.F_OR(w_light, w_average);
        float greaterWater = memberships.F_OR(w_average, w_heavy);
        float epicWater = memberships.F_OR(w_heavy, w_massive);
        float godlyWater = w_massive;

        float finalWater = Mathf.Max(lesserWater + commonWater + greaterWater + epicWater + godlyWater);
        //finalWater = Remap(0, 1, 0, 200, finalWater);

        // Soap Levels
        float sprinkle = g_clean;
        float soapCup = memberships.F_AND(memberships.F_OR(g_clean, g_dirty), memberships.F_OR(w_light, w_average));
        float soapBag = memberships.F_AND(g_dirty, w_heavy);
        float soapBarrel = memberships.F_AND(g_dirty, w_massive);
        float soapCargo = memberships.F_AND(g_poisonous, w_massive);

        float finalSoap = Mathf.Max(sprinkle, soapCup, soapBag, soapBarrel, soapCargo);
        //finalSoap = Remap(0, 1, 0, 1000, finalSoap);

        // Time
        float express = memberships.F_AND(w_light, g_clean);
        float normal = memberships.F_AND(memberships.F_OR(w_light, w_average), g_dirty);
        float extended = memberships.F_AND(memberships.F_OR(w_average, w_heavy), memberships.F_OR(g_dirty, g_poisonous));
        float infinite = memberships.F_AND(w_massive, g_poisonous);

        float finalTime = Mathf.Max(express, normal, extended, infinite);
        //finalTime = Remap(0, 1, 0, 8, finalTime);

        UpdateUIData(finalWater, finalSoap, finalTime);
    }
}
