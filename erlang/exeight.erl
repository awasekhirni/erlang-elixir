%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%%implement a function that deletes the first occurence of an element from a list
%%delete(12,[23,34,43,12,45,25])

-module(exeight).
-compile(export_all).

delete(_,[])->[];
delete(X,[X|Ys])->Ys;
delete(X,[Y|Ys])->[Y|delete(X,Ys)].