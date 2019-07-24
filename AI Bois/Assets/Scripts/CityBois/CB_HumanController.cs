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
    public float viewAngle;
    private float currentHealth;

    // Internal
    [Header("Internal Variables")]
    public LayerMask layerMask;
    public float velocityGainDelay;
    public float velocityFalloffDelay;
    public float rotationGainDelay;
    public float rotationFalloffDelay;
    public float followDistanceWalkLimit;
    public float frontWallDistancing;
    public float peripheralWallDistancing;
    public float actionCooldown = 5;
    public float currentCooldown = 0;
    private Rigidbody rig;
    private float hpSpeedModifier;
    private bool canTakeAction = true;

    static MaterialPropertyBlock propertyBlock;
    static int colorID = Shader.PropertyToID("_MainColor");

    // External
    [Header("External Variables")]
    public CB_House house;
    public CB_Car car;
    public CB_Office job;
    public float workShift;
    public Transform target;
    public List<Transform> chasers;

    // Debugging
    [Header("Debugging")]
    public float frontDistance;
    public float leftDistance;
    public float rightDistance;

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
        ESCAPING,
        COMMUTING,
        RETURNING,
        WANDERING
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

    // Select Random Action
    public void SelectNextAction(ACTIONSTATES _action) {
        SetState(currentMovementState, currentRotationState, _action);
    }

    public void SelectNextAction(ACTIONSTATES _action, GameObject _target) {
        target = _target.transform;
        SetState(currentMovementState, currentRotationState, _action);
    }

    public void SelectRandomAction() {
        ACTIONSTATES action = (ACTIONSTATES)Random.Range(6, 8);
        SetState(currentMovementState, currentRotationState, action);
    }

    // Enter House
    public void EnterHome(GameObject _target){
        if (Vector3.Distance(transform.position, house.GetComponent<CB_House>().entrance.position) <= 0.1f){
            house.GetComponent<CB_House>().StoreResident(gameObject);
        }
    }

    // Enter Job
    public void EnterOffice(GameObject _target){
        if (Vector3.Distance(transform.position, job.GetComponent<CB_Office>().entrance.position) <= 0.1f) {
            job.GetComponent<CB_Office>().StoreEmployee(gameObject);
        }
    }

    // Receive Damage
    public void ReceiveDamage(float _dmg){
        if (currentHealth > 0) {
            currentHealth -= _dmg;
            hpSpeedModifier = currentHealth / maxHealth;
        }
    }

    // Follow a target
    public void FollowTarget(GameObject _target) {
        target = _target.transform;
        SetState(currentMovementState, currentRotationState, ACTIONSTATES.FOLLOWING);
    }

    // Try Aprehending a Target
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

    // Try Releasing from an Aprehension
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
        RaycastHit Fhit;
        RaycastHit Rhit;
        RaycastHit Lhit;

        bool hittingFront = false;
        bool hittingRight = false;
        bool hittingLeft = false;

        // Front Raycast
        if (Physics.Raycast(pov.position, pov.forward, out Fhit, viewDistance, layerMask)){
            Debug.DrawRay(pov.position, pov.forward * Fhit.distance, Color.red);
            hittingFront = true;
            frontDistance = Fhit.distance;
        } else {
            Debug.DrawRay(pov.position, pov.forward * viewDistance, Color.green);
            hittingFront = false;
        }

        // Right Raycast
        Vector3 rightVector = Quaternion.AngleAxis(viewAngle, new Vector3(0, 1, 0)) * pov.forward;
        if (Physics.Raycast(pov.position, rightVector, out Rhit, viewDistance, layerMask)) {
            Debug.DrawRay(pov.position, rightVector * Rhit.distance, Color.red);
            hittingRight = true;
            rightDistance = Rhit.distance;
        } else {
            Debug.DrawRay(pov.position, rightVector * viewDistance, Color.green);
            hittingRight = false;
        }

        // Left Raycast
        Vector3 leftVector = Quaternion.AngleAxis(-viewAngle, new Vector3(0, 1, 0)) * pov.forward;
        if (Physics.Raycast(pov.position, leftVector, out Lhit, viewDistance, layerMask)) {
            Debug.DrawRay(pov.position, leftVector * Lhit.distance, Color.red);
            hittingLeft = true;
            leftDistance = Lhit.distance;
        } else {
            Debug.DrawRay(pov.position, leftVector * viewDistance, Color.green);
            hittingLeft = false;
        }

        // Process RaycastInformation
        if (hittingFront && Fhit.distance <= frontWallDistancing) {
            if (hittingLeft && !hittingRight) { // Only Left Hitting
                if (rotSpeed < 0){
                    rotSpeed = -rotSpeed;
                }
            } else if (hittingRight && !hittingLeft) { // Only Right Hitting
                if (rotSpeed > 0){
                    rotSpeed = -rotSpeed;
                }
            }
            SetState(currentMovementState, ROTATIONSTATES.ROTATING, currentActionState);
        }

        // Adjust Rotation with peripheral vision
        if (hittingRight && Rhit.distance <= peripheralWallDistancing) {
            if (rotSpeed > 0){
                rotSpeed = -rotSpeed;
            };
            SetState(currentMovementState, ROTATIONSTATES.ROTATING, currentActionState);
        }
        else if (hittingLeft && Lhit.distance <= peripheralWallDistancing) {
            if (rotSpeed < 0){
                rotSpeed = -rotSpeed;
            }
            SetState(currentMovementState, ROTATIONSTATES.ROTATING, currentActionState);
        }
    }

    // Cooldown Processing

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

    // Imported Methods

    Vector3 RotateAxisToNearestSide(Vector3 eulerAngles)
    {
        Vector3 roundedEulerAngles = RoundToNearest90Degree(eulerAngles);
        return Vector3.Slerp(eulerAngles, roundedEulerAngles, rotationGainDelay);
    }

    Vector3 RoundToNearest90Degree(Vector3 eulerAngles)
    {
        for(int i = 0; i < 3; i++)
        {
            eulerAngles[i] = Mathf.Round(eulerAngles[i] / 90f) * 90f;
        }
        return eulerAngles;
    }

    void Update()
    {
        // Debugging
        
        

        // ~Debugging

        // Calculate Action Cooldown
        ActionCooldown();

        // Action States
        switch (currentActionState) {
            default:
                Debug.Log("Entered Undefined Action State");
            break;

            case ACTIONSTATES.IDLE:
                SetState(MOVEMENTSTATES.IDLE, ROTATIONSTATES.IDLE, ACTIONSTATES.IDLE);
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
                if (target != null) {
                    float targetDistance = Vector3.Distance(transform.position, target.position);
                    
                    if (targetDistance > 0.1f) {
                        SetState(MOVEMENTSTATES.MOVING, ROTATIONSTATES.IDLE, currentActionState);
                    } else {
                        // TODO: What to do when reached destination
                        SetState(MOVEMENTSTATES.IDLE, ROTATIONSTATES.IDLE, ACTIONSTATES.IDLE);
                    }
                }
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

            case ACTIONSTATES.COMMUTING:
                if (job != null) {
                    target = job.entrance;
                    if (Vector3.Distance(transform.position, job.entrance.position) <= 0.1f) {
                        SetState(MOVEMENTSTATES.IDLE, ROTATIONSTATES.IDLE, ACTIONSTATES.IDLE);
                        EnterOffice(gameObject);
                    } else {
                        SetState(MOVEMENTSTATES.MOVING, ROTATIONSTATES.LOOKINGAT, ACTIONSTATES.COMMUTING);
                    }
                }
                break;

            case ACTIONSTATES.RETURNING:
                if (house != null) {
                    target = house.entrance;
                    if (Vector3.Distance(transform.position, house.entrance.position) <= 0.1f) {
                        SetState(MOVEMENTSTATES.IDLE, ROTATIONSTATES.IDLE, ACTIONSTATES.IDLE);
                        EnterHome(gameObject);
                    } else {
                        SetState(MOVEMENTSTATES.MOVING, ROTATIONSTATES.LOOKINGAT, ACTIONSTATES.RETURNING);
                    }
                }
            break;
        }

        // Check Surroundings and Adjust Behaviour
        CheckForCollisions();
        // CheckSoundFeed();
        // CheckVisualFeed();

        // Movement States
        switch (currentMovementState) {
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
                    rig.angularVelocity = Vector3.Lerp(rig.angularVelocity, Vector3.zero, rotationFalloffDelay); 
                    } else {
                        rig.angularVelocity = Vector3.zero;
                    }
            break;

            case ROTATIONSTATES.ROTATING:
                rig.angularVelocity = Vector3.Lerp(rig.angularVelocity, transform.up * rotSpeed * hpSpeedModifier, rotationGainDelay);
            break;

            case ROTATIONSTATES.LOOKINGAT:
                if (target != null) {
                    Vector3 lookAtVector = target.position - transform.position;
                    Vector3 newDir = Vector3.RotateTowards(transform.forward, lookAtVector, rotationGainDelay * Time.deltaTime * 2f, 0.0f);
                    Quaternion toRotation = Quaternion.LookRotation(lookAtVector);

                    if (Quaternion.Angle(transform.rotation, toRotation) > 0.5f) {
                        transform.rotation = Quaternion.LookRotation(newDir);
                    } else {
                        rig.angularVelocity = Vector3.zero;
                    }
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

    IEnumerator AtHome() {
        float randomDelay = Random.Range(5f, 20f);
        yield return new WaitForSeconds(randomDelay);
        house.DropResident(gameObject);
        SelectRandomAction();
    }

    IEnumerator AtWork() {
        yield return new WaitForSeconds(workShift);
        job.DropEmployee(gameObject);
        SelectNextAction(ACTIONSTATES.RETURNING);
    }
}
