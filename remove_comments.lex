%{
#include <stdio.h>
%}

%%

"/*"    {   /* Begin multi-line comment */
            int c;
            while ((c = input()) != EOF) {
                if (c == '*' && (c = input()) == '/')
                    break;
            }
        }

"//"    {   /* Begin single-line comment */
            int c;
            while ((c = input()) != EOF) {
                if (c == '\n') {
                    unput(c);
                    break;
                }
            }
        }

.       {   putchar(yytext[0]); }

%%

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Usage: %s input_file output_file\n", argv[0]);
        return 1;
    }

    FILE *input_file = fopen(argv[1], "r");
    if (!input_file) {
        printf("Error: Unable to open input file.\n");
        return 1;
    }

    FILE *output_file = fopen(argv[2], "w");
    if (!output_file) {
        fclose(input_file);
        printf("Error: Unable to create output file.\n");
        return 1;
    }

    yyin = input_file;
    yyout = output_file;

    yylex();

    fclose(input_file);
    fclose(output_file);

    printf("Comments removed successfully.\n");

    return 0;
}
