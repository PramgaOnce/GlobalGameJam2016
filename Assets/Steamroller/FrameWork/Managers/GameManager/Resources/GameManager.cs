using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace Steamroller
{
    

    public class GameManager : SingletonMonoBehaviour<GameManager>
    {
        public int StartNumber;
       

        List<Oribitable> orbitableList;
        List<Oribitable> simonList;
        private Oribitable currentOrbitable;
        //used for the intial display of the pattern
        public float displayTimer;

        public Color displayColor1;
        public Color displayColor2;
        public float pulseValue;


        public Color DefaultColor1;
        public Color DefaultColor2;
        

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

            //for 3 of them 
            for (int orbit_Index = 0; orbit_Index < StartNumber; orbit_Index++)
            {
                //if this is the first try
                if (_lastOrbit == null)
                {
                     Oribitable toAdd  = orbitableList[Random.Range(0, orbitableList.Count)];
                    _lastOrbit = toAdd;
                    simonList.Add(toAdd);
                    continue;
                }

                Oribitable _toAdd;

                //while your rand is returning the same as the last one find the next one
                do
                {
                  _toAdd =  orbitableList[Random.Range(0, orbitableList.Count)]; 
                } while (_toAdd == _lastOrbit);

                simonList.Add(_toAdd);
                _lastOrbit = _toAdd;
    
            }
            currentOrbitable = simonList[0];

            StartCoroutine(DisplayOnStart());

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
        
        public void CompletedRotation()
        {

        }
        
        //when we have compelted the current setup we should 
        public void FinishedSet()
        {
            Oribitable _toAdd;

            //while your rand is returning the same as the last one find the next one
            do
            {
                _toAdd = orbitableList[Random.Range(0, orbitableList.Count)];
               
                //make sure we dont put two of the same in a row
            } while (_toAdd == simonList[simonList.Count - 1 ]);

            simonList.Add(_toAdd);
           
        }
        
        IEnumerator DisplayOnStart()
        {
            GameObject[] players = GameObject.FindGameObjectsWithTag("Player");

            foreach (var item in players)
            {
                item.SetActive(false);
            }

            int _index = 0;

             foreach (var _orbitable in simonList)
	        {
                if (_index != 0)
                {
                    MeshRenderer[] _mr = simonList[_index - 1].GetComponentsInChildren<MeshRenderer>();
                    foreach (var _r in _mr)
                    {
                        _r.material.SetColor("_Color1", DefaultColor1);
                        _r.material.SetColor("_Color2", DefaultColor2);
                        _r.material.SetFloat("_PulseSpeed", 0.0f);
                    }
                }

                 //change The colors on the orbitable
                foreach (var item in _orbitable.GetComponentsInChildren<MeshRenderer>())
                {
                    
                    item.material.SetColor("_Color1",displayColor1);
                    item.material.SetColor("_Color2",displayColor2);
                    item.material.SetFloat("_PulseSpeed", pulseValue);
                    
                }
                _index++;
		        yield return new WaitForSeconds(displayTimer);
	        }

             foreach (var _orbitable in simonList)
             {
                 foreach (var item in _orbitable.GetComponentsInChildren<MeshRenderer>())
                 {
                     item.material.SetColor("_Color1", DefaultColor1);
                     item.material.SetColor("_Color2", DefaultColor2);
                     item.material.SetFloat("_PulseSpeed", 0.0f);
                 }

             }

            //enable the normal running of the game
             foreach (var item in players)
             {

                 item.SetActive(true);
             }
        }

    } 
}
