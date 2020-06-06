%{
#include<stdio.h>
#include<string.h>
int top=-1,v=1,i=0,j=0;
char a[20],opt[20][10],opnd[20][10];
%}
%option noyywrap
%%
"("	{a[++top]='(';}
"{"	{a[++top]='{';}
"["	{a[++top]='[';}
")"	{
        if(a[top]=='(')
            top--;
        else
        {
            v=0;
        }
    }
"}"	{
        if(a[top]=='{')
            top--;
        else
        {
            v=0;
        }
    }
"]"	{
        if(a[top]=='[')
            top--;
        else
        {
            v=0;
        }
    }

"+"|"-"|"*"|"/"	{strcpy(opt[i++],yytext);}

[0-9]+|[a-zA-Z][a-zA-Z0-9_]*	{strcpy(opnd[j++],yytext);}

"\n"	{}

%%
void main()
{
    yyin=fopen("input.txt","r");
    yylex();
    if(top==-1)
    {
    if(v && j>i)
    {
        printf("\nValid Expression\n");
        printf("\nOperators used are:-\n");
        for(int k=0;k<i;k++)
            printf("%s\n",opt[k]);
        printf("\nOperands used are:-\n");
        for(int k=0;k<j;k++)
            printf("%s\n",opnd[k]);

    }
    else
        printf("\nNot a Valid Expression!\n");
    }
    else
        printf("\nNot a Valid Expression!\n");

}
