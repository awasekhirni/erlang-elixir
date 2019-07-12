%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%%implement flatten using append(flatten exists as lists:flatten/1) to a single list 
%%flatten([[1,2], [3,4,5], [6]]) = [1,2,3,4,5,6]

-module(exnine).
-compile(export_all).

flatten([])->[];
flatten([Xs|Ys])->Xs ++ flatten(Ys).