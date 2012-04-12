package com.crowdpark.mvcs.commands
{
	import flash.events.Event;

	/**
	 * @author marcyohannes
	 */
	public class BallEvent extends Event
	{
		public static const CREATE_BALL : String = "com.crowdpark.mvcs.commands.BallEvent.CREATE_BALL";
		public static const BALL_ADDED : String = "com.crowdpark.mvcs.commands.BallEvent.BALL_ADDED";

		public function BallEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false)
		{
			super(type, bubbles, cancelable);
		}
	}
}
