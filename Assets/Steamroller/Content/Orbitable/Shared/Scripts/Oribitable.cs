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

        public MeshRenderer[] coreRenderers;
        public MeshRenderer[] outlineRenderers;

        public Color attachedColor;
        public Color dettachedColor;

        protected List<Ship> ships = new List<Ship>();

        protected override void Awake()
        {
            base.Awake();
            
            SetOutlineColor( ships.Count == 0 ? dettachedColor : attachedColor );
        }

        protected override void Update()
        {
            base.Update();

            foreach ( var _ship in ships )
            {
                var _movement = _ship.GetComponent<GenericMovement>();
                if ( _movement.orbiting )
                {
                    _movement.speed = Mathf.Lerp( _movement.speed, falloff.Evaluate( Mathf.Clamp( _movement.orbitRadius / distance, 0.0f, 1.0f ) ) * speed * SpeedManager.GetSpeed(), time * Time.deltaTime );
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

            SetOutlineColor( attachedColor );
        }

        public void DetachShip( Ship ship )
        {
            if ( !ships.Contains( ship ) )
            {
                return;
            }

            ships.Remove( ship );

            if ( ships.Count == 0 )
            {
                SetOutlineColor( dettachedColor );
            }
        }

        public void SetCoreColor( Color color )
        {
            foreach ( var _renderer in coreRenderers )
            {
                _renderer.material.color = color;
            }
        }

        public void SetOutlineColor( Color color )
        {
            foreach ( var _renderer in outlineRenderers )
            {
                _renderer.material.color = color;
            }
        }
    }
}
