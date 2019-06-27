using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Genetics_Mii : MonoBehaviour
{
    public GameObject miiPrefab;
    public int miiAmmount;
    public GameObject miiWorld;

    public Sprite[] heads;
    public Sprite[] eyes;
    public Sprite[] brows;
    public Sprite[] noses;
    public Sprite[] mouths;
    public Color[] skinColor;
    public Color[] iriscolor;

    private List<GameObject> miis = new List<GameObject>();
    private bool advanceTime;

    public void ToggleTime(bool _toggle)
    {
        advanceTime = _toggle;
    }

    public void RandomizeMiis(){

        for (int i = 0; i < miis.Count; i++){
            Sprite randomHead = heads[Random.Range(0, heads.Length)];
            Sprite randomEyes = eyes[Random.Range(0, eyes.Length)];
            Sprite randomBrows = brows[Random.Range(0, brows.Length)];
            Sprite randomNose = noses[Random.Range(0, noses.Length)];
            Sprite randomMouth = mouths[Random.Range(0, mouths.Length)];
            Color randomSkin = skinColor[Random.Range(0, skinColor.Length)];
            Color randomIris = iriscolor[Random.Range(0, iriscolor.Length)];

            miis[i].GetComponent<Human>().SetAllGenes(randomHead, randomEyes, randomBrows, randomMouth, randomNose, randomSkin, randomIris);
        }
        
    }

    public void SpawnMiis(){
        for (int i = 0; i < miiAmmount; i++){
            GameObject mii = Instantiate(miiPrefab, miiWorld.transform);
            miis.Add(mii);
        }
    }

    public void Start(){
        SpawnMiis();
    }

    public void Update(){
        if (Input.GetKeyDown(KeyCode.R))
            RandomizeMiis();
    }
}
