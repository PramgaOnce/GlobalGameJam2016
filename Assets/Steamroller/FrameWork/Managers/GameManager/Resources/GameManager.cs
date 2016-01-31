using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace Steamroller
{
    

    public class GameManager : SingletonMonoBehaviour<GameManager>
    {
        public int StartNumber;
        public int roundCount;
        private int currentRound;

        List<Oribitable> orbitableList;
        List<Oribitable> simonList;
        private Oribitable currentOrbitable;
        //used for the intial display of the pattern
        public float displayTimer;

        public Color CoreColor;


        public Color DefaultCoreColor;
        

        public UnityEngine.UI.Text Player1Text;
        public UnityEngine.UI.Text Player2Text;
        public UnityEngine.UI.Text WinnerText;

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
        
        public void CompletedRotation(Ship ship,Oribitable orbitable)
        {

            if (PlayerManager.GetPlayer(ship) != PlayerManager.GetCurrentPlayer() && false)
            {
                return;
            }

            if (orbitable != simonList[simonIndex])
            {
                return;
            }
            simonIndex++;
            PlayerManager.GetCurrentPlayer().score += 1;
            if (PlayerManager.GetPlayerNumber() == 0)
            {
                Player1Text.text = PlayerManager.GetCurrentPlayer().score.ToString();
            }
            else
            {
                Player2Text.text = PlayerManager.GetCurrentPlayer().score.ToString();
            }

            if (simonIndex == simonList.Count)
            {
                FinishedSet();
            }


        }
        
        //when we have compelted the current setup we should 
        public void FinishedSet()
        {
            SpeedManager.ResetSpeed();
            //add to the players score
            PlayerManager.GetCurrentPlayer().score += 5;
            if (PlayerManager.GetPlayerNumber() == 0 )
            {
                Player1Text.text = PlayerManager.GetCurrentPlayer().score.ToString();
            }
            else
            {
                Player2Text.text = PlayerManager.GetCurrentPlayer().score.ToString();
            }
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

            RoundEnded();

        }
        
        IEnumerator DisplayOnStart()
        {
            DespawnPlayers();

            int _index = 0;

             foreach (var _orbitable in simonList)
	        {
                if (_index != 0)
                {
                    simonList[_index - 1].SetCoreColor(DefaultCoreColor);
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

             SpawnPlayers();
        }

        public void DespawnPlayers()
        {
            GameObject[] players = GameObject.FindGameObjectsWithTag("Player");

            foreach (var item in players)
            {
                item.SetActive(false);
            }
        }

        public void SpawnPlayers()
        {
            GameObject[] players = GameObject.FindGameObjectsWithTag("Player");

            foreach (var item in players)
            {
                item.SetActive(true);
            }
        }


        public  void PlayerDied(Player player)
        {
            if (player == PlayerManager.GetCurrentPlayer())
            {
                RoundEnded();
            }
        }

        public void RoundEnded()
        {
            currentRound++;
            if (roundCount + roundCount < currentRound)
            {
                GameOver();   
            }
            Respawn();
        }

        public void GameOver()
        {
            DespawnPlayers();
            WinnerText.gameObject.SetActive(true);

        }


        public void Respawn()
        {
            DespawnPlayers();
            StartCoroutine(DisplayOnStart());
            foreach (var item in PlayerManager.instance.players)
            {
                //respawn the player
            }
        }
    } 
}
