using UnityEngine;
using System.Collections;


namespace Steamroller
{
    public class Rotate : MonoBehaviour
    {

        public Vector3 rotationMin;
        public Vector3 rotationMax;
        [Range(0.0f, 360.0f)]
        public float rotSpeedMin;
        [Range(0.0f, 360.0f)]
        public float rotSpeedMax;

        Vector3 randomRotation;
        float rotSpeed;

        // Use this for initialization
        void Start()
        {
            float x, y, z = 0;

            x = Random.Range(rotationMin.x, rotationMax.x);
            y = Random.Range(rotationMin.y, rotationMax.y);
            z = Random.Range(rotationMin.z, rotationMax.z);

            randomRotation = new Vector3(x, y, z);
            rotSpeed = Random.Range(rotSpeedMin, rotSpeedMax);
        }

        // Update is called once per frame
        void Update()
        {
            transform.Rotate(randomRotation, rotSpeed * Time.deltaTime);
        }
    }
    
}