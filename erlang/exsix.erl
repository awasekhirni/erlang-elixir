%implement reverse 
-module(exsix).
-compile(export_all).

reverse([])->[];
reverse([X|Xs])->reverse(Xs)++[X].