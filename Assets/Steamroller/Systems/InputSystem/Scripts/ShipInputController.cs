using UnityEngine;
using System.Collections;

namespace Steamroller
{
    public class ShipInputController : CachedMonoBehaviour
    {
        public Ship ship;
        private GenericMovement movement;

        protected override void OnEnable()
        {
            base.OnEnable();

            movement = ship.GetComponent<GenericMovement>();
        }

        protected override void Update()
        {
            base.Update();

            HandleInput();
        }

        private void HandleInput()
        {
            if ( movement == null )
            {
                return;
            }

            if ( InputManager.GetPressed( ActionType.Orbit ) )
            {
                movement.orbit = true;
            }

            if ( InputManager.GetReleased( ActionType.Orbit ) )
            {
                movement.orbit = false;
            }
        }
    }
}
