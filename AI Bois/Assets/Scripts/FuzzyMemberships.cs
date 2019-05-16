using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FuzzyMemberships : MonoBehaviour
{
    public float functionBool(float _val, float _lim)
    {
        float mem;

        if (_val <= _lim)
        {
            mem = 0.0f;
        } else
        {
            mem = 1.0f;
        }

        return mem;
    }
    public float functionBool_Inv(float _val, float _lim)
    {
        float mem;

        if (_val <= _lim)
        {
            mem = 1.0f;
        }
        else
        {
            mem = 0.0f;
        }

        return mem;
    }

    public float functionDegree(float _val, float _min, float _max)
    {
        float mem = 0.0f;

        if (_val <= _min)
            mem = 0.0f;
        else if (_val > _min && _val <= _max)
            mem = (_val / (_max - _min)) - (_min / (_max - _min));
        else if (_val > _max)
            mem = 1.0f;

        return mem;
    }
    public float functionDegree_Inv(float _val, float _min, float _max)
    {
        float mem = 0.0f;

        if (_val <= _min)
            mem = 1.0f;
        else if (_val > _min && _val <= _max)
            mem = -(_val / (_max - _min)) + (_min / (_max - _min));
        else if (_val > _max)
            mem = 0.0f;

        return mem;
    }

    public float functionTriangle(float _val, float _min, float _peak, float _max)
    {
        float mem = 0.0f;

        if (_val <= _min)
            mem = 0.0f;
        else if (_val > _min && _val <= _peak)
            mem = (_val / (_peak - _min)) - (_min / (_peak - _min));
        else if (_val > _peak && _val <= _max)
            mem = -(_val / (_max - _peak)) + (_max / (_max - _peak));
        else if (_val > _max)
            mem = 1.0f;

        return mem;

    }
    
    public float functionTrapezoid(float _val, float _min, float _peakMin, float _peakMax, float _max)
    {
        float mem = 0.0f;

        if (_val <= _min)
            mem = 0.0f;
        else if (_val > _min && _val <= _peakMin)
            mem = (_val / (_peakMin - _min)) - (_min / (_peakMin - _min));
        else if (_val > _peakMin && _val <= _peakMax)
            mem = 1.0f;
        else if (_val > _peakMax && _val <= _max)
            mem = -(_val / (_max - _peakMax)) + (_max / (_max - _peakMax));
        else if (_val > _max)
            mem = 0.0f;

        return mem;
    }

    public float F_AND(float _a, float _b)
    {
        float val = 0.0f;

        val = Mathf.Min(_a, _b);

        return val;
    }
    public float F_OR(float _a, float _b)
    {
        float val = 0.0f;

        val = Mathf.Max(_a, _b);

        return val;
    }
    public float F_NOT(float _a)
    {
        float val = 0.0f;

        val = 1.0f - _a;

        return val;
    }
}
