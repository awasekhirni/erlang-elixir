%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%%double all elements in a list 

-module(exeleven).
-export([double_all/1]).

double_all([])->[];
double_all([First|Rest])->[First+First|double_all(Rest)].