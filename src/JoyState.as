/*
 * Copyright (c) 2009 Initials Video Games
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */ 
 
 /*
 * JoyState.as
 * Created On: 4/05/2012 9:38 PM
 */
 
package 
{
	import mx.core.FlexTextField;
	import org.flixel.*;

	public class JoyState extends FlxState
	{
		public var info:FlxText;
		public var info1:FlxText;
		public var info2:FlxText;
		public var info3:FlxText;
		public var info4:FlxText;
		public var info5:FlxText;
		public var info6:FlxText;
		public var info7:FlxText;
		public var info8:FlxText;
		public var info9:FlxText;
		public var info10:FlxText;
		public var info11:FlxText;
		public var info12:FlxText;
		public var info13:FlxText;
		public var info14:FlxText;
		public var info15:FlxText;
		public var info16:FlxText;
		public var info17:FlxText;
		
		override public function create():void
		{
			FlxG.bgColor = 0xff000000;
			
			info = new FlxText(10, 50, FlxG.width, "");
			info.alignment = "left";
			info.size = 12;
			add(info);
			
			info1 = new FlxText(FlxG.width/2, 70, FlxG.width, "");
			info1.alignment = "left";
			info1.size = 12;
			add(info1);
			
			info2 = new FlxText(FlxG.width/2, 130, FlxG.width, "");
			info2.alignment = "left";
			info2.size = 12;
			add(info2);
			
			info3 = new FlxText(FlxG.width/2, 180, FlxG.width, "");
			info3.alignment = "left";
			info3.size = 12;
			add(info3);			
			
			info4 = new FlxText(10, 130, FlxG.width/2, "");
			info4.alignment = "center";
			info4.size = 12;
			add(info4);
			
			info5 = new FlxText(10, 150, FlxG.width/2, "");
			info5.alignment = "center";
			info5.size = 12;
			add(info5);	
			
			info6 = new FlxText(10, 170, FlxG.width/2, "");
			info6.alignment = "center";
			info6.size = 12;
			add(info6);			
			
			info7 = new FlxText(10, 190, FlxG.width/2, "");
			info7.alignment = "center";
			info7.size = 12;
			add(info7);				
			
			info8 = new FlxText(10, 210, FlxG.width/2, "");
			info8.alignment = "center";
			info8.size = 12;
			add(info8);			
			
			info9 = new FlxText(10, 230, FlxG.width/2, "");
			info9.alignment = "center";
			info9.size = 12;
			add(info9);
			
			info10 = new FlxText(10, 250, FlxG.width/2, "");
			info10.alignment = "center";
			info10.size = 12;
			add(info10);
			
			info11 = new FlxText(10, 270, FlxG.width/2, "");
			info11.alignment = "center";
			info11.size = 12;
			add(info11);
			
			info12 = new FlxText(10, 290, FlxG.width/2, "");
			info12.alignment = "center";
			info12.size = 12;
			add(info12);
			
			info13 = new FlxText(10, 310, FlxG.width/2, "");
			info13.alignment = "center";
			info13.size = 12;
			add(info13);				
			
			
			
			
			
			
			
			
		}

		override public function update():void
		{
			info.text = "Joystick _1_ details. Numbers rounded off."   ;
			info1.text = "Stick 1 X Axis: " + Math.round(FlxG.joystick.j1Stick1X*100)/100 + "\nStick 1 Y Axis: " + Math.round(FlxG.joystick.j1Stick1Y*100)/100 + "\nStick 1 Angle: " + FlxG.joystick.j1Stick1Angle;
			info2.text = "Stick 2 X Axis: " + Math.round(FlxG.joystick.j1Stick2X*100)/100 +  "\nStick 2 Y Axis: " + Math.round(FlxG.joystick.j1Stick2Y*100)/100 + "\nStick 2 Angle: " + FlxG.joystick.j1Stick2Angle;
			info3.text = "Trigger: " + FlxG.joystick.j1Trigger;
			
			info4.text = "Button A: " + FlxG.joystick.j1ButtonAPressed;
			info5.text = "Button B: " + FlxG.joystick.j1ButtonBPressed;
			info6.text = "Button X: " + FlxG.joystick.j1ButtonXPressed;
			info7.text = "Button Y: " + FlxG.joystick.j1ButtonYPressed;
			
			info8.text = "Button LB: " + FlxG.joystick.j1ButtonLBPressed;
			info9.text = "Button RB: " + FlxG.joystick.j1ButtonRBPressed;
			info10.text = "Button Back: " + FlxG.joystick.j1ButtonBackPressed;
			info11.text = "Button Start: " + FlxG.joystick.j1ButtonStartPressed;
			
			info12.text = "Button Left Stick Click: " + FlxG.joystick.j1ButtonLeftStickClickPressed;
			info13.text = "Button Right Stick Click: " + FlxG.joystick.j1ButtonRightStickClickPressed;
			
			if (FlxG.joystick.j1ButtonAJustPressed) {
				info4.scale.x = 2;
			}
			if (FlxG.joystick.j1ButtonBJustPressed) {
				info5.scale.x = 2;
			}			
			
			if (FlxG.joystick.j1ButtonXJustPressed) {
				info6.scale.x = 2;
			}
			if (FlxG.joystick.j1ButtonYJustPressed) {
				info7.scale.x = 2;
			}				
			
			if (FlxG.joystick.j1ButtonLBJustPressed) {
				info8.scale.x = 2;
			}
			if (FlxG.joystick.j1ButtonRBJustPressed) {
				info9.scale.x = 2;
			}			
			
			if (FlxG.joystick.j1ButtonBackJustPressed) {
				info10.scale.x = 2;
			}
			if (FlxG.joystick.j1ButtonStartJustPressed) {
				info11.scale.x = 2;
			}			
			if (FlxG.joystick.j1ButtonLeftStickClickJustPressed) {
				info12.scale.x = 2;
			}
			if (FlxG.joystick.j1ButtonRightStickClickJustPressed) {
				info13.scale.x = 2;
			}			
			
			scale(info4);
			scale(info5);
			scale(info6);
			scale(info7);
			scale(info8);
			scale(info9);
			scale(info10);
			scale(info11);
			scale(info12);
			scale(info13);
			
			
			super.update();

		}
		
		protected function scale(Text:FlxText) {
			if (Text.scale.x > 1) {
				Text.scale.x -= 0.1;
			}
		}
	}
}