package com.crowdpark.mvcs.commands
{
	import com.crowdpark.mvcs.views.ReadOut;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author marcyohannes
	 */
	public class StartUpCommand extends Command
	{
		override public function execute() : void
		{
			contextView.addChild(new ReadOut());
			dispatch(new BallEvent(BallEvent.CREATE_BALL));
		}
	}
}
