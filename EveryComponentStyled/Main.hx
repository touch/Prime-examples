package ;

import prime.gui.core.UIWindow;
import prime.gui.core.UIContainer;
import prime.gui.components.Button;
import prime.gui.components.Label;
	using prime.utils.Bind;

class Main extends UIWindow 
{
	public var button:Button;
	public var uic:UIContainer;
	
	public static function main () 
	{
		prime.gui.display.Window.startup( function (s) return new Main(s) );
	}

	public function new(target:prime.gui.display.Stage, id:String = null)
	{
		super(target, id);
	}
	
	override public function createChildren()
	{
		uic = new UIContainer("TestContainer");
		
		//uic.attach( new Button("ButtonLabelSkin", "ButtonLabelSkin" ) );
		//uic.attach( new Button("ButtonIconSkin", "ButtonIconSkin" ) );
	
		attach( uic );
		debug.on( uic.userEvents.mouse.click, this );
		
		
	}
	
	public function debug()
	{
		uic.attach( new Button("ButtonLabelSkin", "ButtonLabelSkin" ) );
	}
}