%%implement flatten using append(flatten exists as lists:flatten/1) to a single list 
%%flatten([[1,2], [3,4,5], [6]]) = [1,2,3,4,5,6]

-module(exnine).
-compile(export_all).

flatten([])->[];
flatten([Xs|Ys])->Xs ++ flatten(Ys).