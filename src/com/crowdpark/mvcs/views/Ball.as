package com.crowdpark.mvcs.views
{
	import flash.display.Sprite;

	/**
	 * @author marcyohannes
	 */
	public class Ball extends Sprite implements IShape
	{
		private var radius : uint = 20;

		public function Ball()
		{
			init();
		}

		private function init() : void
		{
			graphics.clear();
			graphics.beginFill(Math.random() * uint.MAX_VALUE);
			graphics.drawCircle(0, 0, radius);
		}

		public function redraw() : void
		{
			incrementRadius();
			graphics.clear();
			graphics.beginFill(Math.random() * uint.MAX_VALUE);
			graphics.drawCircle(0, 0, radius);
		}

		private function incrementRadius() : void
		{
			radius++;
		}
	}
}
