program creationGrille;

uses types_demineur;
var grille : tab;
	i, j, minePlace : Integer;

BEGIN
for i := 1 to MAX do      //on initialise la grille vide
	for j := 1 to MAX do
		begin
			grille[i][j].estAffiche := False;
			grille[i][j].mine := False;
			grille[i][j].drapeau := False;
		end;
Randomize;
minePlace := 0;
repeat                  //on place les 12 mines au hasard
	i := random(MAX);
	j := random(MAX);
	if not grille[i][j].mine then
		begin
			grille[i][j].mine := True;
			minePlace := minePlace + 1;
		end;
until minePlace = 12;

	
END.
