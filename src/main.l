
%{
#include <stdio.h>
#include <string.h>
%}

%%

(([A-Za-z0-9][A-Za-z0-9\.\-\_]*)?[A-Za-z0-9][@][A-Za-z0-9]([A-Za-z0-9\.\-\_]*[A-Za-z0-9\.])?) {
  if (yytext[strlen(yytext)-1] == '.'){
    yytext[strlen(yytext)-1] = 0;
  }
  printf("%s\n", yytext);
}

[[:space:]]+ ;
[[:^space:]]+ ; 
[.\n]* ;

%%

int main() {
  yylex();
  return 0;
}
