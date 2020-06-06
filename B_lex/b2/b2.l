%{
#include<stdio.h>
#include<string.h>
int id=0, com=0, oper=0;
int i=0;
char pro[20];
%}
%option noyywrap
%%
\/\/.*	{com++;}
"/*"[^("*/")]+"*/"	{com++;}
[+\-*/]	{oper++;}
"int ".+","|"float ".+","|"char ".+","|"double ".+","	{strcpy(pro,&yytext[4]); if(pro!=NULL) for(i=0;i<strlen(pro);i++) if(pro[i]==',') id++; id++;}
"int "|"float "|"char "|"double "	{id++;}
.|"\n"	;
%%
void main()
{
  yyin=fopen("input.txt","r");
  yylex();
  printf("No. of identifiers=%d\n", id);
  printf("No. of comments=%d\n", com);
  printf("No. of operators=%d\n", oper);
 }
