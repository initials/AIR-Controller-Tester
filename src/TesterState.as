package
{
	import org.flixel.*
	import extension.JoyQuery.Joystick;
	
	public class TesterState extends FlxState
    {
		//text displayed
		private var title:FlxText;
		private var controllersConntected:FlxText;
		private var controllerOutput:FlxText;

		//Create a new Joystick object to interface with the joystick extension.
		private var joystick:Joystick = new Joystick();
		
        override public function create():void
        {
			FlxG.bgColor = 0xFF000000;

			title = new FlxText(10, 10, FlxG.width, "Controller Tester");
			title.alignment = "center";
			title.size = 16;
			add(title);
			
			controllersConntected = new FlxText(10, 50, FlxG.width, "");
			controllersConntected.alignment = "left";
			controllersConntected.size = 12;
			add(controllersConntected);
			
			controllerOutput = new FlxText(10, 100, FlxG.width, "");
			controllerOutput.alignment = "left";
			controllerOutput.size = 12;
			add(controllerOutput);

			FlxG.mouse.show();
        }
		
		override public function update():void
		{
			joystick.JoyQuery();
			controllersConntected.text = "Controllers connected: " + joystick.getTotal().toString();
			
			var text:String = "";
			
			for(var i:int = 0; i < joystick.getTotal(); i++)
			{
				var i2:int;
				text += "Joystick " + i + ":\n\t";
				for(i2 = 0; i2 < joystick.getTotalAxes(i); i2++)
				{
					text += "Axes" + i2 + ": " + joystick.getAxis(i, i2) + "\n\t";
				}
				controllerOutput.text += "\n\t";
				for(i2 = 0; i2 < joystick.getTotalButtons(i); i2++)
				{
					text += "Button" + i2 + ": " + joystick.buttonIsDown(i, i2) + "\n\t";
				}
				text += "\n";					
			}
			
			controllerOutput.text = text;
		}
    }
}

