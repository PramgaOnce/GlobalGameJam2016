using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace Steamroller
{
    public class GameManager : SingletonMonoBehaviour<GameManager>
    {
        public float StartNumber;

        List<Oribitable> orbitableList;
        List<Oribitable> simonList;

        protected override void Awake()
        {
            base.Awake();
            orbitableList = new List<Oribitable>();
            simonList = new List<Oribitable>();

        }

        protected override void Start()
        {
            base.Start();

            foreach (var _orbitable in GameObject.FindGameObjectsWithTag("Interactable"))
            {
                orbitableList.Add(_orbitable.GetComponent<Oribitable>());
            }

            Oribitable _lastOrbit = null;
            for (int orbit_Index = 0; orbit_Index < 3; orbit_Index++)
            {
                if (_lastOrbit)
                {
                    
                }
            }

        }
        protected override void OnEnable()
        {
            base.OnEnable();
        }
        protected override void OnDisable()
        {
            base.OnDisable();
        }
        protected override void Update()
        {
            base.Update();
        }
        protected override void LateUpdate()
        {
            base.LateUpdate();
        }
        
    } 
}
