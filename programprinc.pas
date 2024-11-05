program demineur;

uses types_demineur,checkBombes, creationGrille, afficheGrille, deplacement,crt,zero;

var grille:tab;
curs : curseur;
begin
j:=0;
curs.x:=1;
curs.y:=1;
creeGrille(grille);
remplirNbBombes(grille);
repeat
clrscr;
zeros(grille);

affiche1(grille,curs);
affiche2(grille,curs);
deplacer(curs,grille);


until j=10 ;
end.

