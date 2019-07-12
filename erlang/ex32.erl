%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission

%% File I/O Demo
%% file I/O operations reading files, writing files 

-module(ex32).
-compile(export_all).

fileReader()->
    {ok,File}= file:open("Syed.txt",[read]),
    Txt=file:read(File,1024*1024),
    %% file copy operation
    file:copy("Syed.txt","Aicy.txt"),
    io:fwrite("~p~n",[Txt]).


filePrint()->
    {ok,Fd}=file:open("Syed1.txt",[write]),
    file:write(Fd,"Even if we perform well, we are never good enough!, this will not deter us from realising our dreams!! will achieve my objectives!!"),
    %% delete a file operation
    file:delete("Aicy.txt"),
    %%list the items of directory
    io:fwrite("~p~n",[file:list_dir(".")]).
    %% to make a new directory
    %%io:fwrite("~p~n",[file:make_dir("newdir")]).
    %% file rename operation
    %%io:fwrite("~p~n",[file:rename("Newfile.txt","Renamedfile.txt")]).
    %% compute the file size 
    % io:fwrite("~w~n",[filelib:file_size("Syed.txt")]).
    %% check whether the file exists and is a file 
    %% io:fwrite("~p~n",[filelib:is_file("Renamedfile.txt")]).
    %% check whether a directory exists 
    %% io:fwrite("~p~n",[filelib:is_dir("newdir")]).