%{
    #include <stdio.h>
    #include <stdlib.h>
    int yylex();
    int yyerror(char *s);
%}

%token INTEGER NL
%left '+' '-'
%left '*' '/'

%%
stmt : exp NL { printf ("Value is %d", $1); exit(0);}
;

exp : exp '+' exp {$$ = $1 + $3;}
|exp '-' exp {$$ = $1 - $3;}
|exp '*' exp {$$ = $1 * $3;}
|exp '/' exp {$$ = $1 / $3;}
|'(' exp ')' {$$=$2;}
|INTEGER {$$ = $1;}
;
%%

int yyerror(char *msg) {
    printf("Invalid \n");
    exit(0);
}

int main() {
  printf("Enter an arithmetic expression:\n");
    yyparse();
    return 0;
}
