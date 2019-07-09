%%area computation
-module(extwelve).
-export([area/1]).

area({rectangle,Width,Ht})->Width*Ht;
area({circle,R})->3.14159*R*R.





