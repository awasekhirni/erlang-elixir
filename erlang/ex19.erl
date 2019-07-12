%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%%basic list operations in erlang

-module(ex19).
-compile({no_auto_import,[length/1]}).
-export([append/2, concat/1, filter/2, length/1, map/2, foldl/3, foldr/3,
	 reverse/1]).

append([H|T], _List2) ->
    [H | append(T, _List2)];
append([], _List2) -> _List2.


concat([]) -> [];
concat([H|T]) ->
    append(H,concat(T)).

filter(_, []) -> [];
filter(F, [H|T]) ->
    case F(H) of
	true ->
	    [H | filter(F,T)];
	false ->
	    filter(F,T)
    end.

length([]) -> 0;
length([_|T]) -> 1 + length(T).

map(_, []) -> [];
map(F, [H|T]) ->
    [F(H) | map(F,T)].

foldl(_F, _V, []) -> _V;
foldl(F, V, [H|T]) ->
    foldl(F,F(H,V),T).

foldr(_F, _V, []) -> _V;
foldr(F, V, [H|T]) ->
    F(H, foldr(F, V, T)).

reverse(L) ->
    reverse(L,[]).

reverse([],Acc) -> Acc;
reverse([H|T],Acc) ->
    reverse(T,[H|Acc]).