%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror(char *s);
%}
%token A B
%left A B

%%
S: A S|S B| ;
%%


void yyerror(char *msg)
{
printf("\nInvalid Expression\n");
exit(0);
}

int main()
{
printf("Enter an Expression: ");
yyparse();
return 0;
}
