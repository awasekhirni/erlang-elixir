%compute prime number 

-module(ex16).
-export([primeFactors/1]).

primeFactors(1)->[];
primeFactors(Value)->primeFactors(Value,[],2).

primeFactors(Value,Res,Value)->[Value|Res];
primeFactors(Value, Res, Factor) when Value rem Factor == 0 -> primeFactors(Value div Factor, [Factor | Res], Factor);
primeFactors(Value, Res, Factor) -> primeFactors(Value, Res, Factor + 1).