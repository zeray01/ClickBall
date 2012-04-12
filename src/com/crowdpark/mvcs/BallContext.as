package com.crowdpark.mvcs
{
	import com.crowdpark.mvcs.commands.BallEvent;
	import com.crowdpark.mvcs.commands.CreateBallCommand;
	import com.crowdpark.mvcs.commands.StartUpCommand;
	import com.crowdpark.mvcs.mediator.BallMediator;
	import com.crowdpark.mvcs.mediator.ReadOutMediator;
	import com.crowdpark.mvcs.model.UserModel;
	import com.crowdpark.mvcs.views.Ball;
	import com.crowdpark.mvcs.views.ReadOut;

	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;

	import flash.display.DisplayObjectContainer;

	/**
	 * @author marcyohannes
	 */
	public class BallContext extends Context
	{
		public function BallContext(contextView : DisplayObjectContainer = null, autoStartup : Boolean = true)
		{
			super(contextView, autoStartup);
		}

		override public function startup() : void
		{
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartUpCommand);
			commandMap.mapEvent(BallEvent.CREATE_BALL, CreateBallCommand);

			injector.mapSingleton(UserModel);

			mediatorMap.mapView(Ball, BallMediator);
			mediatorMap.mapView(ReadOut, ReadOutMediator);

			super.startup();
		}
	}
}
