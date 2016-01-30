using UnityEngine;
using System.Collections;
using Steamroller.Characters;
using Steamroller.Objects;


namespace Steamroller.Obstacles 
{
    [RequireComponent(typeof(CircleCollider2D))]
    public class GravityWellPull : IOribitable 
    {


        private CircleCollider2D col;
        public float rotationSpeed;
        public float speedModifier;
        private GenericMovement movement;
        public float speedStep;
        private float startspeed;
        public float rotateStep;
        private float currentRotation;
        private float orbit;
        
        

        // Use this for initialization
        void Start()
        {
            col = GetComponent<CircleCollider2D>();
        }

        // Update is called once per frame
        void Update()
        {

        }

        //void OnTriggerStay2D(Collider2D _collider)
        //{
        //    //slerp our rotation so that it is gradual
        //    currentRotation = Mathf.Lerp(currentRotation, rotationSpeed, rotateStep * Time.deltaTime);
        //    //get our movement component
        //    movement = _collider.transform.GetComponent<GenericMovement>();
        //    //rotate around the planet
        //    _collider.transform.RotateAround(transform.position, Vector3.forward, -currentRotation * Time.deltaTime);
        //    //lerp our movement speed to the adjusted speed (gets applied by generic movement)
        //    Mathf.Lerp(movement.speed, startspeed + rotationSpeed, speedStep * Time.deltaTime);


        //    Vector3 targetToPlayer = transform.position - _collider.transform.position;
        //    float distSqr = targetToPlayer.sqrMagnitude;
           



        //}

        //void OnTriggerEnter2D(Collider2D _collider)
        //{
        //    //set this to 0
        //    currentRotation = 0;
        //    //grab our start speed
        //    startspeed = _collider.transform.GetComponent<GenericMovement>().speed;

        //    Vector3 targetToPlayer = transform.position - _collider.transform.position;
        //    float dist = targetToPlayer.magnitude;


        //    float angle = Vector3.Angle(_collider.transform.up, targetToPlayer);

        //    orbit = Mathf.Sin(angle) * dist;


        //    float distFromPlayer = Mathf.Sqrt((orbit * orbit) - (dist * dist));

        //    Vector3 intersectionPoint;

        //    intersectionPoint = _collider.transform.TransformPoint(_collider.transform.up * distFromPlayer);
           

        //}
    }

}