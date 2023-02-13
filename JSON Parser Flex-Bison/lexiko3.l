%{
#include<stdio.h>
#include<string.h>
#include<stdbool.h>
#include<stdlib.h>
#define ECHO fwrite(yytext,yyleng,1,yyout)
#include "syntaksi3.tab.h"
extern void yyerror(const char* s);
%}
%option yylineno
%option noyywrap
%%
"{" {ECHO; return LBRACE;}
"}" {ECHO; return RBRACE;}
":" {ECHO; return COLON;}
"," {ECHO; return COMMA;}
"[" {ECHO; return LBRACKET;}
"]" {ECHO; return RBRACKET;}
"\"last\"" {ECHO; return LAST;}
"\"amount\"" {ECHO; return AMOUNT;}
"\"gameId\"" {ECHO; return GAMEID;}
"\"drawId\"" {ECHO; return DRAWID;}
"\"drawTime\"" {ECHO; return DRAWTIME;}
"\"drawBreak\"" {ECHO; return DRAWBREAK;}
"\"visualDraw\"" {ECHO; return VISUALDRAW;}
"\"status\"" {ECHO; return STATUS;}
"\"pricePoints\"" {ECHO; return PRICEPOINTS;}
"\"winningNumbers\"" {ECHO; return WINNINGNUMBERS;}
"\"list\"" {ECHO; return LIST;}
"\"bonus\"" {ECHO; return BONUS;}
"\"prizeCategories\"" {ECHO; return PRIZECATEGORIES;}
"\"wagerStatistics\"" {ECHO; return WAGERSTATISTICS;}
"\"active\"" {ECHO; return ACTIVE;}
"\"id\"" {ECHO; return ID;}
"\"divident\"" {ECHO; return DIVIDENT;}
"\"winners\"" {ECHO; return WINNERS;}
"\"distributed\"" {ECHO; return DISTRIBUTED;}
"\"jackpot\"" {ECHO; return JACKPOT;}
"\"fixed\"" {ECHO; return FIXED;}
"\"categoryType\"" {ECHO; return CATEGORYTYPE;}
"\"gameType\"" {ECHO; return GAMETYPE;}
"\"columns\"" {ECHO; return COLUMNS;}
"\"wagers\"" {ECHO; return WAGERS;}
"\"addOn\"" {ECHO; return ADDON;}
"\"content\"" {ECHO; return CONTENT;}
"\"totalPages\"" {ECHO; return TOTALPAGES;}
"\"totalElements\"" {ECHO; return TOTALELEMENTS;}
"\"numberOfElements\"" {ECHO; return NUMBEROFELEMENTS;}
"\"sort\"" {ECHO; return SORT;}
"\"direction\"" {ECHO; return DIRECTION;}
"\"property\"" {ECHO; return PROPERTY;}
"\"ignoreCase\"" {ECHO; return IGNORECASE;}
"\"nullHandling\"" {ECHO; return NULLHANDLING;}
"\"descending\"" {ECHO; return DESCENDING;}
"\"ascending\"" {ECHO; return ASCENDING;}
"\"first\"" {ECHO; return FIRST;}
"\"size\"" {ECHO; return SIZE;}
"\"number\"" {ECHO; return NUMBER;}
"true"|"false" {ECHO; return BOOL;}
"\"minimumDistributed\"" {ECHO; return MINIMUMDISTRIBUTED;}
\"[^ "]*\" {yylval.string=strdup(yytext); ECHO; return STRING;}
[0-9]+\.[0-9]+ {ECHO; yylval.pragmatikos=atof(yytext); return FLOAT;}
[0-9]+ {ECHO; yylval.integer=atoi(yytext); return INTEGER;}
"\n" {}
[\t]+ {}
. {}
%%
