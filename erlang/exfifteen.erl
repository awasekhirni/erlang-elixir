%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%%compute the leap year 
-module(exfifteen).
-export([leap_year/1]).

leap_year(_Year) when (_Year rem 4 == 0), (_Year rem 100 == 0), (_Year rem 400 == 0) -> true;
leap_year(_Year) when (_Year rem 4 == 0), (_Year rem 100 /= 0) -> true;
leap_year(_Year) -> false.

%% c(exfifteen)
%% exfifteen:leap_year(2009)