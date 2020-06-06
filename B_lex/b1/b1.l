%{
#include<stdio.h>
int chars=0,words=0,spaces=0,lines=1,sc=0;
%}
%option noyywrap
%%
" "    {words++; spaces++;}
"\n"    {lines++; words++;}

[a-zA-z0-9]    {chars++;}
.    {sc++;}
%%
void main()
{
    yyin=fopen("input.txt","r");
    yylex();
    printf("Characters: %d\n",chars);
    printf("Words: %d\n",words);
    printf("Spaces: %d\n",spaces);
    printf("Lines: %d\n",lines);
    printf("Special Characters: %d\n",sc);
}
