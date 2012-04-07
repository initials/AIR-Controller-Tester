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

		//buttons in the menu
		private var aboutButton:FlxButton;

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
			
			controllerOutput = new FlxText(0, 100, FlxG.width, "");
			controllerOutput.alignment = "left";
			controllerOutput.size = 12;
			add(controllerOutput);

			aboutButton = new FlxButton(FlxG.width - 200, 400, "Brett Chalupa", onBrett);
			aboutButton.color = 0xffffffff;
			aboutButton.label.color = 0x000000;
			aboutButton.scale = new FlxPoint(2, 2);
			add(aboutButton);

			FlxG.mouse.show();
        }
		
		override public function update():void
		{
			controllerOutput.text = "";
			joystick.JoyQuery();
			controllersConntected.text = "Controllers connected: " + joystick.getTotal().toString();
			
			/*controllerOutput.text += "Btn 0: " + joystick.buttonIsDown(0, 0) + "   ";*/
			
			for(var i:int = 0; i < joystick.getTotal(); i++)
			{
				var i2:int;
				controllerOutput.text += "Joystick " + i + ":\n\t";
				for(i2 = 0; i2 < joystick.getTotalAxes(i); i2++)
				{
					controllerOutput.text += "Axes" + i2 + ": " + joystick.getAxis(i, i2) + "  \n\t";
				}
				controllerOutput.text += "\n\t";
				for(i2 = 0; i2 < joystick.getTotalButtons(i); i2++)
				{
					controllerOutput.text += "Btn" + i2 + ": " + joystick.buttonIsDown(i, i2) + "   ";
				}
				controllerOutput.text += "\n";					
			}
		}

		protected function onBrett():void
		{
			//open home page
		}
    }
}

