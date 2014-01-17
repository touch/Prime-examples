package ;

import flash.Lib;
import haxe.unit.TestCase;
import prime.gui.core.UIWindow;
import prime.gui.core.UIContainer;
import prime.gui.components.Button;
import prime.gui.components.Label;
import prime.gui.display.BitmapData;
import prime.types.Asset.BitmapAsset;
	using prime.utils.Bind;

class Main extends UIWindow 
{
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
		// If embedding the CSS/UI inspector (prime-perceptor) you need to call the super method
		super.createChildren();
	
		attach( new Button("URIIcon", "URI Icon A" ) );
		attach( new Button("URIIcon", "URI Icon AA" ) ); 
		attach( new Button("ClassIconA", "Class Icon" ) );
		attach( new Button("ClassIconB", "Class Icon" ) );
	}
}