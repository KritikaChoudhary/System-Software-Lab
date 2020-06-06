#include<stdio.h>
#include<string.h>
#include<stdlib.h>

void main()
{
    FILE *f1 = fopen("source.txt", "r");
    FILE *f2 = fopen("output.txt", "w");
    FILE *f3 = fopen("optab.txt", "r");
    FILE *f4 = fopen("symtab.txt", "w");

    char label[20],opcode[20],operand[20];
    char str[20]="";
    char opc[20],opr[20];
    int lc;

    fscanf(f1, "%s %s %s", label, opcode, operand);

    if(strcmp(opcode, "START") == 0)
    {
        lc = strtol(operand, NULL, 16);

    }
    else
    {
        lc = 0;

    }
    fprintf(f2,"%x\t%s\t%s\t%s\n", lc, label, opcode, operand);
    printf("%x\t%s\t%s\t%s\n", lc, label, opcode, operand);
    fscanf(f1, "%s %s %s", label, opcode, operand);

    while( strcmp(opcode,"END") != 0)
    {
        fprintf(f2, "%x\t%s\t%s\t%s\n", lc, label, opcode, operand);
        printf("%x\t%s\t%s\t%s\n", lc, label, opcode, operand);
        if(strcmp(label, "-") != 0)
        {
            fprintf(f4, "%s\t%x\n",label, lc);
        }

            if((strcmp(label, "-")) == 0 || (strcmp(opcode,"WORD")) == 0)
            {
                lc += 3;
            }
            else if(strcmp(opcode, "RESW") == 0)
            {
            lc += strtol(operand, NULL, 16) * 3;
            }
            else if(strcmp(opcode, "RESB") == 0)
            {
            lc = lc + strtol(operand, NULL, 10);
            }
            else if(strcmp(opcode, "BYTE") == 0)
            {
                if(operand[0] == 'X'){
                lc += (strlen(operand) - 3) / 2;
                }
                else
                {
                lc += strlen(operand) - 3;
                }
            }
            else
            {
                lc += 3;
            }
        fscanf(f1, "%s %s %s", label, opcode, operand);
    }
    fprintf(f2, "%x\t%s\t%s\t%s\n", lc, label, opcode, operand);
    printf("%x\t%s\t%s\t%s\n", lc, label, opcode, operand);
}
