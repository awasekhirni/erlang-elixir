%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission

%% User defined custom types in Erlang
%% Erlang is a dynamically type language
%% -type and -spec are only annotations and could not be used to introduce some sort of static type checking. 
%% use custom types and specifications mainly for documentation purposes. 
%% use typer annotation tool to help you with specification definition. 
%% use dializer tool once in a while to perform static analysis of  the code. 

-module(ex31).
-compile(export_all).

-type suite():: spades| clubs| hearts| diamonds.
-type value():: 1..10 |j|q|k.
-type card():: {suite(),value()}.

-spec kind(card())->face|number.

kind({_,A}) when A>=1,A=<10 -> number;
kind(_)->face.

main()->
    number = kind({spades, 7}),
    face   = kind({hearts, k}),
     %% The line below is not compatible with our contract
    %% There is no rubies in the suite() atom list.
    number = kind({rubies, 4}),
    face   = kind({clubs, q}).

%% example from https://erlangbyexample.org/case-of
admit(Person) ->
    case Person of
        {male, Age} when Age >= 21 ->
            yes_with_cover;
        {female, Age} when Age >= 21 ->
            yes_no_cover;
        {male, _} ->
            no_boy_admission;
        {female, _} ->
            no_girl_admission;
            _ ->
            unknown
    end.

run() ->
    AdultMale = {male, 25},
    io:format(admit(AdultMale)),
    io:nl(),
        
    AdultFemale = {female, 25},
    io:format(admit(AdultFemale)),
    io:nl(),
        
    KidMale = {male, 5},
    io:format(admit(KidMale)),
    io:nl(),
    
    KidFemale = {female, 5},
    io:format(admit(KidFemale)),
    io:nl().
