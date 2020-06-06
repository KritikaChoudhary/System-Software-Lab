%{
    #include <stdio.h>
    #include <stdlib.h>
    int yylex();
    int yyerror(char *s);
%}

%token NUMBER NL

%%
stmt : NUMBER NUMBER exp NL {printf("Valid Integer \n"); exit (0);}
     ;

exp : NUMBER exp
    | NUMBER
    ;

%%
int yyerror (char *msg) {
    printf ("Invalid Integer\n");
    exit(0);
}
int main() {
	 printf("Enter an integer\n");
    yyparse();
    return 0;
}
