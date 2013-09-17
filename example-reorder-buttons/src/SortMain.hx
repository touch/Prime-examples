package ;

/**
 * ...
 * @author EzeQL
 */

import prime.gui.core.UIWindow;
import prime.gui.core.UIContainer;
import prime.gui.components.Button;
import prime.gui.components.Label;
	using prime.utils.Bind;

class SortMain extends UIWindow 
{
    private var t:OrderingTest;
	public var button:Button;
	public var uic:UIContainer;

	public static function main () 
	{
		prime.gui.display.Window.startup( function (s) return new SortMain(s) );
	}

	public function new(target:prime.gui.display.Stage, id:String = null)
	{
		super(target, id);
	}

	override public function createChildren()
	{
        t = new OrderingTest();
        attach( t );
        function() { t.change(); } .on(t.userEvents.mouse.click, this);
 	}

}

class OrderingTest extends prime.gui.core.UIContainer
{
    public var buttonA(default, null):Button;
    public var buttonB(default, null):Button;
    public var buttonC(default, null):Button;
    
    override function createChildren()
    {
        buttonA = new Button("a", "A");
        buttonB = new Button("b", "B");
        buttonC = new Button("c", "C");
        
        attach(buttonA);
        attach(buttonB);
        attach(buttonC);
    }
    
    
    public function change()
    {
        var lc = layoutContainer.children;
        var pos = (lc.indexOf(buttonA.layout) + 1) % lc.length;
        buttonA.changeDepth( pos );
    }
    
}
