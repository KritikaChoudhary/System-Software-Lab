%{
    #include "y4.tab.h"
%}
%option noyywrap
%%
"a"	{return A;}
"b"	{return B;}
"\n" {printf("\nValid Expression");exit(0);}
.	{return yytext[0];}
%%
