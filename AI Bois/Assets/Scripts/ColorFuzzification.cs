using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

[RequireComponent(typeof(FuzzyMemberships))]

public class ColorFuzzification : MonoBehaviour
{
    public float R;
    public float G;
    public float B;

    private FuzzyMemberships memberships;

    private float[] red = new float[5];
    private float[] green = new float[5];
    private float[] blue = new float[5];

    private float allRed, allGreen, allBlue;

    private void Start()
    {
        memberships = GetComponent<FuzzyMemberships>();
    }

    public void SetRed(float _r)
    {
        R = _r;
    }

    public void SetGreen(float _g)
    {
        G = _g;
    }

    public void SetBlue(float _b)
    {
        B = _b;
    }

    public void FuzzRGB()
    {
        // RedFuzz
        red[0] = memberships.functionBool_Inv(R, 0);
        red[1] = memberships.functionTriangle(R, 0, 25, 50);
        red[2] = memberships.functionTrapezoid(R, 40, 50, 150, 160);
        red[3] = memberships.functionDegree(R, 150, 200);
        red[4] = memberships.functionBool(R, 255);
        allRed = memberships.functionBool(R, 0);

        // GreenFuzz
        green[0] = memberships.functionBool_Inv(G, 0);
        green[1] = memberships.functionTriangle(G, 0, 25, 50);
        green[2] = memberships.functionTrapezoid(G, 40, 50, 150, 160);
        green[3] = memberships.functionDegree(G, 150, 200);
        green[4] = memberships.functionBool(G, 255);
        allGreen = memberships.functionBool(G, 0);

        // BlueFuzz
        blue[0] = memberships.functionBool_Inv(B, 0);
        blue[1] = memberships.functionTriangle(B, 0, 25, 50);
        blue[2] = memberships.functionTrapezoid(B, 40, 50, 150, 160);
        blue[3] = memberships.functionDegree(B, 150, 200);
        blue[4] = memberships.functionBool(B, 255);
        allBlue = memberships.functionBool(B, 0);
    }

    public void FuzzColor()
    {
        // Black
        float c_black = memberships.F_AND(red[0], memberships.F_AND(green[0], blue[0]));

        // White
        float c_white = memberships.F_AND(red[4], memberships.F_AND(green[4], blue[4]));

        // Main
        float c_red = memberships.F_AND(red[2], memberships.F_AND(memberships.F_NOT(allGreen), memberships.F_NOT(allBlue)));
        float c_green = memberships.F_AND(green[2], memberships.F_AND(memberships.F_NOT(allRed), memberships.F_NOT(allBlue)));
        float c_blue = memberships.F_AND(blue[2], memberships.F_AND(memberships.F_NOT(allGreen), memberships.F_NOT(allRed)));

        // Dark Main
        float c_darkRed = memberships.F_AND(red[1], memberships.F_AND(memberships.F_NOT(allGreen), memberships.F_NOT(allBlue)));
        float c_darkGreen = memberships.F_AND(green[1], memberships.F_AND(memberships.F_NOT(allRed), memberships.F_NOT(allBlue)));
        float c_darkBlue = memberships.F_AND(blue[1], memberships.F_AND(memberships.F_NOT(allGreen), memberships.F_NOT(allRed)));

        // Light Main
        float c_lightRed = memberships.F_AND(red[3], memberships.F_AND(memberships.F_NOT(allGreen), memberships.F_NOT(allBlue)));
        float c_lightGreen = memberships.F_AND(green[3], memberships.F_AND(memberships.F_NOT(allRed), memberships.F_NOT(allBlue)));
        float c_lightBlue = memberships.F_AND(blue[3], memberships.F_AND(memberships.F_NOT(allGreen), memberships.F_NOT(allRed)));

        // Purple
        float c_purple = memberships.F_AND(memberships.F_AND(red[2], blue[2]), memberships.F_NOT(allGreen));
        float c_darkPurple = memberships.F_AND(memberships.F_AND(red[1], blue[1]), memberships.F_NOT(allGreen));
        float c_lightPurple = memberships.F_AND(memberships.F_AND(red[3], blue[3]), memberships.F_NOT(allGreen));

        
    }

}
