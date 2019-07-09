%module demo
% to print to the console using the io module 
-module(exone).
-compile(export_all).

%~n adds a new line to our output
hello()-> io:format("hello syed awase~n").