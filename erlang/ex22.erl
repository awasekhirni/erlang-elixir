%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%% erlang list examples 

-module(ex22).
-compile(export_all). 
% the empty list is a list check
is_list([])->
    true;
is_list([_| T])->
    ex22:is_list(T);

is_list(_)->
    false.

is_list2([])->
    true;
is_list2([_|_])->
    true;
is_list2(_)->
    false.


%% implement for loop construct

for(I, Condition, Increase, Do, Data) ->
    case erlang:apply(Condition, [I]) of
	true ->
	    DataNew = erlang:apply(Do, [I, Data]),
	    INew = erlang:apply(Increase, [I]),
	    for(INew, Condition, Increase, Do, DataNew);
	_ ->
	    Data
    end.



computeFactorial(0)->
    1;

computeFactorial(N)->
    N*computeFactorial(N-1).

%% Compile Demo
%% c(ex22). 
%% I=0,Condition=fun(J)->J<10 end.
%% Increase=fun(J)->J+1 end.
%% Do=fun(J,D)->[J|D] end.
%% Data=[].

%% ex22:for(I,Condition,Increase,Do,Data).

%% ex22:computeFactorial(5)

%% set operation on lists 
%% [1,3,5,7] ++ [2,4,6]
%% [1,3,4,6,7,8,9] --[4,6,8]