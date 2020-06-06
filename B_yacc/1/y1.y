%{
  #include<stdlib.h>
  #include<stdio.h>
  int yylex();
  int yyerror(char *s);
%}
%token number id nl
%left '+' '-'
%left '*' '/'

%%
stmt:exp nl {printf("Valid exp\n");exit(0);}
;
exp:exp '+' exp
|exp '-' exp
|exp '*' exp
|exp '/' exp
|'('exp')'
|id
|number
;
%%

int yyerror(char *msg) {
  printf("Invalid\n");
  exit(0);
}

int main() {
  printf("Enter the exp\n");
  yyparse();
  return 0;
}
