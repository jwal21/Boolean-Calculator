%{
  #include <stdio.h>
  #include "boolcalc.tab.h"

%}
%option noyywrap

%%

[ \t]	;
\n                      {return NEWLINE;}	
[Tt][Rr][Uu][Ee]        {yylval = 1; return VAL;}
[Ff][Aa][Ll][Ss][Ee]    {yylval = 0; return VAL;}	

"&"			{return AND;}
"|"			{return OR;}
"'"			{return NOT;}

%%
