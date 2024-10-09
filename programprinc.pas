program demineur;

uses types_demineur,checkBombes, creationGrille, afficheGrille, deplacement;

var grille:tab;
begin
creeGrille(grille);
remplirNbBombes(grille);
affiche(grille);
end.
