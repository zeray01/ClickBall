package
{
	import com.crowdpark.mvcs.BallContext;

	import flash.display.Sprite;

	public class Main extends Sprite
	{
		protected var _ballContext : BallContext;

		public function Main()
		{
			// Launch your application by right clicking within this class and select: Debug As > FDT SWF Application
			_ballContext = new BallContext(this);
		}
	}
}
