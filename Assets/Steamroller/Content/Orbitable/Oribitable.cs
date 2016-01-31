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
        public Color color1;
        public Color color2;
        public Color defaultColor1;
        public Color defaultColor2;
        public float pulseValue;

        private MeshRenderer _meshRenderer;
        private new MeshRenderer meshRenderer
        {
            get
            {
                if ( _meshRenderer == null )
                {
                    _meshRenderer = GetComponentInChildren<MeshRenderer>();
                }

                return _meshRenderer;
            }
        }
        private List<Ship> ships = new List<Ship>();

        protected override void Awake()
        {
            base.Awake();
            meshRenderer.material.SetFloat("_PulseSpeed", 1.0f);
            meshRenderer.material.SetColor("_Color1", defaultColor1);
            meshRenderer.material.SetColor("_Color2", defaultColor2);
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

            meshRenderer.material.SetFloat("_PulseSpeed", pulseValue);
            meshRenderer.material.SetColor("_Color1", color1);
            meshRenderer.material.SetColor("_Color2", color2);
        }

        public void DetachShip( Ship ship )
        {
            if ( !ships.Contains( ship ) )
            {
                return;
            }

            ships.Remove( ship );

            meshRenderer.material.SetFloat("_PulseSpeed", 1.0f);
            meshRenderer.material.SetColor("_Color1", defaultColor1);
            meshRenderer.material.SetColor("_Color2", defaultColor2);
        }
    }
}
