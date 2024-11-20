unit creationGrille;

interface

uses types_demineur;
var grille : tab;
	i, j, minePlace : Integer;
	
procedure creeGrille(var grille:tab);

Implementation

procedure creeGrille(var grille:tab);
begin
for i := 1 to MAX do      //on initialise la grille vide
	for j := 1 to MAX do
		begin
			grille[i][j].estAffiche := False;
			grille[i][j].mine := False;
			grille[i][j].drapeau := False;
		end;

minePlace := 0;
repeat                  //on place les 12 mines au hasard
	i := random(MAX) + 1 ;
	j := random(MAX) + 1;
	if not grille[i][j].mine then
		begin
			grille[i][j].mine := True;
			minePlace := minePlace + 1;
		end;
until minePlace = NB_BOMBES;
end;
	
END.
