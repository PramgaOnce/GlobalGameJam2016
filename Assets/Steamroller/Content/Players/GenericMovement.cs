using UnityEngine;
using System.Collections;
using Steamroller.Objects;


namespace Steamroller.Characters
{
    
    public class GenericMovement : MonoBehaviour
    {
        //we dont want to control direction of the force
        public float speed;
        public float IntersectionThreshold;
        private bool Orbiting = false;

        public float orbitSpeed = 1.0f;
        public float orbitDistance;

        private Oribitable Interactable;

        public Vector3 selfPoint;
        public Vector3 targetPoint;
        public Vector3 targetVector;
        public float targetDistance;
        public float targetAngle;
        
        public Vector3 intersectionPoint;
        public float intersectionDistance;
        public float directionMultiplier = 1.0f;
         
        void Awake()
        {
        }

        
        void Start()
        {
            FindTarget();
        }

        
        void Update()
        {
            HandleInput();

            if (Interactable)
            {
                if (Orbiting)
                {
                    transform.RotateAround(Interactable.transform.position, Vector3.forward, directionMultiplier * (1.0f / orbitDistance) * orbitSpeed * Time.deltaTime);
                    return;
                }
                else
                {
                    float _distToIntersection = (intersectionPoint - transform.position).sqrMagnitude;
                    if (IntersectionThreshold * IntersectionThreshold > _distToIntersection)
                    {
                        Orbiting = true;
                        return;
                    }
                }
            }
            

            float _speedStep = speed * Time.deltaTime;
            transform.Translate(new Vector3(0.0f, _speedStep, 0.0f), Space.Self);
        }


        void HandleInput()
        {
            if (InputManager.GetReleased(ActionType.Orbit) )
            {
                FindTarget();
            }
            else if (!InputManager.GetState(ActionType.Orbit))
            {

            }
            else if (InputManager.GetPressed(ActionType.Orbit))
            {
                Interactable = null;
                Orbiting = false;
            }
        }

        void FindTarget()
        {
            float closestDist = float.MaxValue;
            foreach (var item in GameObject.FindGameObjectsWithTag("Interactable"))
            {



                Vector3 _dist = item.transform.position - transform.position;
                //rule out anyting behind me
                if (Vector3.Dot(transform.up, _dist) < 0.0f)
                {
                    continue;
                }

                if (_dist.sqrMagnitude < closestDist)
                {

                    Interactable = item.GetComponent<Oribitable>();
                    closestDist = _dist.sqrMagnitude;
                }
            }

            if (Interactable == null)
            {
                Orbiting = false;
                return;
            }

            selfPoint = transform.position;
            targetPoint = Interactable.transform.position;

            //grab the vector from the orbitable to me
            targetVector = targetPoint - selfPoint;

            //get the distance
            targetDistance = targetVector.magnitude;

            directionMultiplier = Vector3.Dot(transform.right, targetVector) < 0.0f ? 1.0f : -1.0f;

            //get the angle between the two
            targetAngle = Vector3.Angle(targetVector, transform.up);

            orbitDistance = Mathf.Sin(targetAngle * Mathf.Deg2Rad) * targetDistance;

            intersectionDistance = Mathf.Sqrt((targetDistance * targetDistance) - (orbitDistance * orbitDistance));
            intersectionPoint = transform.TransformPoint(Vector3.up * intersectionDistance);
        }

      
            void OnDrawGizmos()
            {
                Gizmos.color = Color.red;
                Gizmos.DrawRay(transform.position, transform.up);

                Gizmos.color = Color.yellow;

	            Gizmos.DrawLine(selfPoint, targetPoint);
                Gizmos.color = Color.green;
                Gizmos.DrawLine(selfPoint, intersectionPoint);
                Gizmos.color = Color.yellow;
                GizmosUtils.DrawCircle(targetPoint, orbitDistance, 24);
                Gizmos.DrawSphere(intersectionPoint, 0.25f);
                


            }
    } 
}
