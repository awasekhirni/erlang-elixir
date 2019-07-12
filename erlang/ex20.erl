%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%% functions -pattern matching - Erlang

-module(ex20).
-compile(export_all).


%%Pattern Matching -Multiple clauses of the function can be defined utilizing the pattern matching
month(1)->january;
month(2)->february;
month(3)->march;
month(4)->april;
month(5)->may;
month(6)->june;
month(7)->july;
month(8)->august;
month(9)->september;
month(10)->october;
month(11)->november;
month(12)->december;
%%month not defined
month(_)->unknown.


%%is empty check 
is_empty([])->
    true;
is_empty([_ | _])->
    false;
is_empty(_)->
    {error,not_a_list}.


%% duplicate the head element
dupl_head([])->
    [];
dupl_head(List=[Head|_Tail])->
    [Head|List]. 


%%Gaurds or constraints
%% function(arg1,arg2,..) when guard_expression -> 
%%    function_body;

abs(N) when is_integer(N), N<0->
    -N;

abs(N) when is_integer(N)-> 
    N.

abs(N) when (is_integer(N)) and (N>=0)->
    N.

is_number(N) when is_integer(N); is_float(N)->
    true;

is_number(N) when not(is_integer(N) or is_float(N))-> false;


%%%execution 
%% c(ex20).
%% ex20:month(12).
%% ex20:month(31).
%% ex20:is_empty([]).
%% ex20:is_empty([1,2,3]).

%% duplicate the head 

%% ex20:dupl_head([11,22,33,44]).












