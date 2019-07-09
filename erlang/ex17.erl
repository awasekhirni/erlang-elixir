%%Sum of Multiples

-module(ex17).
-export([multipleSum/2]).

multipleSum(Factors, Limit) -> multipleSum(Factors, Limit, 1, 0).

multipleSum(_Factors, Limit, Limit, Res) -> Res;
multipleSum(Factors, Limit, Multiple, Res) ->
        multipleSum(Factors, Limit, Multiple + 1, Res + lists:sum(rm_dup([Multiple || X <- Factors, Multiple rem X == 0]))).

rm_dup(List) -> sets:to_list(sets:from_list(List)).