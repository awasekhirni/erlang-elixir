%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission

%% strings in erlang

%% string operations 

-module(ex30).
-import(string,[len/1,equal/2,chr/2,concat/2,substr/3,to_upper/1]).
-compile(export_all).


start()->
    MyString="You Know Hello, you fool i love you,come on enjoy the joy ride!",
    io:fwrite("~p~n",[MyString]),
    %% compute the length of the string
    Leny=len(MyString),
    io:fwrite("~p~n",[Leny]),
    %% compare two strings if they are equal 
    MyString2=("Hakuna Matata What a wonderful world"),
    Status=equal(MyString,MyString2),
    io:fwrite("~p~n",[Status]),
    %% convert string to upper case or lower case 
    %% to_lower or to_upper
    MyString3=to_upper(MyString2),
    io:fwrite("~p~n",[MyString3]),
    %% concatenate two strings 
    MyString4=concat(MyString,MyString2),
    io:fwrite("~p~n",[MyString4]),
    %% fetch the index position of the character in the string 
    MyCharIndex=chr(MyString2,$n),
    io:fwrite("~p~n",[MyCharIndex]),
    %% fetch the substr
    MySubs=substr(MyString2,8,19),
    io:fwrite("~p~n",[MySubs]).