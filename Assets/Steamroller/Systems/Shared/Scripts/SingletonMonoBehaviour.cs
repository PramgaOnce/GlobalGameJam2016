using System.Linq;
using UnityEngine;


namespace Steamroller
{
    public class SingletonMonoBehaviour<T> : CachedMonoBehaviour where T : CachedMonoBehaviour
    {
        private static bool applicationQuit = false;

        private static T _instance;
        public static T instance
        {
            get
            {
                if ( !applicationQuit )
                {
                    if ( _instance == null )
                    {
                        var type = typeof( T );
                        var typeName = type.ToString();
                        var name = typeName.Split( '.' ).Last();

                        var instances = (T[])FindObjectsOfType( type );
                        if ( instances.Length > 0 )
                        {
                            if ( instances.Length > 1 )
                            {
                                Debug.Log( "More than one instance of '" + typeName + "' found in the Scene. Returning first instance." );
                            }
                            _instance = instances[ 0 ];
                        }
                        else
                        {
                            // Try and see if there is a prefab with the same name to create instance from
                            var prefab = (GameObject)Resources.Load( name );
                            if ( prefab != null )
                            {
                                var instantiated = (GameObject)Instantiate( prefab );
                                _instance = instantiated.GetComponent<T>();
                                if ( _instance == null )
                                {
                                    Debug.Log( "Instanced prefab didn't contain a component for '" + typeName + "'" );
                                    Destroy( instantiated );
                                }
                            }
                            else
                            {
                                Debug.Log( "Could not find resource for '" + typeName + "'" );
                            }

                            if ( _instance == null )
                            {
                                _instance = new GameObject().AddComponent<T>();
                            }

                            _instance.gameObject.name = name;
                        }
                    }
                }

                return _instance;
            }
        }

        /*
        protected override void Awake()
        {
            base.Awake();

            DontDestroyOnLoad( this );
        }
        */

        protected void OnApplicationQuit()
        {
            applicationQuit = true;
        }

        protected void OnDestroy()
        {
            _instance = null;
        }
    }
}