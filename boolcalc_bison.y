%{
#include <stdio.h>
#include <stdlib.h>

int yylex (void);
extern int yyparse();
extern FILE *yyin;
void yyerror (char const *);
%}

%define api.value.type {int}

%token VAL
%token NEWLINE
%token AND OR NOT
%start input


%%

input:
  %empty
| input line
;

line:
  NEWLINE
| exp NEWLINE { if ($1) 
		     printf("TRUE\n");
		else {
		     printf("FALSE\n");
		}
	}
;

exp:
  VAL
| exp exp AND {$$ = $1 && $2;}
| exp exp OR  {$$ = $1 || $2;}
| exp NOT     {$$ = !$1;}
;
%%


void yyerror (char const *s) {
  fprintf(stderr, "%s\n",s);
}

int main(void) {
  yyin = stdin;
  do 
  {
      yyparse();

  } while (!feof(yyin));
  return 0;
}  



