using UnityEngine;
using System.Collections;
using Steamroller.Objects;


namespace Steamroller.Characters
{
    
    public class GenericMovement : MonoBehaviour
    {
        //we dont want to control direction of the force
        public float speed;
        private bool MoveNormaly;
        private Oribitable Interactable;

        void Awake()
        {
        }

        
        void Start()
        {  
        }

        
        void Update()
        {
          

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
                        Interactable = item.GetComponent<Oribitable>();
                        closestDist = _dist.sqrMagnitude;
                    }
                }

                if (Interactable == null)
                {
                    return;
                }



            }
            else if (InputManager.GetState(ActionType.Orbit))
            {

                Vector3 targetToPlayer = Interactable.transform.position - transform.position;
                float dist = targetToPlayer.magnitude;


                float angle = Vector3.Angle(transform.up, targetToPlayer);


                float orbit = Mathf.Sin(angle) * dist;


                float distFromPlayer = Mathf.Sqrt((orbit * orbit) - (dist * dist));

                Vector3 intersectionPoint;

                intersectionPoint = transform.TransformPoint(transform.up * distFromPlayer);



            }
            else if (InputManager.GetReleased(ActionType.Orbit))
            {
                Interactable = null;
            }
        }
    } 
}
