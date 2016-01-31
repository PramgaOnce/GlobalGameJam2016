using UnityEngine;
using Steamroller.Extensions;

namespace Steamroller
{
    public class PlayerManager : SingletonMonoBehaviour<PlayerManager>
    {
        public Player[] players;
        public Player currentPlayer;

        public static Player GetPlayer( Ship ship )
        {
            foreach ( var _player in instance.players )
            {
                if ( _player.ship == ship )
                {
                    return _player;
                }
            }

            return null;
        }

        public static int GetPlayerNumber()
        {
            if ( instance.currentPlayer != null )
            {
                for ( var _index = 0; _index < instance.players.Length; _index++ )
                {
                    var _player = instance.players[ _index ];
                    if ( _player == instance.currentPlayer )
                    {
                        return _index;
                    }
                }
            }

            return -1;
        }

        public static Player GetCurrentPlayer()
        {
            return instance.currentPlayer;
        }

        public static Player SetNextPlayer()
        {
            var _playNumber = GetPlayerNumber();
            if ( _playNumber != -1 )
            {
                _playNumber += 1;
                instance.currentPlayer = instance.players[ _playNumber.Wrap( instance.players.Length ) ];
            }

            return GetCurrentPlayer();
        }
    }
}
