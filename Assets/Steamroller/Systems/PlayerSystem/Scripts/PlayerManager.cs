using UnityEngine;
using Steamroller.Extensions;

namespace Steamroller
{
    public class PlayerManager : SingletonMonoBehaviour<PlayerManager>
    {
        public Player[] players;
        public Player currentPlayer;

        public static Player GetCurrentPlayer()
        {
            return instance.currentPlayer;
        }

        public static Player SetNextPlayer()
        {
            if ( instance.currentPlayer != null )
            {
                for ( var _index = 0; _index < instance.players.Length; _index++ )
                {
                    var _player = instance.players[ _index ];
                    if ( _player == instance.currentPlayer )
                    {
                        _index += 1;
                        instance.currentPlayer = instance.players[ _index.Wrap( instance.players.Length ) ];
                        break;
                    }
                }
            }

            return GetCurrentPlayer();
        }
    }
}
