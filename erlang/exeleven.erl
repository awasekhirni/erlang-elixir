%%double all elements in a list 

-module(exeleven).
-export([double_all/1]).

double_all([])->[];
double_all([First|Rest])->[First+First|double_all(Rest)].