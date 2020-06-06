%{
    #include<stdio.h>
    #include "y5.tab.h"
%}
%option noyywrap
%%
[0-9] {return NUMBER;}
[\n] {return NL;}
. {return yytext[0];}
%%
