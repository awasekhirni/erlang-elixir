%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%implement reverse 
-module(exsix).
-compile(export_all).

reverse([])->[];
reverse([X|Xs])->reverse(Xs)++[X].