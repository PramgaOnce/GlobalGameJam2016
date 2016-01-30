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
        private IOribitable Interactable;
        Vector3 intersectionPoint;

        
         
        void Awake()
        {
            
        }

        
        void Start()
        {
           
        }

        
        void Update()
        {
            HandleInput();

            if (Interactable)
            {
                if ( Orbiting)
                {
                    transform.RotateAround(Interactable.transform.position, Vector3.forward, 15.0f * Time.deltaTime);
                    return;
                }
                else
                {
                    float _distToIntersection = (intersectionPoint - transform.position).sqrMagnitude;
                    if (IntersectionThreshold * IntersectionThreshold > _distToIntersection)
                    {
                        Orbiting = true;
                    }
                } 
            }
            

            float _speedStep = speed * Time.deltaTime;
            transform.Translate(new Vector3(0.0f, _speedStep, 0.0f), Space.Self);
        }


        void HandleInput()
        {
            if (InputManager.GetPressed(ActionType.Orbit))
            {
                float closestDist = float.MaxValue;


                foreach (var item in GameObject.FindGameObjectsWithTag("Interactable"))
                {
                    Vector3 _dist = item.transform.position - transform.position;

                    if (_dist.sqrMagnitude < closestDist)
                    {
                        Interactable = item.GetComponent<IOribitable>();
                        closestDist = _dist.sqrMagnitude;
                    }
                }

                if (Interactable == null)
                {
                    Orbiting = false;
                    return;
                }

                //grab the vector from the orbitable to me
                Vector3 targetToPlayer = Interactable.transform.position - transform.position;
                //get the distance
                float dist = targetToPlayer.magnitude;

                //get the angle between the two
                float angle = Vector3.Angle(targetToPlayer, transform.up);


                float orbit = Mathf.Sin(angle) * dist;
                Debug.Log(orbit);

                float distFromPlayer = Mathf.Sqrt((orbit * orbit) - (dist * dist));


                Vector3 _up = transform.up;
                intersectionPoint = transform.TransformPoint(_up * distFromPlayer);

            }
            else if (InputManager.GetState(ActionType.Orbit))
            {
               

              

            }
            else if (InputManager.GetReleased(ActionType.Orbit))
            {
                Interactable = null;
                Orbiting = false;
            }
        }

      
            void OnDrawGizmos()
            {
                Gizmos.color = Color.red;
                Gizmos.DrawSphere(intersectionPoint,.10f);
                if (Interactable)
	            {
	            	 Gizmos.DrawLine(Interactable.transform.position,transform.position);
                     Gizmos.DrawLine(transform.position, intersectionPoint);
                     Gizmos.DrawRay(transform.position, transform.up);
	            }
                


            }
    } 
}
