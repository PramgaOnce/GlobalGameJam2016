using UnityEngine;
using System.Collections.Generic;

namespace Steamroller
{
    public class Oribitable : CachedMonoBehaviour
    {
        public bool debug = true;
        public float speed = 5.0f;
        public float distance = 5.0f;
        public float time = 1.0f;
        public AnimationCurve falloff = AnimationCurve.EaseInOut( 0.0f, 1.0f, 1.0f, 0.0f );
        
        protected List<Ship> ships;

        protected override void Awake()
        {
            base.Awake();

            ships = new List<Ship>();
        }

        protected override void Update()
        {
            base.Update();

            foreach ( var _ship in ships )
            {
                var _movement = _ship.GetComponent<GenericMovement>();
                if ( _movement.orbiting )
                {
                    _movement.speed = Mathf.Lerp( _movement.speed, falloff.Evaluate( Mathf.Clamp( _movement.orbitRadius / distance, 0.0f, 1.0f ) ) * speed, time * Time.deltaTime );
                }
            }
        }

        protected void OnDrawGizmos()
        {
            if ( !debug )
            {
                return;
            }

            GizmosUtils.DrawCircle( transform.position, distance, 24 );
        }

        public void AttachShip( Ship ship )
        {
            if ( ships.Contains( ship ) )
            {
                return;
            }

            ships.Add( ship );
        }

        public void DetachShip( Ship ship )
        {
            if ( !ships.Contains( ship ) )
            {
                return;
            }

            ships.Remove( ship );
        }
    }
}
