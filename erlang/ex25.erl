%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission

%% merging two lists 
%% L1 = [{k1, 10}, {k2, 20}, {k3, 30}, {k4, 20.9}, {k6, "Hello world"}],
%% L2 = [{k1, 90}, {k2, 210}, {k3, 60}, {k4, 66.9}, {k6, "Hello universe"}],
%%"""result= L3 = [
%%       {k1, [10, 90]},
%%       {k2, [20, 210]},
%%       {K3, [30, 60]},
%%       {k4, [20.9, 66.9]},
%%       {K6, ["Hello world", "Hello universe"]}
%%     ].
%%%""""
-module(ex25).
-compile(export_all).

mergeJoin(arg1,arg2)->
    Combined= arg1 ++ arg2,
    Opr=fun(Key) -> {Key,proplists:get_all_values(Key,Combined)} end,
    lists:map(Opr,proplists:get_keys(Combined)).


mergeJoiner(L1,L2)->
    merge_(lists:sort(L1), lists:sort(L2)).

merge_([{K, V1}|T1], [{K, V2}|T2]) -> [{K, [V1, V2]}|merge_(T1, T2)];
merge_([], []) -> [].