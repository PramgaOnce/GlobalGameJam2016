﻿using UnityEngine;
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

        public Color CoreColor;


        public Color DefaultCoreColor;
        

        public UnityEngine.UI.Text Player1Text;
        public UnityEngine.UI.Text Player2Text;

        int simonIndex = 0;

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
        
        public void CompletedRotation(Player player,Oribitable orbitable)
        {
            
            if (player != PlayerManager.GetCurrentPlayer())
            {
                return;
            }

            if (orbitable != simonList[simonIndex])
            {
                return;
            }
            simonIndex++;
            PlayerManager.GetCurrentPlayer().score += 1;

            if (simonIndex == simonList.Count)
            {
                FinishedSet();
            }


        }
        
        //when we have compelted the current setup we should 
        public void FinishedSet()
        {
            //add to the players score
            PlayerManager.GetCurrentPlayer().score += 5;
            //tell the next player it is there turn
            PlayerManager.SetNextPlayer();
            simonIndex = 0;

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
                    _orbitable.SetCoreColor(CoreColor);
                }

                 //change The colors on the orbitable
                _orbitable.SetCoreColor(CoreColor);
                _index++;
		        yield return new WaitForSeconds(displayTimer);
	        }

             foreach (var _orbitable in simonList)
             {
                 _orbitable.SetCoreColor(DefaultCoreColor);
             }

            //enable the normal running of the game
             foreach (var item in players)
             {

                 item.SetActive(true);
             }
        }

        public void DespawnPlayers()
        {

        }

        public void SpawnPlayers()
        {

        }

    } 
}