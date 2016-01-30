using UnityEngine;
using System.Collections.Generic;

namespace Steamroller.Objects
{
    public class Oribitable : CachedMonoBehaviour
    {
        protected List<Ship> ships;

        protected override void Awake()
        {
            base.Awake();

            ships = new List<Ship>();
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
