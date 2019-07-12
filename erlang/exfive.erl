%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%alternative approach to fibonacci 
-module(exfive).
-export([fibo/1,printfibo/1]).

%%print fibo arg. and result, with function as parameter 

printfibo(N)->
    Res=exfive:fibo(N),
    io:fwrite("~w ~w~n",[N,Res]).

fibo(0)->0;
fibo(1)->1;
fibo(N) when N>0->fibo(N-1)+fibo(N-2).
