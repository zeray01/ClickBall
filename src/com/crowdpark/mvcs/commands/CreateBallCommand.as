package com.crowdpark.mvcs.commands
{
	import com.crowdpark.mvcs.model.UserModel;
	import com.crowdpark.mvcs.views.Ball;
	import com.crowdpark.mvcs.views.IShape;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author marcyohannes
	 */
	public class CreateBallCommand extends Command
	{
		[Inject]
		public var userModel : UserModel;

		override public function execute() : void
		{
			if (userModel.length > 0)
			{
				var shapeVector : Vector.<IShape> = userModel.shapeVector;

				for (var i : uint = 0;i < userModel.length; i++)
				{
					(shapeVector[i] as IShape).redraw();
				}
			}

			var ball : Ball = new Ball();
			ball.x = Math.random() * 450;
			ball.y = Math.random() * 370;
			contextView.addChild(ball);

			userModel.addShape(ball);
			dispatch(new BallEvent(BallEvent.BALL_ADDED));
		}
	}
}
