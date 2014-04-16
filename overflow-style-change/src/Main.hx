package ;

/**
 * ...
 * @author AndrewP
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

	public function new(target:prime.gui.display.Stage, id:String = null)
	{
		super(target, id);
	}

	override public function createChildren()
	{
		super.createChildren();

		// You need an extra container to get scroll stuff working, as parent mouse events are used.
		// I.E without m container, the UIWindows mouse events would be used which doesnt work.
		var m:UIContainer  = new UIContainer("parent");
		var parent:UIContainer  = new UIContainer("parent");
		var child:UIContainer  = new UIContainer("child");


		parent.attach( child );
		//m.attach(parent);
		attach( parent );

		toggleStyles.bind(child) .on( child.userEvents.mouse.click, this );
		on = true;
		toggleStyles(parent);
	}

	var on : Bool;
	private function toggleStyles( parent:UIContainer )
	{
		on = !on;
		//parent.styleClasses.remove( "zoomed" );
		//parent.styleClasses.remove( "unzoomed" );
		parent.styleClasses.removeAll();
		if ( on )
			parent.styleClasses.add( "zoomed ");
		else
			parent.styleClasses.add("unzoomed");
		for( s in parent.styleClasses )
		trace(s);
	}
    
}
