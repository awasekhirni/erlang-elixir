%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%% palindrome - the lists that remain the same if reversed.
-module(ex21).
-compile(export_all).

palindrome(List) when is_list(List) ->
    case lists:reverse(List) of 
        List->
            true;
        _ ->
            false
    end;

%%when no input in the palindrome
palindrome(_)->
    {error,arg_not_list}.


%%Compile Code 
%% c(ex21).
%% ex21:palindrome([k,a,y,a,k]). ==> result is boolean
%% ex21:palindrome([s,y,e,d]). ==> result is boolean
%% ex21:palindrome(). ==> exception error