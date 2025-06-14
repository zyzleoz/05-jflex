%%
%class email
%unicode
%standalone // Execução independente do analisador sintático.


/*MACROS*/
CARACTERE  = [a-z]+ [0-9]+
EMAIL = [a-z]+


/*REGRAS*/
%%

{CARACTERE}"@"{EMAIL}"."[a-z]+ {
  System.out.println("E-MAIL RECONHECIDO: " + yytext());
}