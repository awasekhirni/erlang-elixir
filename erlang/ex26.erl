%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission

%% constants in erlang 
%% constants can be created through the use of macros. 
%% define macros for variables or even functions 
-module(ex26).
-compile(export_all).

%% define macros 
-define(N,123).
-define(M,"pi").
-define(SQUARED (X),X*X).

showConstants()->
        io:format("N = ~p ~n", [?N]),
        io:format("M = ~p ~n", [?M]),
        io:format("~p ~n", [?SQUARED(5)]).


%%pascals triangle 
rows(0)->[];
rows(1)->[[1]];
rows(2)->[[1],[1,1]];
rows(N) when N>2 ->
    PreviosRows = rows(N-1),
    LastRow = lists:nth(N-1, PreviosRows),
    First = lists:sublist(LastRow, N-2), Second = lists:sublist(LastRow, 2, N-2),
    Combined = lists:zipwith(fun(X, Y)-> X+Y end, First, Second),
    PreviosRows++[[1] ++ Combined ++ [1]].


%% List operations 
%% [5*L || L<-[2,6,8]].

%%%atoms

%% atoms are similar to define preprocessor in C programming

start()->
    io:fwrite(atom1),
    io:fwrite("~n"),
    io:fwrite(atom_1),
    io:fwrite("~n"),
    io:fwrite('atom 1'),
    io:fwrite("~n").


%% tuples 
%% tuples deal with hetrogeneous values, while lists are homogeneous
%% a tuple is  built as a sequence of values of different types.

%% a composite/compound data type 
%% we use {} to define tuple
%% each item in a tuple is called element.
%% elements are separated by ,
%tuple demo
tippler()->
    T={person,"Syed","Awase",28},
    E=element(2,T),
    io:format("~p~n",[E]),
    %  to check if it is a tuple 
    io:fwrite("~w~n",[is_tuple(T)]),
    % convert list to tuple
    io:fwrite("~w~n",[list_to_tuple([1,2,3])]),
    % convert tuple to list 
    io:fwrite("~w~n",[tuple_to_list({1,2,3})]),
    % insert element at an index in a current tuple
    io:fwrite("insert an element at a specific index"),
    erlang:insert_element(5,T,"PhD"),
    io:fwrite("~w~n",[T]),
    % append the term at the end of the tuple and will return a new tuple
    % tuples are immutable strictly speaking, but if you need to increase the size
    io:fwrite("append an element at the end"),
    erlang:append_element(T,"TPRI"),
    io:fwrite("~w~n",[T]),
    io:fwrite("replace an element at index with value and return a new tuple"),
    % replace element at index with value and return a new tuple
    Tuple2=erlang:setelement(4,T,38),
    io:fwrite("~w~n",[Tuple2]),
    % to get the size of the tuple
    io:format("~p size is ~p ~n",[T, size(T)]).
    

% check whether an element is a member of the tuple 
is_element_of_tuple(Tuple,Element)->
    lists:member(Element,tuple_to_list(Tuple)).


%check whether an element is a member of a tuple
check_is_element_of_tuple(Element,Tuple)->
    check_is_element_of_tuple(Element,Tuple,1,tuple_size(Tuple)).
check_is_element_of_tuple(Element,Tuple,I,S) when I=< S ->
    case element(I,Tuple) of 
        Element-> true;
        _->check_is_element_of_tuple(Element,Tuple,I+1,S)
    end;
check_is_element_of_tuple(_,_,_,_) -> false.
    
%


%% compile demo 
%% c(ex26).
%% ex26:tippler().
