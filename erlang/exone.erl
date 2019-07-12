%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%module demo
% to print to the console using the io module 
-module(exone).
-compile(export_all).
-author("Syed Awase Khirni").
-date({2014, 05, 11}).

%~n adds a new line to our output
hello()-> io:format("hello syed awase~n").


%%to check whether a module is loaded 
%% erlang:module_loaded(moduleName).  ==> returns boolean 
%% loading module 
%% l(moduleName). ==> return {module,moduleName}
%% to extract module information 
%% moduleName:module_info(). 
%% to extract module attributes 
%% moduleName:module_info(attributes).
