using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class UITimeFromOneLight : MonoBehaviour
{
    public OneLightDayNightCycle sundial;
    public TextMeshProUGUI timeUI;
    
    void Update()
    {
        timeUI.text = Mathf.Floor(sundial.currentTime).ToString("F0") + ":00";
    }
}
