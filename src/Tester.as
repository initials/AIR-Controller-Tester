package  
{
	import flash.display3D.textures.Texture;
	import net.flashpunk.debug.Console;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.World;
	
	import extension.JoyQuery.Joystick;
	
	public class Tester extends World
	{		
		//Create a new Joystick object to interface with the joystick extension.
		private var joy:Joystick = new Joystick();
		
		public function Tester() 
		{
			FP.console.enable();
		}
		
		override public function update():void
		{
			//update the joystick
			joy.JoyQuery();
			
			FP.watch(joy.getTotal());
		}
		
	}

}