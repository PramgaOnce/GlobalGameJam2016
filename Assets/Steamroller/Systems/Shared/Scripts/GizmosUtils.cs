using UnityEngine;
using System.Collections;

public class GizmosUtils
{
	static bool started;
	
	static Vector3 point;
	static Vector3 startPoint;
	static Vector3 previousPoint;
	static Vector3 currentPoint;
	
	static float x;
	static float y;
	static float angle;
	static float length;
	static float step;
	static int segment;
	
	public static void DrawCircle( Vector3 center, float radius, int steps )
	{	
		angle = 0.0f;
		step = ( 360.0f * Mathf.Deg2Rad ) / steps;
		
		while ( angle < Mathf.PI * 2.0f )
		{
			x = radius * Mathf.Cos( angle );
	        y = radius * Mathf.Sin( angle );
			
			currentPoint.x = x + ( radius * Mathf.Deg2Rad / 2.0f );
			currentPoint.z = 0.0f;
			currentPoint.y = y + ( radius * Mathf.Deg2Rad / 2.0f );
			
			currentPoint += center;
			
			if ( angle == 0.0f )
			{
				startPoint = currentPoint;
			}
			else
			{
				Gizmos.DrawLine( previousPoint, currentPoint );
			}
			
			previousPoint = currentPoint;
			
			angle += step;
		}
		
		Gizmos.DrawLine( previousPoint, startPoint );
	}
	
	public static void DrawSegment( Vector3 center, float radius, float startAngle, float endAngle, int steps )
	{
		DrawArc( center, radius, startAngle, endAngle, steps );
		
		startAngle /= -360.0f;
		endAngle /= -360.0f;
		
		// Rotate the point of 0 rotation 1/4 turn counter-clockwise.
		startAngle += 0.25f;
		endAngle += 0.25f;
		
		// Start line
		point.x = center.x + Mathf.Cos( startAngle * 2.0f * Mathf.PI ) * radius;
		point.y = center.y;
	    point.z = center.z + Mathf.Sin( startAngle * 2.0f * Mathf.PI ) * radius;
		Gizmos.DrawLine( center, point );
		
		// End line
		point.x = center.x + Mathf.Cos( endAngle * 2.0f * Mathf.PI ) * radius;
		point.y = center.y;
	    point.z = center.z + Mathf.Sin( endAngle * 2.0f * Mathf.PI ) * radius;
		Gizmos.DrawLine( center, point );
		
	}
	
	public static void DrawArc( Vector3 center, float radius, float startAngle, float endAngle, int steps )
	{
	    startAngle /= -360.0f;
		endAngle /= -360.0f;
		
		// Rotate the point of 0 rotation 1/4 turn counter-clockwise.
		startAngle += 0.25f;
		endAngle += 0.25f;
		
	    length = ( endAngle - startAngle ) / steps;
	    for ( step = 0; step <= steps; step++ )
		{
	        angle = startAngle + step * length;
			
	        currentPoint.x = center.x + Mathf.Cos( angle * 2.0f * Mathf.PI ) * radius;
			currentPoint.y = center.y;
	        currentPoint.z= center.z + Mathf.Sin( angle * 2.0f * Mathf.PI ) * radius;
			
			if ( step != 0 )
			{
				Gizmos.DrawLine( previousPoint, currentPoint );
			}
			
			previousPoint = currentPoint;
	    }
	}
	
	public static void DrawPoints( Vector3[] points )
	{
		started = false;
		foreach ( Vector3 currentPoint in points )
		{
			if ( started )
			{
				Gizmos.DrawLine( previousPoint, currentPoint );
			}
			else
			{
				started = true;
				startPoint = currentPoint;
			}
			
			previousPoint = currentPoint;
		}
		
		Gizmos.DrawLine( previousPoint, startPoint );
	}
	
	public static void DrawLocator( Vector3 center, float size )
	{
		size *= 0.5f;
		Gizmos.DrawLine( center + ( Vector3.left * size ), center + ( Vector3.right * size ) );
		Gizmos.DrawLine( center + ( Vector3.up * size ), center + ( Vector3.down * size ) );
		Gizmos.DrawLine( center + ( Vector3.forward * size ), center + ( Vector3.back * size ) );
	}
}
