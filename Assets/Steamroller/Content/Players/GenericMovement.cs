﻿using UnityEngine;
using Steamroller.Objects;

namespace Steamroller.Characters
{   
    public class GenericMovement : CachedMonoBehaviour
    {
        public bool debug;

        [HideInInspector]
        public Ship ship;

        [HideInInspector]
        public float speed;

        [HideInInspector]
        public Vector3 selfPoint;

        [HideInInspector]
        public float orbitRadius;
        [HideInInspector]
        public Vector3 orbitPoint;
        [HideInInspector]
        public float orbitDistance;
        [HideInInspector]
        public float orbitThreshold;
        [HideInInspector]
        public float orbitSide = 1.0f;
        [HideInInspector]
        public bool orbiting = false;
        [HideInInspector]
        public bool orbit = false;

        [HideInInspector]
        private float orbitAngle;

        [HideInInspector]
        public Oribitable orbitable;

        [HideInInspector]
        public Vector3 orbitablePoint;
        [HideInInspector]
        public Vector3 orbitableVector;
        [HideInInspector]
        public float orbitableDistance;
        [HideInInspector]
        public float orbitableAngle;
        
        protected override void Start()
        {
            ship = GetComponent<Ship>();

            orbit = true;
            FindOrbitable();
            FindOrbitPoint();
        }

        protected override void Update()
        {
            FindOrbitable();

            HandleInput();

            if ( orbitable && orbit && !orbiting )
            {
                float _distanceToOrbit = ( orbitPoint - transform.position ).sqrMagnitude;
                if ( _distanceToOrbit < orbitThreshold * orbitThreshold )
                {
                    orbiting = true;
                    orbitable.AttachShip( ship );
                }
            }
            
            if ( orbiting )
            {
                // Adjust position to orbit radius if needed
                if ( Vector3.Distance( orbitable.transform.position, transform.position ) != orbitRadius )
                {
                    transform.position = orbitable.transform.position + ( ( transform.position - orbitable.transform.position ).normalized * orbitRadius );
                }

                orbitAngle = ( ( speed * Time.deltaTime ) / ( 2 * orbitRadius * Mathf.PI ) ) * orbitSide * 360.0f;
                transform.RotateAround( orbitable.transform.position, Vector3.forward, orbitAngle );
            }
            else
            {
                // Simply move forward
                transform.Translate( Vector3.up * speed * Time.deltaTime, Space.Self );
            }
        }

        private void HandleInput()
        {
            if ( InputManager.GetPressed( ActionType.Orbit ) )
            {
                orbit = false;
                orbiting = false;
                if ( orbitable )
                {
                    orbitable.DetachShip( GetComponent<Ship>() );
                }
            }

            if (InputManager.GetReleased(ActionType.Orbit) )
            {
                orbit = true;
                FindOrbitPoint();
            }
        }

        private void FindOrbitable()
        {
            if ( orbitable )
            {
                if ( orbiting || orbit )
                {
                    return;
                }
            }

            selfPoint = transform.position;

            orbitable = null;

            float _closestDistance = float.MaxValue;
            foreach ( var _oribitable in GameObject.FindObjectsOfType<Oribitable>() )
            {
                var _distance = _oribitable.transform.position - selfPoint;

                //rule out anyting behind me
                if ( Vector3.Dot( transform.up, _distance ) < 0.0f )
                {
                    continue;
                }

                if ( _distance.sqrMagnitude < _closestDistance )
                {
                    orbitable = _oribitable;
                    _closestDistance = _distance.sqrMagnitude;
                }
            }
        }

        private void FindOrbitPoint()
        {
            if ( orbitable == null )
            {
                return;
            }

            selfPoint = transform.position;

            orbitablePoint = orbitable.transform.position;

            //grab the vector from the orbitable to me
            orbitableVector = orbitablePoint - selfPoint;

            //get the distance
            orbitableDistance = orbitableVector.magnitude;

            orbitSide = Vector3.Dot(transform.right, orbitableVector) < 0.0f ? 1.0f : -1.0f;

            //get the angle between the two
            orbitableAngle = Vector3.Angle(orbitableVector, transform.up);

            orbitRadius = Mathf.Sin(orbitableAngle * Mathf.Deg2Rad) * orbitableDistance;

            orbitDistance = Mathf.Sqrt((orbitableDistance * orbitableDistance) - (orbitRadius * orbitRadius));
            orbitPoint = transform.TransformPoint(Vector3.up * orbitDistance);
        }
      
        protected void OnDrawGizmos()
        {
            if ( !debug )
            {
                return;
            }

            Gizmos.color = Color.red;
            Gizmos.DrawRay(transform.position, transform.up);

            Gizmos.color = Color.yellow;

	        Gizmos.DrawLine(selfPoint, orbitablePoint);
            Gizmos.color = Color.green;
            Gizmos.DrawLine(selfPoint, orbitPoint);
            Gizmos.color = Color.yellow;
            GizmosUtils.DrawCircle(orbitablePoint, orbitRadius, 24);
            Gizmos.DrawSphere(orbitPoint, 0.25f);
        }
    } 
}
