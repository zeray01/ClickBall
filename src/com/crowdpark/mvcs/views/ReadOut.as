package com.crowdpark.mvcs.views
{
	import flash.display.Sprite;
	import flash.text.TextField;

	/**
	 * @author marcyohannes
	 */
	public class ReadOut extends Sprite
	{
		private var _readOutTextField : TextField;

		public function ReadOut()
		{
			init();
		}

		private function init() : void
		{
			_readOutTextField = new TextField();
			_readOutTextField.text = "0";
			_readOutTextField.x = 100;
			addChild(_readOutTextField);
		}

		public function set text(aText : String) : void
		{
			_readOutTextField.text = aText;
		}
	}
}
