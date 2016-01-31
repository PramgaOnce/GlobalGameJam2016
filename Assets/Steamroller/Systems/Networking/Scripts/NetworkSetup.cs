using UnityEngine;
using System.Collections.Generic;
using UnityEngine.Networking;

namespace Steamroller
{
    public class NetworkSetup : NetworkBehaviour
    {
        public MonoBehaviour[] behaviours;

	    protected void Start()
        {
            if ( isLocalPlayer )
            {
                foreach ( var _behaviour in behaviours )
                {
                    _behaviour.enabled = true;
                }
            }


            PlayerManager.instance.players[ isServer ? 0 : 1 ].ship = GetComponent<Ship>();
	    }
    }
}
