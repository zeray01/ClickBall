package com.crowdpark.mvcs.mediator
{
	import com.crowdpark.mvcs.commands.BallEvent;
	import com.crowdpark.mvcs.views.Ball;

	import org.robotlegs.mvcs.Mediator;

	import flash.events.MouseEvent;

	/**
	 * @author marcyohannes
	 */
	public class BallMediator extends Mediator
	{
		[Inject]
		public var ball : Ball;

		override public function onRegister() : void
		{
			addViewListener(MouseEvent.CLICK, onBallClicked);
		}

		private function onBallClicked(event : MouseEvent) : void
		{
			dispatch(new BallEvent(BallEvent.CREATE_BALL));
		}
	}
}
