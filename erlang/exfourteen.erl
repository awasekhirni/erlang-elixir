%%one for X, one for me demo
-module(exfourteen).
-export([sharing/0,sharing/1,two_fer/0,two_fer/1]).

sharing()->
    sharing("You").

sharing(Name)->
        io_lib:format("One for ~s, one for me.", [Name]).


%%using lists 
two_fer()->two_fer("you").

two_fer(_Name) -> lists:flatten(["One for ", _Name, ", one for me."]).

%%execution 
%% c(exfourteen).
%% exfourteen:sharing(). 
%%exfourteen:two_fer("Syed").