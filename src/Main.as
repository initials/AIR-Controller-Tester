package 
{
	import org.flixel.*;
	[SWF(width = "800", height = "600", backgroundColor = "#000000")]

	public class Main extends FlxGame
	{

		public function Main():void
		{
			super(800, 600, TesterState, 1, 60, 60);
			forceDebugger = true;
		}

	}

}