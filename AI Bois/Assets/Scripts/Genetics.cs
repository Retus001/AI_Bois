﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class Genetics : MonoBehaviour
{
    public float timeDelay;
    public int populationSize;
    public GameObject pfbMember;
    public Image target;
    public GameObject populationArea;
    [Range(0, 1)]
    public float mutationRate;
    public GameObject[] timeControls;

    public float currentTime;
    private bool advanceTime;
    private GameObject[] parents = new GameObject[2];
    private List<GameObject> population = new List<GameObject>();
    private float[] populationComparison;
    private Vector3 parentGenes;

    public void RandomizeGenePool() {
        for (int i = 0; i < populationSize; i++){
            population[i].GetComponent<Image>().color= new Color(UnityEngine.Random.Range(0f, 1f), UnityEngine.Random.Range(0f, 1f), UnityEngine.Random.Range(0f, 1f));
        }
    }

    public void NewGeneration()
    {
        for (int i = 0; i < populationSize; i++)
        {
            population[i].GetComponent<Image>().color = Crossover();
        }
    }

    public Color Crossover()
    {
        Color colorResult = Color.white;
        int[] selectedParent = new int[3];

        for (int i = 0; i < 3; i++)
        {
            float luckA = UnityEngine.Random.Range(0, 100);
            float luckB = UnityEngine.Random.Range(0, 100);

            if (luckA >= luckB)
                selectedParent[i] = 0;
            else
                selectedParent[i] = 1;
        }

        colorResult.r = parents[selectedParent[0]].GetComponent<Image>().color.r;
        colorResult.g = parents[selectedParent[1]].GetComponent<Image>().color.g;
        colorResult.b = parents[selectedParent[2]].GetComponent<Image>().color.b;

        // Mutate Genes
        colorResult = Mutation(colorResult);

        return colorResult;
    }

    public Color Mutation(Color _color)
    {
        Color mutated;

        float mutationR = UnityEngine.Random.Range(-mutationRate, mutationRate);
        float mutationG = UnityEngine.Random.Range(-mutationRate, mutationRate);
        float mutationB = UnityEngine.Random.Range(-mutationRate, mutationRate);

        mutated = new Color(_color.r + mutationR, _color.g + mutationG, _color.b + mutationB);

        return mutated;
    }

    public void SelectParents()
    {
        // Compare Population to Target
        for (int i = 0; i < populationSize; i++)
        {
            Vector3 memberComparable = new Vector3(population[i].GetComponent<Image>().color.r, population[i].GetComponent<Image>().color.g, population[i].GetComponent<Image>().color.b).normalized;
            Vector3 targetComparable = new Vector3(target.color.r, target.color.g, target.color.b).normalized;

            float comparison = Vector3.Dot(memberComparable, targetComparable);
            populationComparison[i] = comparison;
        }
        float[] sortedComparison = new float[populationComparison.Length];

        for (int i = 0; i < populationComparison.Length; i++){
            sortedComparison[i] = populationComparison[i];
        }

        Array.Sort(sortedComparison);
        Array.Reverse(sortedComparison);

        // Select Best Parents
        for (int i = 0; i < populationSize; i++)
        {
            if (populationComparison[i] == sortedComparison[0])
                parents[0] = population[i];
            if (populationComparison[i] == sortedComparison[1])
                parents[1] = population[i];
        }
    }

    private void SpawnPopulation()
    {
        // Spawn Population and add to Population List
        int j = 0;
        for (int i = 0; i < populationSize; i++)
        {
            GameObject mmbr = Instantiate(pfbMember, populationArea.transform);
            population.Add(mmbr);
        }
    }

    private void Start()
    {
        SpawnPopulation();
        populationComparison = new float[populationSize];
        currentTime = timeDelay;
    }

    public void StartTime()
    {
        advanceTime = true;
        timeControls[0].GetComponent<Button>().interactable = false;
        timeControls[1].GetComponent<Button>().interactable = true;
    }

    public void StopTime()
    {
        advanceTime = false;
        timeControls[0].GetComponent<Button>().interactable = true;
        timeControls[1].GetComponent<Button>().interactable = false;
    }
 
    void Update()
    {
        if (advanceTime)
        {
            if (currentTime <= 0)
            {
                SelectParents();
                NewGeneration();
                Debug.Log("New Generation Spawned");
                currentTime = timeDelay;
            }
            else
            {
                currentTime -= Time.deltaTime;
            }
        }
    }
}

public static class Extensions
{
    public static float Remap(this float value, float inMin, float inMax, float outMin, float outMax)
    {
        return outMin + (value - inMin) * (outMax - outMin) / (inMax - inMin);
    }

    public static Vector3 Remap(this Vector3 value, float inMin, float inMax, float outMin, float outMax)
    {
        return new Vector3(value.x.Remap(inMin, inMax, outMin, outMax), value.y.Remap(inMin, inMax, outMin, outMax), value.z.Remap(inMin, inMax, outMin, outMax));
    }
}
