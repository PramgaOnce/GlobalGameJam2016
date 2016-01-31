using UnityEngine;
using System.Collections;

namespace Steamroller
{

    public class DontDestoryOnLoad : CachedMonoBehaviour
    {
        protected override void OnEnable()
        {
            base.OnEnable();

            GameObject.DontDestroyOnLoad( gameObject );
        }
    }
}
