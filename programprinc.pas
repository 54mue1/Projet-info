program demineur;

uses types_demineur,checkBombes, creationGrille, afficheGrille, deplacement,crt,zero,finPartie;

var grille1, grille2:tab;
curs : curseur;
begin
curs.x:=1;
curs.y:=1;
creeGrille(grille1);
remplirNbBombes(grille1);
creeGrille(grille2);
remplirNbBombes(grille2);
repeat
clrscr;
zeros(grille1);
zeros(grille2);
affiche(grille,curs,XGRILLE1,YGRILLE);
affiche(grille,curs,XGRILLE2,YGRILLE);
deplacer(curs,grille);


until finDePartie(grille);
clrscr;
write('PERDU LOOSER'); ;
end.

