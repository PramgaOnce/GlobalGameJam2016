using UnityEngine;
using System.Collections;
using Rewired;

public class TouchInput : MonoBehaviour
{
    public int playerId = 0;
    private Player player;

    public Rect rect;
    public TouchButton button;

    public static string controllerTag = "Touch";
    private CustomController controller;

    private Camera camera;

    private Touch touch;
    private Vector2 viewportPoint;
    private bool buttonValue;

    public void Awake()
    {
        Initialize();
    }

    public void Initialize()
    {
        Debug.Log("InputManager.Initialize()");

        player = ReInput.players.GetPlayer( playerId );

        controller = player.controllers.GetControllerWithTag<CustomController>( controllerTag );
        if ( controller == null )
        {
            Debug.LogError( "No controller found with tag: " + controllerTag );
            return;
        }

        ReInput.InputSourceUpdateEvent += OnInputSourceUpdate;
    }

    private void OnInputSourceUpdate()
    {
        //Debug.Log( "InputManager.OnInputSourceUpdate()" );
        for( var _index = 0; _index < ReInput.touch.touchCount; _index++ )
        {
            // Get the Touch
            touch = ReInput.touch.GetTouch( _index );

            // Translate touch positoin(pixels) to screen position(0, 1)
            viewportPoint = camera.ScreenToViewportPoint( touch.position );

            // See if the rect contains the point
            if ( rect.Contains( viewportPoint ) )
            {
                // Set the value on the controller
                controller.SetButtonValue( (int)button, true );

                Debug.Log( "Touched: " + button );
                return;
            }
        }

        // If the mouse is down then process the mouse
        if ( ReInput.controllers.Mouse.GetButtonDown( 0 ) )
        {
            viewportPoint = ReInput.controllers.Mouse.screenPosition;

            // See if the rect contains the point
            if ( rect.Contains( viewportPoint ) )
            {
                // Set the value on the controller
                controller.SetButtonValue( (int)button, true );

                Debug.Log( "Touched: " + button );
                return;
            }
        }
        
        controller.SetButtonValue( (int)button, false );
    }

    private void OnGui()
    {

    }
}
