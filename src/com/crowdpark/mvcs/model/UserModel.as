package com.crowdpark.mvcs.model
{
	import com.crowdpark.mvcs.views.IShape;

	import org.robotlegs.mvcs.Actor;

	/**
	 * @author marcyohannes
	 */
	public class UserModel extends Actor
	{
		private var _shapeVector : Vector.<IShape>;

		public function UserModel()
		{
			_shapeVector = new Vector.<IShape>;
		}

		public function addShape(shape : IShape) : void
		{
			_shapeVector.push(shape);
		}

		public function get shapeVector() : Vector.<IShape>
		{
			return _shapeVector;
		}

		public function get length() : int
		{
			return _shapeVector.length;
		}
	}
}
