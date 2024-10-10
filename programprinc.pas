program demineur;


uses types_demineur,checkBombes, creationGrille, afficheGrille, deplacement,crt;

var grille:tab;
curs : curseur;
begin
k:=0;
curs.x:=1;
curs.y:=1;
creeGrille(grille);
remplirNbBombes(grille);
repeat
	affiche(grille,curs);
	deplacer(curs,grille);
	writeln();
	clrscr;
	writeln(curs.x,curs.y);
	writeln(grille[curs.x][curs.y].estAffiche);
until k=10 ;
end.
