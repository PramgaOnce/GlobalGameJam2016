using UnityEngine;
using System.Collections;
using Rewired;

namespace Steamroller
{
    public class InputManager : SingletonMonoBehaviour<InputManager>
    {
        public int playerId = 0;
        private Rewired.Player player;

        protected override void Awake()
        {
            base.Awake();
            
            player = ReInput.players.GetPlayer( playerId );
        }

        public static bool GetPressed( ActionType actionType )
        {
            return instance.player.GetButtonDown( (int)actionType );
        }

        public static bool GetState( ActionType actionType )
        {
            return instance.player.GetButton( (int)actionType );
        }

        public static bool GetReleased( ActionType actionType )
        {
            return instance.player.GetButtonUp( (int)actionType );
        }
    }
}
