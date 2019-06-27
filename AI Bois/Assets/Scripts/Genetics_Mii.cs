using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Genetics_Mii : MonoBehaviour
{
    public GameObject miiPrefab;
    [Range(0, 32)]
    public int miiAmmount;
    public GameObject miiWorld;

    [Header("Test")]
    public GameObject[] Fathers;
    public GameObject[] Mothers;

    [Range(0, 1)]
    public float mutationRate;

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

    public void PairMiis()
    {
        List<GameObject> singles =  new List<GameObject>();
        GameObject[,] pairs = new GameObject[miis.Count/2,2];

        Debug.Log("miis Count: " + miis.Count);

        int randomBreak = 20;

        Debug.Log("Adding Singles");
        for (int i = 0; i < miis.Count; i++)
        {
            if (i >= miis.Count)
                Debug.Log("OutOfRange");
            singles.Add(miis[i]);
        }
        Debug.Log("Finished Singles");

        Debug.Log("Setting Pairs");
        Debug.Log("Singles Count: " + singles.Count);
        Debug.Log("Pairs Length: " + pairs.Length);
        for (int i = 0; i < pairs.Length; i++)
        {
            int randomFather = Random.Range(0, singles.Count);
            int randomMother = Random.Range(0, singles.Count);
            while (randomMother == randomFather && randomBreak > 0)
            {
                randomMother = Random.Range(0, singles.Count);
                randomBreak--;
            }

            if (randomBreak <= 0)
                Debug.Log("Infinite While");

            Debug.Log("Setting Father " + i);
            pairs[i, 0] = singles[randomFather];
            Debug.Log("Setting Mother " + i);
            pairs[i, 1] = singles[randomMother];

            singles.Remove(singles[randomFather]);
            singles.Remove(singles[randomMother]);
        }
        Debug.Log("Finished Pairs");

        Fathers = new GameObject[pairs.Length];
        Mothers = new GameObject[pairs.Length];

        for (int i = 0; i < pairs.Length; i++)
        {
            Fathers[i] = pairs[i, 0];
            Mothers[i] = pairs[i, 1];
        }
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

        if (Input.GetKeyDown(KeyCode.P))
            PairMiis();
    }
}
