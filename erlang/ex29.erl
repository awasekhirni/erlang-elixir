%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission

%% Records
%%A record in erlang is similar to a struct in C.
%Used to store a fixed number of elements. 
%Record expressions are translated to tuple expressions during compilation.
%To define a record use the “-record” directive
%Fields can have default values. 

%%
%%

-module(ex29).
-compile(export_all).

%record definition of "species"
-record(species,{
    name,
    color,
    life=1,
    attack=0,
    abilities=[]
}).

% create an instance of the reord
animal()->#species{
    name="panther",
    color="black ",
    attack=1,
    abilities=[hunt,climb,jump]
}.


%record definition 
-record(celldata,{
    state, %State=0|1
    nextstate, %State=0|1
    neighbors, %[Pid...]
    neighborstates %[{Pid,State},..]
}).

% record definition
-record(employee,{empid,empname,emprole,empsalary}).


% nested record definition 
-record(person,{name,age,gender,height,weight}).
-record(staff,{person,staffid}).

-record(player,{playerName,cards,energy}).
-record(board,{city_center,outside}).
-record(gamestate,{board,player,dices,game_round}).

%%add_player(Name, #gamestate{ board = Board,player = #player{playerName = PlayerName, cards = Cards, energy = Energy},dices = Dices,game_round = Game_round}) ->


run()->
    Syed=#employee{empid=123123,empname="Syed Awase",emprole="CEO",empsalary=12383243},
    io:fwrite("~p~n",[Syed#employee.empid]),
    io:fwrite("~p~n",[Syed#employee.empname]),
    io:fwrite("~p~n",[Syed#employee.emprole]),
    io:fwrite("~p~n",[Syed#employee.empsalary]),
    Aicy=Syed#employee{empname="Syed Awase Khirni"},
    io:fwrite("~p~n",[Aicy#employee.empname]),
    %% instantiating nested record definitions
    StaffEngineer=#staff{person=#person{name="rumi",age=23,gender="male",height=174,weight=79},staffid=872137},
    io:fwrite("~p~n",[StaffEngineer#staff.staffid]),
    io:fwrite("~p~n",[StaffEngineer#staff.person]),
    io:fwrite("~p~n",[StaffEngineer#staff.person#person.name]),
    %% fetching all the fields of the record
    io:format("Record fields:~p~n",[record_info(fields,staff)]),
    %% fetching the size of the record
    io:format("Record Size: ~p~n",[record_info(size,staff)]).


