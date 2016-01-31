using UnityEngine;
using Steamroller.Objects;

namespace Steamroller.Characters
{   
    public class GenericMovement : CachedMonoBehaviour
    {
        public bool debug;

        public float speed;

        public Vector3 selfPoint;
        
        public float orbitRadius;
        public Vector3 orbitPoint;
        public float orbitDistance;
        public float orbitThreshold;
        public float orbitSide = 1.0f;
        public bool orbiting = false;
        public bool orbit = false;
        private float orbitAngle;
        private Oribitable _orbitable;

        public Vector3 orbitablePoint;
        public Vector3 orbitableVector;
        public float orbitableDistance;
        public float orbitableAngle;
        private Vector3 position;
        public float pulseValue;
        public Color color1;
        public Color color2;


        public Color defaultColor1;
        public Color defaultColor2;

        public Oribitable orbitable
        {
            get
            {
                return _orbitable;
            }
            set
            {
                if (_orbitable)
                {
                    MeshRenderer mesh_renderer = _orbitable.GetComponentInChildren<MeshRenderer>();
                    mesh_renderer.material.SetFloat("_PulseSpeed", 0.0f);
                    mesh_renderer.material.SetColor("_Color1", defaultColor1);
                    mesh_renderer.material.SetColor("_Color2", defaultColor2);

                }

                _orbitable = value;

                if (_orbitable)
                {
                    MeshRenderer mesh_renderer = _orbitable.GetComponentInChildren<MeshRenderer>();
                     mesh_renderer.material.SetColor("_Color1",color1);
                     mesh_renderer.material.SetColor("_Color2", color2);

                  

                    mesh_renderer.material.SetFloat("_PulseSpeed", pulseValue);
                  
                  
                }

            }
        }

        

        protected override void Start()
        {
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
                }
            }
            
            if ( orbiting )
            {
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
