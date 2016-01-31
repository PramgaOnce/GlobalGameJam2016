using UnityEngine;
using System;

namespace Steamroller
{
    [Serializable]
    public class Player
    {
        public string name;

        public Ship ship;

        public Color coreColor;
        public Color outlineColor;

        public int score;

        public bool active;
    }
}
