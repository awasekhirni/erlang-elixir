%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission


%% maps demo

%% maps are a set of key to value associations.
%% they are also known as dictionaries or associative arrays.


-module(ex27).
-compile(export_all).

printfn(String,Value)->
    io:format("~p=~p~n",[String,Value]).


mapFeatures()->
    M1=#{name=>"Syed Awase", age=>38},
    printfn("Map",M1),
    printfn("Name", maps:get(name, M1)),
    printfn("Degree",maps:get(degree,M1,defaultdegree)),
    Keyname = randomkey,
    case maps:find(Keyname, M1) of
        {ok, Value} ->
            printfn("Found value", Value);
        error ->
            printfn("No value found for key", Keyname)
    end,
    ok.

%% using the "maps" module and its functions

mapComprehension()->
        M1=#{name=>"Syed Awase", age=>38},
        %% determining the size of the map
        io:fwrite("~w",[map_size(M1)]),
        %% from_list => to generate a map from list
        Likert_Scale=[{"Strongly Disagree",1},{"Disagree",2},{"Neutral",3},{"Agree",4},{"Strongly Agree",5}],
        io:fwrite("~p~n",[maps:from_list(Likert_Scale)]),
        Likert_Map=maps:from_list(Likert_Scale),
        io:fwrite("~p~n",[maps:find("Neutral",Likert_Map)]),
        %% to find a particular key exists in the map 
        io:fwrite("~p~n",[maps:is_key("Strongly Agree",Likert_Map)]),
        %% to get the value of a particular key in the map 
        io:fwrite("~p~n",[maps:get("Agree",Likert_Map)]),
        %% to determine if a particular key is defined as a key in the map
        %% to return all the keys from a map
        io:fwrite("~p~n",[maps:keys(Likert_Map)]),
        
        %% add a key value pair to the map
        L3=[{"A",9},{"B",8},{"C",7}],
        M3=maps:from_list(L3),
        io:fwrite("~p~n",[maps:put("D",6,M3)]),
        %% fetch all the values from a map
        io:fwrite("~p~n",[maps:values(M3)]),
        %% remove a key value from the map 
        io:fwrite("~p~n",[maps:remove("D",M3)]).
        
       
    
 %% merge 2 maps

startMerger() ->
    Lst1=[{"a",1},{"b",2},{"c",3}], 
    Lst2=[{"d",4},{"e",5},{"f",6}], 
    Map1 = maps:from_list(Lst1), 
    Map2 = maps:from_list(Lst2), 
    io:fwrite("~p~n",[maps:merge(Map1,Map2)]).
        







