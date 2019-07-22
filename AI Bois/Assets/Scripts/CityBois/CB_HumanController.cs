using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CB_HumanController : MonoBehaviour
{
    // Body References
    [Header("Body References")]
    public Transform pov;
    public GameObject head;
    public GameObject body;

    // Visuals
    [Header("Visuals")]
    public bool randomBodyColor;
    public Color bodyColor = Color.white;

    // Stats
    [Header("Stats")]
    public float maxHealth;
    public float speed;
    public float speedRunMultiplier;
    public float rotSpeed;
    public float strength;
    public float viewDistance;
    

    // Internal
    [Header("Internal Variables")]
    public LayerMask layerMask;
    public float velocityGainDelay;
    public float velocityFalloffDelay;
    public float rotationGainDelay;
    public float rotationFalloffDelay;
    public float followDistanceWalkLimit;
    public float actionCooldown = 5;
    public float currentCooldown = 0;
    private Rigidbody rig;
    private float hpSpeedModifier;
    private bool canTakeAction = true;

    static MaterialPropertyBlock propertyBlock;
    static int colorID = Shader.PropertyToID("_MainColor");

    // External
    [Header("External Variables")]
    public GameObject house;
    public GameObject car;
    public GameObject job;
    public Transform target;
    public List<Transform> chasers;

    // Debugging
    [Header("Debugging")]
    public float currentHealth;

    public enum MOVEMENTSTATES
    {
        IDLE,
        MOVING,
        RUNNING
    }

    public enum ROTATIONSTATES
    {
        IDLE,
        ROTATING,
        LOOKINGAT
    }

    public enum ACTIONSTATES
    {
        IDLE,
        INTERACTING,
        FOLLOWING,
        TRAVELING,
        CHASING,
        ESCAPING
    }

    [Header("States")]
    public MOVEMENTSTATES currentMovementState = MOVEMENTSTATES.IDLE;
    public ROTATIONSTATES currentRotationState = ROTATIONSTATES.IDLE;
    public ACTIONSTATES currentActionState = ACTIONSTATES.IDLE;

    void Awake() {
        if (randomBodyColor) {
            bodyColor = new Color(Random.Range(0f, 1f), Random.Range(0f, 1f), Random.Range(0f, 1f));
        }

        if (propertyBlock == null) {
            propertyBlock = new MaterialPropertyBlock();
        }
        propertyBlock.SetColor(colorID, bodyColor);
        body.GetComponent<MeshRenderer>().SetPropertyBlock(propertyBlock);
    }

    void Start() {
        rig = GetComponent<Rigidbody>();
        currentHealth = maxHealth;
        hpSpeedModifier = currentHealth / maxHealth;
        currentCooldown = actionCooldown;
    }

    /// ACTIONS

    public void ActionCooldown() {
        if (currentCooldown <= 0) {
            canTakeAction = true;
        } else {
            currentCooldown -= Time.deltaTime;
            canTakeAction = false;
        }
    }

    public void ResetActionCooldown() {
        canTakeAction = false;
        currentCooldown = actionCooldown;
    }

    public void EnterHouse(GameObject _target){
        if (Vector3.Distance(transform.position, house.transform.position) <= 0.1f){
            house.GetComponent<CB_House>().StoreResident(gameObject);
        }
    }

    public void ReceiveDamage(float _dmg){
        if (currentHealth > 0) {
            currentHealth -= _dmg;
            hpSpeedModifier = currentHealth / maxHealth;
        }
    }

    public void FollowTarget(GameObject _target) {
        target = _target.transform;
        SetState(currentMovementState, currentRotationState, ACTIONSTATES.FOLLOWING);
    }

    public bool TryAprehend() {
        bool success = false;

        if (target != null) {
            if (canTakeAction) {
                Debug.Log("Attempting to Aprehend Target");
                if (target.CompareTag("CB_Human") || target.CompareTag("CB_Animal")) {
                    if (target.CompareTag("CB_Human")) {
                        float strengthCheck = Random.Range(1, strength);
                        if (!target.GetComponent<CB_HumanController>().TryRelease(strengthCheck)) {
                            success = true;
                            Debug.Log("Aprehended " + target.gameObject.name);
                        } else {
                            Debug.Log("Failed to Aprehend " + target.gameObject.name);
                        }
                    } else if (target.CompareTag("CB_Animal")) {
                        
                    }
                    ResetActionCooldown();
                } else {
                    Debug.Log("Can't Aprehend this target");
                }
            }
        } else {
            Debug.Log("No target to Aprehend");
        }

        Debug.Log("Aprehend Success: " + success);
        return success;
    }

    public bool TryRelease(float _enemyStrength) {
        bool success = true;

        float strengthCheck = Random.Range(1, strength);
        if (_enemyStrength >= strengthCheck) {
            success = false;
            SetState(MOVEMENTSTATES.IDLE, ROTATIONSTATES.IDLE, ACTIONSTATES.IDLE);
        }
        
        return success;
    }

    /// STATE SET

    public void SetState(MOVEMENTSTATES _movState, ROTATIONSTATES _rotState, ACTIONSTATES _actState)
    {
        currentMovementState = _movState;
        currentRotationState = _rotState;
        currentActionState = _actState;
    }

    /// ENVIRONMENT INTERACTION

    private void CheckForCollisions() {
        RaycastHit hit;

        if (Physics.Raycast(pov.position, pov.forward, out hit, viewDistance, layerMask)){
            //Debug.DrawRay(pov.position, pov.forward * hit.distance, Color.red);
            Debug.Log("Hitting: " + hit.collider.gameObject.name);
        } else {
            Debug.DrawRay(pov.position, pov.forward * viewDistance, Color.green);
        }
    }

    void Update()
    {
        // Debugging
        
        

        // ~Debugging

        // Check Surroundings
        CheckForCollisions();
        // CheckSoundFeed();
        // CheckVisualFeed();

        // Calculate Action Cooldown
        ActionCooldown();

        // Action States
        switch (currentActionState) {
            default:
                Debug.Log("Entered Undefined Action State");
            break;

            case ACTIONSTATES.IDLE:

            break;

            case ACTIONSTATES.INTERACTING:
                if (target != null) {
                    if (Vector3.Distance(transform.position, target.position) <= 0.1f) {
                        Debug.Log("Interacted with " + target.gameObject.name);
                        SetState(MOVEMENTSTATES.IDLE, ROTATIONSTATES.IDLE, ACTIONSTATES.IDLE);
                    } else {
                        Debug.Log("Cannot Interact: Target Too Far");
                    }
                } else {
                    Debug.Log("No target Available to interact with");
                    SetState(currentMovementState, currentRotationState, ACTIONSTATES.IDLE);
                }
            break;

            case ACTIONSTATES.FOLLOWING:
                if (target != null) {
                    
                    float targetDistance = Vector3.Distance(transform.position, target.position);

                    if (targetDistance > followDistanceWalkLimit) {
                        if (currentMovementState != MOVEMENTSTATES.RUNNING) {
                            SetState(MOVEMENTSTATES.RUNNING, ROTATIONSTATES.LOOKINGAT, currentActionState);
                        }
                    } else {
                        if (currentMovementState != MOVEMENTSTATES.RUNNING && currentMovementState != MOVEMENTSTATES.MOVING) {
                            SetState(MOVEMENTSTATES.MOVING, ROTATIONSTATES.LOOKINGAT, currentActionState);
                        }
                    }

                    if (targetDistance < 0.1f) {
                        SetState(MOVEMENTSTATES.MOVING, ROTATIONSTATES.LOOKINGAT, currentActionState);
                    }
                } else {
                    Debug.Log("No available target to follow");
                    SetState(currentMovementState, currentRotationState, ACTIONSTATES.IDLE);
                }
            break;

            case ACTIONSTATES.TRAVELING:

            break;

            case ACTIONSTATES.CHASING:
                if (target != null) {
                    
                    float targetDistance = Vector3.Distance(transform.position, target.position);

                    if (targetDistance > followDistanceWalkLimit) {
                        if (currentMovementState != MOVEMENTSTATES.RUNNING) {
                            SetState(MOVEMENTSTATES.RUNNING, ROTATIONSTATES.LOOKINGAT, currentActionState);
                        }
                    } else {
                        if (currentMovementState != MOVEMENTSTATES.RUNNING && currentMovementState != MOVEMENTSTATES.MOVING) {
                            SetState(MOVEMENTSTATES.MOVING, ROTATIONSTATES.LOOKINGAT, currentActionState);
                        }
                    }

                    if (targetDistance < 0.1f) {
                        if (TryAprehend()) {
                            SetState(MOVEMENTSTATES.IDLE, ROTATIONSTATES.IDLE, ACTIONSTATES.IDLE);
                        } else {
                            SetState(MOVEMENTSTATES.MOVING, currentRotationState, ACTIONSTATES.CHASING);
                        }
                    }
                } else {
                    Debug.Log("No available target to chase");
                    SetState(currentMovementState, currentRotationState, ACTIONSTATES.IDLE);
                }
            break;

            case ACTIONSTATES.ESCAPING:
                if (chasers.Count > 0) {

                } else {
                     
                }
            break;
        }

        // Movement States
        switch(currentMovementState) {
            default:
                Debug.Log("Entered Undefined Movement State");
            break;

            case MOVEMENTSTATES.IDLE:
                if (Vector3.Distance(rig.velocity, Vector3.zero) > 0.01f) {
                rig.velocity = Vector3.Lerp(rig.velocity, Vector3.zero, velocityFalloffDelay); } else {
                    rig.velocity = Vector3.zero;
                }
            break;

            case MOVEMENTSTATES.MOVING:
                rig.velocity = Vector3.Lerp(rig.velocity, transform.forward * speed * hpSpeedModifier, velocityGainDelay);
            break;

            case MOVEMENTSTATES.RUNNING:
                rig.velocity = Vector3.Lerp(rig.velocity, transform.forward * speed * speedRunMultiplier * hpSpeedModifier, velocityGainDelay);
            break;
        }

        // Rotation States
        switch(currentRotationState) {
            default:
                Debug.Log("Entered Undefined Rotation State");
            break;

            case ROTATIONSTATES.IDLE:
                if (Vector3.Distance(rig.angularVelocity, Vector3.zero) > 0.01f) {
                    rig.angularVelocity = Vector3.Lerp(rig.angularVelocity, Vector3.zero, rotationFalloffDelay); } else {
                        rig.angularVelocity = Vector3.zero;
                    }
            break;

            case ROTATIONSTATES.ROTATING:
                rig.angularVelocity = Vector3.Lerp(rig.angularVelocity, transform.up * rotSpeed * hpSpeedModifier, rotationGainDelay);
            break;

            case ROTATIONSTATES.LOOKINGAT:
                if (target != null) {
                    /* Vector3 lookAtVector = target.position - transform.position;
                    if (Quaternion.Angle(transform.rotation, Quaternion.LookRotation(lookAtVector)) > 0.1f){
                        rig.angularVelocity = Vector3.Lerp(rig.angularVelocity, transform.up * rotSpeed * hpSpeedModifier, rotationGainDelay);
                    } */

                    transform.LookAt(target);
                } else {
                    Debug.Log("No Target Available");
                    SetState(currentMovementState, ROTATIONSTATES.IDLE, currentActionState);
                }
            break;
        }

        // Testing
        if (Input.GetKeyDown(KeyCode.F)){
            ReceiveDamage(0.5f);
        }
    }
}
