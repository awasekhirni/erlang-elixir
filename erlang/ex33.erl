%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission

%% erlang builtin function demo 

-module(ex33).
-compile(export_all).

main()->
    % print the current time
    io:fwrite("~p~n",[time()]),
    % print current system date 
    io:fwrite("~p~n", [date()]),
    % print universal time coordinates
    io:fwrite("~p~n",[erlang:universaltime()]),
    % to return the number of bytes contained in a Bitstring
    io:fwrite("~p~n",[byte_size(<<22,36,48>>)]),
    % fetch the nth element from a list 
    io:fwrite("~p~n",[element(2,{a,b,c})]),
    %% fetch information about dynamically allocated memory by the erlang emulator
    io:fwrite("~p~n",[erlang:memory()]),
    % fetch all the ports on the local node 
    io:fwrite("~w~n",[erlang:ports()]),
    % fetch the list of process identifiers correspondign to all the process currently existing on the local node.
    io:fwrite("~p~n",[erlang:processes()]).



