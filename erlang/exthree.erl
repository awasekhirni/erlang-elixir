%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%conditional flow and looping in erlang
-module(exthree).
-export([loony/0]).

%% if statement 
%% if 
%%      Boolean_Expression1 ->
%%      If_body1;
%%      Boolean_Expression2 ->
%%      If_body2;
%%      ....
%%      true ->
%%      If_body_catch_all
%%  end


month(M)->
    if
        M==1->january; 
        M==2->february;
        M==3->march;
        true->{error,not_valid_month_value}
    end.


select_clothing(Temperature)->
    case Temperature of 
        {celsius, N} when N>=20,N=<45 ->
            'summer  clothing';

        {celsius, N} when N>=0,N=<20 ->
            'winter clothing';

        _->"temperature not given"
    end.

computeTime("24:00") ->
        computeTime("00:00");
    computeTime(Time = [H1, H2, $:, M1, M2]) when ((H1 >= $0) and (H1 =< $2)) and
                            ((H2 >= $0) and (H2 =< $9)) and
                            ((M1 >= $0) and (M1 =< $5)) and
                            ((M2 >= $0) and (M2 =< $9)) and
                            not((H1 == $2) and (H2 > $4)) and
                            not(([H1, H2] == "24") and (not([M1, M2] == "00"))) ->
        HH = list_to_integer([H1, H2]),
        if
        HH == 12 ->
            Time ++ " PM";
        HH > 12 ->
            integer_to_list(HH - 12) ++ [$:, M1, M2 | " PM"];
        true ->
            Time ++ " AM"
    end;
    computeTime(_) ->
        incorrect_time_format.


%%switch case example 
myMonth(M)-> 
    case M of 
        1->january;
        2->february;
        3->march;
        4->april;
        5->may;
        6->june;
        _Other->{error,not_valid_month_value}
    end.


loony()->
    receive
        {FromPID,Who}->
            case Who of 
                savings -> FromPID ! "Allstar Savings";
                checking -> FromPID ! "Checking Account";
                current -> FromPID ! "current Account";
                _-> FromPID ! "Unknown selection"
        end,
    loony()
end.

