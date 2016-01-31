using UnityEngine;
using System.Collections.Generic;
using UnityEngine.Networking;

public class NetworkSetup : NetworkBehaviour
{
    public MonoBehaviour[] behaviours;

	protected void Start()
    {
        Debug.Log( "NetworkSetup.Start" );
        if ( isLocalPlayer )
        {
            foreach ( var _behaviour in behaviours )
            {
                _behaviour.enabled = true;
            }
        }
	}
}
