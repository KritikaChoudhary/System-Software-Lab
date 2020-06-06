//Absolute loader
#include <stdio.h>
#include <string.h>

void main()
{
	FILE *fp = fopen("out.txt", "r");
	char type, objcode[20], progname[20], input[20];
	int sa, addr, len;
	fscanf(fp, "%c %s %x %x", &type, progname, &sa, &len);

	fscanf(fp, "%s", input);

	while (strcmp(input, "E") != 0)
	{
		if (strcmp(input, "T") == 0)
		{
			fscanf(fp, "%X", &addr);
			fscanf(fp, "%X", &len);
			fscanf(fp, "%s", input);
		}

		int i = 0;
		while (i < strlen(input) - 1)
		{
			printf("%X\t%c%c\n", addr, input[i], input[i + 1]);
			addr++;
			i += 2;
		}
		fscanf(fp, "%s", input);
	}
	fclose(fp);
}
