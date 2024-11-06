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
affiche(grille1,curs,XGRILLE1,YGRILLE);
affiche(grille2,curs,XGRILLE2,YGRILLE);
deplacer(curs,grille1);
deplacer(curs,grille2);

until finDePartie(grille1) or finDePartie(grille2) ;
clrscr;
write('PERDU LOOSER'); ;
end.

//plus tard on aura : 

program demineur;

uses types_demineur,checkBombes, creationGrille, afficheGrille, deplacement,crt,zero,finPartie;

var grille1, grille2:tab;
curs1,curs2 : curseur;
begin
curs1.x:=1;
curs1.y:=1;
curs2.x:=1;
curs2.y:=1;
creeGrille(grille1);
remplirNbBombes(grille1);
creeGrille(grille2);
remplirNbBombes(grille2);
repeat
clrscr;
zeros(grille1);
zeros(grille2);
affiche(grille1,curs1,XGRILLE1,YGRILLE);
affiche(grille2,curs2,XGRILLE2,YGRILLE);
deplacer(curs1,curs2,grille1,grille2);


until finDePartie(grille1) or finDePartie(grille2);
clrscr;
write('PERDU LOOSER'); ;
end.

