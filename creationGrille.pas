program creationGrille;

uses types_demineur;
var grille : tab;
	i, j, h : Integer;

//on met 12 mines

BEGIN
for i := 1 to MAX do
	for j := 1 to MAX do
		begin
			grille[i][j].estAffiche := False;
			grille[i][j].mine := False;
			grille[i][j].drapeau := False;
		end;
Randomize;
for h := 1 to 12 do 
	i := random(MAX)
	j := random(MAX)

	
END.

