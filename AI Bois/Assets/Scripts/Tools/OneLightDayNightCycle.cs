using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OneLightDayNightCycle : MonoBehaviour
{
    public Light mainLight;
    public float cycleSpeed;
    public float cycleTimeMultiplier;
    public float currentTime;
    public Color dayColor;
    public Color nightColor;
    private Color currentColor;
    private bool cycleA = true;
    private bool newCycle = true;

    public void CalculateTimeColor(Color _targetColor) {

        float lerpedR = Mathf.Lerp(currentColor.r, _targetColor.r, cycleSpeed * Time.deltaTime * 3);
        float lerpedG = Mathf.Lerp(currentColor.g, _targetColor.g, cycleSpeed * Time.deltaTime * 3);
        float lerpedB = Mathf.Lerp(currentColor.b, _targetColor.b, cycleSpeed * Time.deltaTime * 3);

        currentColor = new Color(lerpedR, lerpedG, lerpedB);
        mainLight.color = currentColor;
    }

    void Start() {
        currentColor = dayColor;
    }

    public void CalculateTime() {
        if (currentTime <= 24f) {
            currentTime += cycleSpeed * Time.deltaTime * cycleTimeMultiplier; 
        } else {
            currentTime = 0;
            newCycle = true;
            cycleA = !cycleA;
        }
        
        if (currentTime >= 12 && newCycle) {
            newCycle = false;
            cycleA = !cycleA;
        }
    }

    void Update() {
        CalculateTime();
        if (cycleA) {
            CalculateTimeColor(nightColor);
        } else {
            CalculateTimeColor(dayColor);
        }
    }
}
