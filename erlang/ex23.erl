%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission

%% list OPERATIONS 

-module(ex23).
-compile(export_all).

bm(Fun, Args) ->
    % the ?MODULE can be used instead of the
    % name of the module
    timer:tc(?MODULE, Fun, Args).

% not tail recursive
length([]) ->
    0;
length([_ | T]) ->
    1 + mlists:length(T).
 
% tail recursive
length_tr(List) ->
    length_tr(List, 0).
 
length_tr([], Length) ->
    Length;
length_tr([_ | T], Length) ->
    length_tr(T, Length + 1).

% non tail recursive
reverse([]) ->
    [];
reverse([H | T]) ->
    reverse(T) ++ [H].
 
% tail recursive
% create an extra help function that will include
% the accumulator as an extra argument
reverse_tr(List) ->
    % initialize the accumulator to the proper value
    reverse_tr(List, []).
 
% the help function
% when finished, return the Accumulator
reverse_tr([], Acc) ->
    Acc;
reverse_tr([H | T], Acc) ->
    reverse_tr(T, [H | Acc]).

% non tail recursive
seq(L, H) when L > H ->
    [];
seq(L, H) ->
    [L | seq(L + 1, H)].
 
% tail recursive
seq_tr(L, H) ->
    seq_tr(L, H, []).
 
seq_tr(L, H, Accumulator) when L > H ->
    Accumulator;
seq_tr(L, H, Accumulator) ->
    seq_tr(L, H - 1, [H | Accumulator]).

%%appending two lists 
append([], List) ->
    List;
append([H | T], List) ->
    [H | append(T, List)].

%%check if all items belong to the list 
all(_, []) ->
    true;
all(Pred, [H | T]) ->
    case Pred(H) of
	true ->
	    all(Pred, T);
	_ ->
	    false
    end.

%%delete element from the list 
delete(_, []) ->
    [];
delete(Elem, [Elem | T]) ->
    T;
delete(Elem, [_Elem | T]) ->
    delete(Elem, T).


%%flatten a list 
flatten([]) ->
    [];
flatten([[H | T] | TT]) ->
    flatten([H | T ++ TT]);
flatten([[] | T]) ->
    flatten(T);
flatten([H | T]) ->
    [H | flatten(T)].

%%sorting a list merge sort 
merge([], []) ->
    [];
merge(List, []) ->
    List;
merge([], List) ->
    List;
merge([H1 | T1], L2 = [H2 | _]) when H1 < H2 ->
    [H1 | merge(T1, L2)];
merge(L1, [H2 | T2]) ->
    [H2 | merge(L1, T2)].

split(N, List) ->
    split(N, List, []).
 
split(0, List, List2) ->
    {reverse_tr(List2), List};
split(N, [H | T], List2) ->
    split(N - 1, T, [H | List2]).

mergesort([]) ->
    [];
mergesort([I]) ->
    [I];
mergesort(List) ->
    Middle = length_tr(List) div 2,
    {L1, L2} = split(Middle, List),
    merge(mergesort(L1), mergesort(L2)).


%%Quicksort 

split_pivot([]) ->
    [];
split_pivot([H | T]) ->
    split_pivot(H, T, [], []).
 
split_pivot(Pivot, [], Lower, Higher) ->
    {Lower, Pivot, Higher};
split_pivot(Pivot, [H | T], Lower, Higher) when H < Pivot ->
    split_pivot(Pivot, T, [H | Lower], Higher);
split_pivot(Pivot, [H | T], Lower, Higher) ->
    split_pivot(Pivot, T, Lower, [H | Higher]).
 
quicksort([]) ->
    [];
quicksort(List = [_ | _]) ->
    {Lower, Pivot, Higher} = split_pivot(List),
    append(quicksort(Lower), [Pivot | quicksort(Higher)]).


%%% listparsing -in order to parse a list 
parse([]) ->
    % parsed the whole list
    parsed.
parse([Head | Tail]) ->
    % do whatever with the current element Head
    parse(Tail).

