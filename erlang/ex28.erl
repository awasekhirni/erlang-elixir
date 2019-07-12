%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission

%% functions example 

-module(ex28).
-compile(export_all).
%% functions are defined by using the fun .... end keywords 




%% A function can have multiple clauses.
%% Pattern matching on the heads of the clauses is performed in the same way as functions 

optionFunction(A1,B1)->
    F=fun(key1,L)->io:fwrite("key1---A1:~p~n",[L]),gotkey1;
          (key2,G)->io:fwrite("key2---B1:~p~n",[G]),gotkey2
        end,
    Reply=F(A1,B1),
    Reply.

%% Named function fun definition can provide a name.
%% enabling us to call the fun recursively.

named_function(Data)->
    F=fun Miles([],Accum)->Accum;
            Miles([Item|Moredata],Accum)->
                Miles(Moredata,Accum+Item)
        end,
    Result=F(Data,0),
    Result.


%% Annonymous functions, a function without a name. 

anony()->
    Fn=fun() ->
    io:fwrite("Annonymous Function: In Ghounghat or Burkha") end,
    Fn().

%% functions with multiple arguments for each function definition 

compute_multiplication(I,J)->
    R=I*J,
    io:fwrite("~w~n",[R]).

compute_multiplication(I,J,K)->
    Z=I*J*K,
    io:fwrite("~w~n",[Z]).


%% functions with guard sequences 

compute_addition(X2,Y2) when X2>8->
    M=X2+Y2,
    io:fwrite("~w~n",[M]).

%% higher order functions 
%% functions that accept other functions as arguments.
%% they are native and natural part of the language 
% simple higher order function example
 
%Compute_velocity = fun(Distance) -> math:sqrt(2 * 9.8 * Distance) end.

sixteenX(Value,Function)->16*Function(Value).

%% Compile 
%% OtherFunction=fun(Value)->20*Value end.
%% ex28:sixteenX(4,OtherFunction).







    
%% compile demo 
%% c(ex28).
%% ex28:optionFunction(key1,74535).
%% ex28:named_function([44,33,22,11]).
%% ex28:compute_multiplication(12,13).
%% ex28:compute_multiplication(12,13,14).
%% ex28:compute_addition(12,24).