%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%%area computation
-module(extwelve).
-export([area/1]).

area({rectangle,Width,Ht})->Width*Ht;
area({circle,R})->3.14159*R*R.





