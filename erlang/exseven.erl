%implement a function that finds and returns an element in a list 
%% find(5,[1,2,3,4,5,6])={found,5}
%% find(20,[1,2,3,4,5,6])= not_found

-module(exseven).
-compile(export_all).

find(_,[])->not_found;
find(X,[X|_])->{found,X};
find(X,[_|Ys])->find(X,Ys).