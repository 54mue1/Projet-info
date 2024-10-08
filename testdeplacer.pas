program test;

uses crt, types_demineur,deplacement;

var curs : curseur;

begin
curs.x := 3; 
curs.y := 3;  // curseur initiale
repeat
	//IF KEYPRESSED = TRUE then writeln(curs.x,curs.y); // affiche les coordonnées du curseur
    deplacer(curs);  // modifie les coordonnées du curseur
	writeln(curs.x,curs.y);
until curs.x=MAX+1;  // arrete si bord atteint
    

end.
