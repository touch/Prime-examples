package ;

import prime.fsm.SimpleStateMachine;

/**
 * ...
 * @author EzeQL
 */

enum State
{
    idle;
    walking;
    running;
}

class Main 
{
    private var simpleState:SimpleStateMachine<State>;
    private var doIdle:Void->Void;
    private var doWalk:Void->Void;
    private var doRun:Void->Void;
	
	static function main() 
	{
        new Main();
	}
    
    public function new()
    {
        simpleState = new SimpleStateMachine(idle);
        simpleState.change.bind(this, stateChanged);
        
        doIdle      = simpleState.changeTo(idle);
        doWalk      = simpleState.changeTo(walking);
        doRun       = simpleState.changeTo(running);
        
        doWalk();
        doRun();
        doIdle();
        doWalk();
        doIdle();
        doRun();
    }
    
    private function stateChanged(newState, oldState)
    {
        switch([newState, oldState])
        {
            case [walking, running]:                        trace("one mile more!!!! go!!");
            case [running, walking]:                        trace("speed up!");
            
            case [running, _]:                              trace("run forest run");
            case [_, running]:                              trace("tired");

            case [walking, _]:                              trace("nice! walking");
            case [idle, _]:                                 trace("lazyyy!");
            
        }
    }
}