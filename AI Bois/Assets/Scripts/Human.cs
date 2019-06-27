using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Human : MonoBehaviour
{
    // Genes
    /*
     * Head Shape
     * Skin Color
     * Eye Color
     * Eye Shape
     * Brow Shape
     * Nose Shape
     * Lips Shape
     */ 

    public Image head;
    public Image eyeL;
    public Image eyeR;
    public Image browL;
    public Image browR;
    public Image mouth;
    public Image nose;

    public void SetAllGenes(Sprite _head, Sprite _eyes, Sprite _brows, Sprite _mouth, Sprite _nose, Color _skin, Color _iris){
        head.sprite = _head;
        head.color = _skin;
        eyeL.sprite = _eyes;
        eyeR.sprite = _eyes;
        browL.sprite = _brows;
        browR.sprite = _brows;
        mouth.sprite = _mouth;
        nose.sprite = _nose;

        eyeL.GetComponent<Image>().material.SetColor("_IrisColor", _iris);
        eyeR.GetComponent<Image>().material.SetColor("_IrisColor", _iris);
    }
}
