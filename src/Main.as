package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;

	public class Main extends Engine
	{

		public function Main():void 
		{
			//init the game
			super(640, 480, 60, true);
		}

		override public function init():void
		{
			FP.world = new Menu();
		}

	}

}