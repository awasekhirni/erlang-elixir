%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%compute prime number 

-module(ex16).
-export([primeFactors/1]).

primeFactors(1)->[];
primeFactors(Value)->primeFactors(Value,[],2).

primeFactors(Value,Res,Value)->[Value|Res];
primeFactors(Value, Res, Factor) when Value rem Factor == 0 -> primeFactors(Value div Factor, [Factor | Res], Factor);
primeFactors(Value, Res, Factor) -> primeFactors(Value, Res, Factor + 1).