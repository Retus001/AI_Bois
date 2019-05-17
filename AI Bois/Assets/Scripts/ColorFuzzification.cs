using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

[RequireComponent(typeof(FuzzyMemberships))]

public class ColorFuzzification : MonoBehaviour
{
    public TextMeshProUGUI colorLabel;
    public Image colorShowcase;

    public float R;
    public float G;
    public float B;

    private FuzzyMemberships mmb;

    private float[] red = new float[5];
    private float[] green = new float[5];
    private float[] blue = new float[5];

    private float allRed, allGreen, allBlue;

    public struct CUSTOM_COLOR
    {
        public string name;
        public float weight;
    };

    public CUSTOM_COLOR[] colors = new CUSTOM_COLOR[21];

    private void Start()
    {
        mmb = GetComponent<FuzzyMemberships>();

        // Initialize COLOR array

        colors[0].name = "Black";
        colors[0].weight = 0;
        colors[1].name = "Gray";
        colors[1].weight = 0;
        colors[2].name = "White";
        colors[2].weight = 0;
        colors[3].name = "Red";
        colors[3].weight = 0;
        colors[4].name = "Green";
        colors[4].weight = 0;
        colors[5].name = "Blue";
        colors[5].weight = 0;
        colors[6].name = "Dark Red";
        colors[6].weight = 0;
        colors[7].name = "Dark Green";
        colors[7].weight = 0;
        colors[8].name = "Dark Blue";
        colors[8].weight = 0;
        colors[9].name = "Light Red";
        colors[9].weight = 0;
        colors[10].name = "Light Green";
        colors[10].weight = 0;
        colors[11].name = "Light Blue";
        colors[11].weight = 0;
        colors[12].name = "Magenta";
        colors[12].weight = 0;
        colors[13].name = "Dark Magenta";
        colors[13].weight = 0;
        colors[14].name = "Light Magenta";
        colors[14].weight = 0;
        colors[15].name = "Yellow";
        colors[15].weight = 0;
        colors[16].name = "Dark Yellow";
        colors[16].weight = 0;
        colors[17].name = "Light Yellow";
        colors[17].weight = 0;
        colors[18].name = "Cyan";
        colors[18].weight = 0;
        colors[19].name = "Dark Cyan";
        colors[19].weight = 0;
        colors[20].name = "Light Cyan";
        colors[20].weight = 0;
    }

    public void SetRed(float _r)
    {
        R = _r;
        FuzzRGB();
        FuzzColor();
        GetBestMatch();
    }

    public void SetGreen(float _g)
    {
        G = _g;
        FuzzRGB();
        FuzzColor();
        GetBestMatch();
    }

    public void SetBlue(float _b)
    {
        B = _b;
        FuzzRGB();
        FuzzColor();
        GetBestMatch();
    }

    public void FuzzRGB()
    {
        // RedFuzz
        red[0] = mmb.functionBool_Inv(R, 25);
        red[1] = mmb.functionTriangle(R, 0, 25, 50);
        red[2] = mmb.functionTrapezoid(R, 40, 50, 150, 160);
        red[3] = mmb.functionDegree(R, 150, 160);
        red[4] = mmb.functionBool(R, 220);
        allRed = mmb.functionBool(R, 0);

        // GreenFuzz
        green[0] = mmb.functionBool_Inv(G, 25);
        green[1] = mmb.functionTriangle(G, 0, 25, 50);
        green[2] = mmb.functionTrapezoid(G, 40, 50, 150, 160);
        green[3] = mmb.functionDegree(G, 150, 200);
        green[4] = mmb.functionBool(G, 220);
        allGreen = mmb.functionBool(G, 0);

        // BlueFuzz
        blue[0] = mmb.functionBool_Inv(B, 25);
        blue[1] = mmb.functionTriangle(B, 0, 25, 50);
        blue[2] = mmb.functionTrapezoid(B, 40, 50, 150, 160);
        blue[3] = mmb.functionDegree(B, 150, 200);
        blue[4] = mmb.functionBool(B, 220);
        allBlue = mmb.functionBool(B, 0);
    }

    public void FuzzColor()
    {
        // Black
        colors[0].weight = mmb.F_AND(mmb.F_AND(red[0], mmb.F_AND(mmb.F_AND(mmb.F_AND(mmb.F_NOT(red[1]), mmb.F_NOT(red[2])), mmb.F_NOT(red[3])), mmb.F_NOT(red[4]))),
            mmb.F_AND(mmb.F_AND(green[0], mmb.F_AND(mmb.F_AND(mmb.F_AND(mmb.F_NOT(green[1]), mmb.F_NOT(green[2])), mmb.F_NOT(green[3])), mmb.F_NOT(green[4]))),
            mmb.F_AND(blue[0], mmb.F_AND(mmb.F_AND(mmb.F_AND(mmb.F_NOT(blue[1]), mmb.F_NOT(blue[2])), mmb.F_NOT(blue[3])), mmb.F_NOT(blue[4])))));

        // Gray
        colors[1].weight = mmb.F_AND(mmb.F_OR(mmb.F_AND(red[1], mmb.F_AND(green[1], blue[1])), mmb.F_OR(mmb.F_AND(red[2], mmb.F_AND(green[2], blue[2])), mmb.F_AND(red[3], mmb.F_AND(green[3], blue[3])))), mmb.F_NOT(mmb.F_AND(red[4], mmb.F_AND(green[4], blue[4]))));

        // White
        colors[2].weight = mmb.F_AND(red[4], mmb.F_AND(green[4], blue[4]));

        // Main
        colors[3].weight = mmb.F_AND(red[2], mmb.F_AND(mmb.F_NOT(allGreen), mmb.F_NOT(allBlue)));
        colors[4].weight = mmb.F_AND(green[2], mmb.F_AND(mmb.F_NOT(allRed), mmb.F_NOT(allBlue)));
        colors[5].weight = mmb.F_AND(blue[2], mmb.F_AND(mmb.F_NOT(allGreen), mmb.F_NOT(allRed)));

        // Dark Main
        colors[6].weight = mmb.F_AND(mmb.F_AND(red[1], mmb.F_NOT(red[3])), mmb.F_AND(mmb.F_NOT(allGreen), mmb.F_NOT(allBlue)));
        colors[7].weight = mmb.F_AND(mmb.F_AND(green[1], mmb.F_NOT(green[3])), mmb.F_AND(mmb.F_NOT(allRed), mmb.F_NOT(allBlue)));
        colors[8].weight = mmb.F_AND(mmb.F_AND(blue[1], mmb.F_NOT(blue[3])), mmb.F_AND(mmb.F_NOT(allGreen), mmb.F_NOT(allRed)));

        // Light Main
        colors[9].weight = mmb.F_AND(red[3], mmb.F_AND(mmb.F_NOT(allGreen), mmb.F_NOT(allBlue)));
        colors[10].weight = mmb.F_AND(green[3], mmb.F_AND(mmb.F_NOT(allRed), mmb.F_NOT(allBlue)));
        colors[11].weight = mmb.F_AND(blue[3], mmb.F_AND(mmb.F_NOT(allGreen), mmb.F_NOT(allRed)));

        // Magenta
        colors[12].weight = mmb.F_AND(mmb.F_AND(red[2], blue[2]), mmb.F_NOT(allGreen));
        colors[13].weight = mmb.F_AND(mmb.F_AND(mmb.F_AND(red[1], mmb.F_NOT(red[3])), mmb.F_AND(blue[1], mmb.F_NOT(blue[3]))), mmb.F_NOT(allGreen));
        colors[14].weight = mmb.F_AND(mmb.F_AND(red[3], blue[3]), mmb.F_NOT(allGreen));

        // Yellow
        colors[15].weight = mmb.F_AND(mmb.F_AND(red[2], green[2]), mmb.F_NOT(allBlue));
        colors[16].weight = mmb.F_AND(mmb.F_AND(mmb.F_AND(red[1], mmb.F_NOT(red[3])), mmb.F_AND(green[1], mmb.F_NOT(green[3]))), mmb.F_NOT(allBlue));
        colors[17].weight = mmb.F_AND(mmb.F_AND(red[3], green[3]), mmb.F_NOT(allBlue));

        // Cyan
        colors[18].weight = mmb.F_AND(mmb.F_AND(blue[2], green[2]), mmb.F_NOT(allRed));
        colors[19].weight = mmb.F_AND(mmb.F_AND(mmb.F_AND(blue[1], mmb.F_NOT(blue[3])), mmb.F_AND(green[1], mmb.F_NOT(green[3]))), mmb.F_NOT(allRed));
        colors[20].weight = mmb.F_AND(mmb.F_AND(blue[3], green[3]), mmb.F_NOT(allRed));
    }

    public void GetBestMatch()
    {
        int bestMatchIndex = 0;
        bool gotMatch = false;
        for (int i = 0; i < colors.Length; i++)
        {
            if (colors[i].weight > colors[bestMatchIndex].weight)
            {
                bestMatchIndex = i;
                gotMatch = true;
            }
        }

        if (gotMatch)
            UpdateUIData(colors[bestMatchIndex].name);
        else if (colors[bestMatchIndex].weight > 0)
            UpdateUIData(colors[bestMatchIndex].name);
        else
            UpdateUIData("UNKNOWN");
    }

    public void UpdateUIData(string _label)
    {
        colorLabel.text = _label;
        colorShowcase.color = new Color(R/255, G/255, B/255);
    }

}
