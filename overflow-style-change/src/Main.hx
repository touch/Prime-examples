package ;

/**
 * ...
 * @author 
 */

import prime.gui.core.UIWindow;
import prime.gui.core.UIContainer;
import prime.gui.components.Button;
import prime.gui.components.Label;
	using prime.utils.Bind;

class Main extends UIWindow 
{
	public static function main () 
	{
		prime.gui.display.Window.startup( function (s) return new Main(s) );
	}

	public function new(target:prime.gui.display.Stage, id:String = "Main")
	{
		super(target, id);
	}

	override public function createChildren()
	{
		super.createChildren();

		// You need an extra container to get scroll stuff working, as parent mouse events are used.
		// I.E without m container, the UIWindows mouse events would be used which doesnt work.
		var proxy:UIContainer  = new UIContainer("proxy");
		var parent:UIContainer  = new UIContainer("parent");
		var child:UIContainer  = new UIContainer("child");


		parent.attach( child );
		proxy.attach(parent);
		attach( proxy );

		toggleStyles.bind(parent) .on( parent.userEvents.mouse.click, this );

		on = true;
		parent.styleClasses.add( "scrolling" );
	}

	var on : Bool;
	private function toggleStyles( parent:UIContainer )
	{
		on = !on;
		parent.styleClasses.removeAll();

		if ( on )
			parent.styleClasses.add( "scrolling" );
		else
			parent.styleClasses.add( "visible" );
	}
    
}
