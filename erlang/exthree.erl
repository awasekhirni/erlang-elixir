%conditional flow and looping in erlang
-module(exthree).
-export([loony/0]).

loony()->
    receive
        {FromPID,Who}->
            case Who of 
                savings -> FromPID ! "Allstar Savings";
                checking -> FromPID ! "Checking Account";
                current -> FromPID ! "current Account";
                _-> FromPID ! "Unknown selection"
        end,
    loony()
end.

