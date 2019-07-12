%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
-module(exthirteen).
-compile(export_all).

showVariables()->
    Name="Syed Awase Khirni",
    io:format("Name:~p ~n",[Name]),
    Age=37,
    io:format("Age: ~p ~n",[Age]),
    IsLearner=fun()->true end,
    io:format("Male: ~p ~n",[IsLearner()]),

{A,[Head,Second|Rest]}={1,[10,20,30,40]},
io:format("A= ~p ~n",[A]),
io:format("Head= ~p ~n",[Head]),
io:format("Seond= ~p ~n",[Second]),
io:format("Rest=~p ~n",[Rest]),
_=1,
_=2.
