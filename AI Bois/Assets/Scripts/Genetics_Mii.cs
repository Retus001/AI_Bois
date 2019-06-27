using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Genetics_Mii : MonoBehaviour
{
    public float timeDelay;

    public GameObject miiPrefab;
    [Range(0, 32)]
    public int miiAmmount;
    public GameObject miiWorld;

    public float bodyMutationAmmount;
    [Range(0,1)]
    public float colorMutationAmmount;

    private GameObject[,] pairs;

    public Sprite[] heads;
    public Sprite[] eyes;
    public Sprite[] brows;
    public Sprite[] noses;
    public Sprite[] mouths;
    public Color[] skinColor;
    public Color[] iriscolor;

    private List<GameObject> miis = new List<GameObject>();
    private bool advanceTime = false;
    private float currentTime;

    public void ToggleTime()
    {
        advanceTime = !advanceTime;
    }

    public void PairMiis()
    {
        List<GameObject> singles =  new List<GameObject>();
        pairs = new GameObject[miis.Count/2,2];

        int randomBreak = 99;

        for (int i = 0; i < miis.Count; i++)
        {
            singles.Add(miis[i]);
        }

        for (int i = 0; i < pairs.Length/2; i++)
        {
            // Setting Random Father
            int randomFather = Random.Range(0, singles.Count);
            pairs[i, 0] = singles[randomFather];
            singles.RemoveAt(randomFather);

            // Setting Random Mother
            int randomMother = Random.Range(0, singles.Count);
            while (randomMother == randomFather && randomBreak > 0)
            {
                randomMother = Random.Range(0, singles.Count);
                randomBreak--;
            }
            if (randomBreak <= 0)
                Debug.Log("Infinite While");
            pairs[i, 1] = singles[randomMother];
            singles.RemoveAt(randomMother);

            // Set Pair Ids
            pairs[i, 0].GetComponent<Human>().SetPairId(i);
            pairs[i, 1].GetComponent<Human>().SetPairId(i);
        }
        Debug.Log("Finished Setting Parents");
    }

    public void NewGeneration()
    {
        for (int i = 0; i < miis.Count; i++)
        {
            int whoFucked = Random.Range(0, pairs.Length / 2);
            ProcreateMii(miis[i], pairs[whoFucked, 0], pairs[whoFucked, 1], whoFucked);
        }
    }

    public void ProcreateMii(GameObject _mii, GameObject _father, GameObject _mother, int _parentsId)
    {
        Sprite domHead = (Random.Range(0, 1) > 0.5 ? _father.GetComponent<Human>().head.sprite : _mother.GetComponent<Human>().head.sprite);
        Sprite domEyes = (Random.Range(0, 1) > 0.5 ? _father.GetComponent<Human>().eyeL.sprite : _mother.GetComponent<Human>().eyeL.sprite);
        Sprite domBrows = (Random.Range(0, 1) > 0.5 ? _father.GetComponent<Human>().browL.sprite : _mother.GetComponent<Human>().browL.sprite);
        Sprite domNose = (Random.Range(0, 1) > 0.5 ? _father.GetComponent<Human>().nose.sprite : _mother.GetComponent<Human>().nose.sprite);
        Sprite domMouth = (Random.Range(0, 1) > 0.5 ? _father.GetComponent<Human>().mouth.sprite : _mother.GetComponent<Human>().mouth.sprite);
        Color domSkin = (Random.Range(0, 1) > 0.5 ? _father.GetComponent<Human>().head.color : _mother.GetComponent<Human>().head.color);
        Color domIris = (Random.Range(0, 1) > 0.5 ? _father.GetComponent<Human>().eyeL.material.GetColor("_IrisColor") : _mother.GetComponent<Human>().eyeL.material.GetColor("_IrisColor"));

        _mii.GetComponent<Human>().SetAllGenes(domHead, domEyes, domBrows, domMouth, domNose, domSkin, domIris);
        _mii.GetComponent<Human>().SetPairId(0);
        _mii.GetComponent<Human>().SetParentId(_parentsId);

        Mutate(_mii);
    }

    public void Mutate(GameObject _mii)
    {
        Vector3 mutPos;
        Vector3 mutScale;

        // Head Mutation
        mutPos = new Vector3(Random.Range(-bodyMutationAmmount, bodyMutationAmmount), Random.Range(-bodyMutationAmmount, bodyMutationAmmount), 0);
        mutScale = new Vector3(Random.Range(-bodyMutationAmmount, bodyMutationAmmount).Remap(-bodyMutationAmmount, bodyMutationAmmount, 0.5f, 2f), Random.Range(-bodyMutationAmmount, bodyMutationAmmount).Remap(-bodyMutationAmmount, bodyMutationAmmount, 0.5f, 2f), 0);
        _mii.GetComponent<Human>().MutateHead(mutPos, mutScale);

        // Eyes Mutation
        mutPos = new Vector3(Random.Range(-bodyMutationAmmount, bodyMutationAmmount), Random.Range(-bodyMutationAmmount, bodyMutationAmmount), 0);
        mutScale = new Vector3(Random.Range(-bodyMutationAmmount, bodyMutationAmmount).Remap(-bodyMutationAmmount, bodyMutationAmmount, 0.5f, 2f), Random.Range(-bodyMutationAmmount, bodyMutationAmmount).Remap(-bodyMutationAmmount, bodyMutationAmmount, 0.5f, 2f), 0);
        _mii.GetComponent<Human>().MutateEyes(mutPos, mutScale);

        // Brows Mutation
        mutPos = new Vector3(Random.Range(-bodyMutationAmmount, bodyMutationAmmount), Random.Range(-bodyMutationAmmount, bodyMutationAmmount), 0);
        mutScale = new Vector3(Random.Range(-bodyMutationAmmount, bodyMutationAmmount).Remap(-bodyMutationAmmount, bodyMutationAmmount, 0.5f, 2f), Random.Range(-bodyMutationAmmount, bodyMutationAmmount).Remap(-bodyMutationAmmount, bodyMutationAmmount, 0.5f, 2f), 0);
        _mii.GetComponent<Human>().MutateBrows(mutPos, mutScale);

        // Mouth Mutation
        mutPos = new Vector3(Random.Range(-bodyMutationAmmount, bodyMutationAmmount), Random.Range(-bodyMutationAmmount, bodyMutationAmmount), 0);
        mutScale = new Vector3(Random.Range(-bodyMutationAmmount, bodyMutationAmmount).Remap(-bodyMutationAmmount, bodyMutationAmmount, 0.5f, 2f), Random.Range(-bodyMutationAmmount, bodyMutationAmmount).Remap(-bodyMutationAmmount, bodyMutationAmmount, 0.5f, 2f), 0);
        _mii.GetComponent<Human>().MutateMouth(mutPos, mutScale);

        // Nose Mutation
        mutPos = new Vector3(Random.Range(-bodyMutationAmmount, bodyMutationAmmount), Random.Range(-bodyMutationAmmount, bodyMutationAmmount), 0);
        mutScale = new Vector3(Random.Range(-bodyMutationAmmount, bodyMutationAmmount).Remap(-bodyMutationAmmount, bodyMutationAmmount, 0.5f, 2f), Random.Range(-bodyMutationAmmount, bodyMutationAmmount).Remap(-bodyMutationAmmount, bodyMutationAmmount, 0.5f, 2f), 0);
        _mii.GetComponent<Human>().MutateNose(mutPos, mutScale);

        // Skin Mutation
        int rMul = Random.Range(0, 1) > 0.5 ? -1 : 1;
        int gMul = Random.Range(0, 1) > 0.5 ? -1 : 1;
        int bMul = Random.Range(0, 1) > 0.5 ? -1 : 1;
        _mii.GetComponent<Human>().MutateSkin(colorMutationAmmount * rMul, colorMutationAmmount * gMul, colorMutationAmmount * bMul);

        // Iris Mutation
        rMul = Random.Range(0, 1) > 0.5 ? -1 : 1;
        gMul = Random.Range(0, 1) > 0.5 ? -1 : 1;
        bMul = Random.Range(0, 1) > 0.5 ? -1 : 1;
        _mii.GetComponent<Human>().MutateIris(colorMutationAmmount * rMul, colorMutationAmmount * gMul, colorMutationAmmount * bMul);

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
        currentTime = timeDelay;
    }

    public void Update(){
        if (Input.GetKeyDown(KeyCode.R))
            RandomizeMiis();

        if (Input.GetKeyDown(KeyCode.P))
            PairMiis();

        if (Input.GetKeyDown(KeyCode.N))
            NewGeneration();

        if (Input.GetKeyDown(KeyCode.Space))
            ToggleTime();


        if (advanceTime)
        {
            if (currentTime <= 0)
            {
                PairMiis();
                NewGeneration();
                currentTime = timeDelay;
            } else
            {
                currentTime -= Time.deltaTime;
            }
        }
    }
}
