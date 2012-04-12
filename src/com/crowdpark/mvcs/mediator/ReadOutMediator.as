package com.crowdpark.mvcs.mediator
{
	import com.crowdpark.mvcs.commands.BallEvent;
	import com.crowdpark.mvcs.model.UserModel;
	import com.crowdpark.mvcs.views.ReadOut;

	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author marcyohannes
	 */
	public class ReadOutMediator extends Mediator
	{
		[Inject]
		public var readOut : ReadOut;
		[Inject]
		public var userModel : UserModel;

		override public function onRegister() : void
		{
			eventMap.mapListener(eventDispatcher, BallEvent.BALL_ADDED, onShapeAdded);
		}

		private function onShapeAdded(event : BallEvent) : void
		{
			readOut.text = "" + userModel.length;
		}
	}
}
