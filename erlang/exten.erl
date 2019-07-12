%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%%Implement a function which computes the cubes of every number in the list 
%%cubix([3,4,5])

-module(exten).
-compile(export_all).

cubix([])->[];
cubix([X|Xs])->[X*X*X|cubix(Xs)].
cubix2(Xs)->[X*X*X || X<-Xs].
cubix3(Xs)-> lists:map(fun(X)->X*X*X end,Xs).
