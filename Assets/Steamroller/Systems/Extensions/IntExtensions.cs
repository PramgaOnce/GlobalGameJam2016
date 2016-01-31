using UnityEngine;
using System.Collections;


namespace Steamroller.Extensions
{
    public static class IntExtensions
    {
        private static int difference;
        private static int result;

        public static int Wrap( this int value, int min, int max )
        {
            result = value;

            difference = max - min;
            if ( difference <= 0 )
            {
                return value;
            }

            while ( result < min )
            {
                result += difference;
            }

            while ( result >= max )
            {
                result -= difference;
            }

            return result;
        }

        public static int Wrap( this int value, int max )
        {
            return value.Wrap( 0, max );
        }
    }
}
