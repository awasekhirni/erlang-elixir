%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%fibonacci sequence with erlang
%a series of numbers in which each number ( Fibonacci number ) is the sum of the two preceding numbers.
-module(exfour).
-compile(export_all).

compute(0)->1;
compute(1)->1;
compute(N)->compute(N-1)+compute(N-2).