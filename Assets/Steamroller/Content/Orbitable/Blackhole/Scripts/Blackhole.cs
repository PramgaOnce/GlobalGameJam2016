using UnityEngine;

namespace Steamroller 
{
    public class Blackhole : Oribitable
    {
        public float decay = 1.0f;

        protected override void Update()
        {
            base.Update();

            foreach ( var _ship in ships )
            {
                var _movement = _ship.GetComponent<GenericMovement>();
                if ( _movement.orbiting )
                {
                    _movement.orbitRadius = Mathf.Max( _movement.orbitRadius - ( ( 1.0f / decay ) * Time.deltaTime ), 0.1f );
                }
            }
        }
    }
}