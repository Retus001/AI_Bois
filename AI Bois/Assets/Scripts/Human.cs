using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

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

    public TextMeshProUGUI pairId;
    public TextMeshProUGUI parentId;

    public void SetAllGenes(Sprite _head, Sprite _eyes, Sprite _brows, Sprite _mouth, Sprite _nose, Color _skin, Color _iris){
        head.sprite = _head;
        head.color = _skin;
        eyeL.sprite = _eyes;
        eyeR.sprite = _eyes;
        browL.sprite = _brows;
        browR.sprite = _brows;
        mouth.sprite = _mouth;
        nose.sprite = _nose;

        eyeL.material.SetColor("_IrisColor", _iris);
        eyeR.material.SetColor("_IrisColor", _iris);
    }

    public void MutateHead(Vector2 _position, Vector3 _scale)
    {
        head.GetComponent<RectTransform>().anchoredPosition += _position;
        head.GetComponent<RectTransform>().localScale = _scale;
    }

    public void MutateEyes(Vector2 _position, Vector3 _scale)
    {
        eyeL.GetComponent<RectTransform>().anchoredPosition += _position;
        eyeL.GetComponent<RectTransform>().localScale = _scale;

        Vector2 invPosition = new Vector2(-_position.x, _position.y);
        Vector3 invScale = new Vector3(-_scale.x, _scale.y, _scale.z);

        eyeR.GetComponent<RectTransform>().anchoredPosition += invPosition;
        eyeR.GetComponent<RectTransform>().localScale = invScale;
    }

    public void MutateBrows(Vector2 _position, Vector3 _scale)
    {
        browL.GetComponent<RectTransform>().anchoredPosition += _position;
        browL.GetComponent<RectTransform>().localScale = _scale;

        Vector2 invPosition = new Vector2(-_position.x, _position.y);
        Vector3 invScale = new Vector3(-_scale.x, _scale.y, _scale.z);

        browR.GetComponent<RectTransform>().anchoredPosition += invPosition;
        browR.GetComponent<RectTransform>().localScale = invScale;
    }

    public void MutateMouth(Vector2 _position, Vector3 _scale)
    {
        mouth.GetComponent<RectTransform>().anchoredPosition += _position;
        mouth.GetComponent<RectTransform>().localScale = _scale;
    }

    public void MutateNose(Vector2 _position, Vector3 _scale)
    {
        nose.GetComponent<RectTransform>().anchoredPosition += _position;
        nose.GetComponent<RectTransform>().localScale = _scale;
    }

    public void MutateSkin(float _offsetR, float _offsetG, float _offsetB)
    {
        head.color = new Color(head.color.r + _offsetR, head.color.g + _offsetG, head.color.b + _offsetB);
    }

    public void MutateIris(float _offsetR, float _offsetG, float _offsetB)
    {
        Color og = eyeL.material.GetColor("_IrisColor");
        Color mutColor = new Color((og.r + _offsetR), og.g + _offsetG, og.b + _offsetB);

        eyeL.material.SetColor("_IrisColor", mutColor);
        eyeR.material.SetColor("_IrisColor", mutColor);
    }

    public void SetPairId(int _id)
    {
        pairId.text = _id.ToString();
    }

    public void SetParentId(int _id)
    {
        parentId.text = _id.ToString();
    }
}
