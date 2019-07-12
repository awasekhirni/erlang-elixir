%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%implement a function that finds and returns an element in a list 
%% find(5,[1,2,3,4,5,6])={found,5}
%% find(20,[1,2,3,4,5,6])= not_found

-module(exseven).
-compile(export_all).

find(_,[])->not_found;
find(X,[X|_])->{found,X};
find(X,[_|Ys])->find(X,Ys).