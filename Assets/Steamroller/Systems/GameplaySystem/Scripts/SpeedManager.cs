using UnityEngine;
using System.Collections;

namespace Steamroller
{
    public class SpeedManager : SingletonMonoBehaviour<SpeedManager>
    {
        public float speed = 1.0f;
        public float progression = 0.1f;

        protected override void Update()
        {
            base.Update();

            speed += progression * Time.deltaTime;
        }

        public static float GetSpeed()
        {
            return instance.speed;
        }

        public static void ResetSpeed()
        {
            instance.speed = 1.0f;
        }
    }
}
