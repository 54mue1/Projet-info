unit checkBombes;

Interface

uses types_demineur;

procedure checkCaseAutour(i,j:Integer; var grille: tab);
procedure remplirNbBombes(var grille: tab);


Implementation	

procedure checkCaseAutour(i,j:Integer; var grille: tab);
var m,n,nbBombes:Integer;
begin
nbBombes:=0;
for m:=-1 to 1 do
	for n:=-1 to 1 do
		if grille[i+m,j+n].mine then
			nbBombes:=nbBombes+1;
grille[i,j].nbMinesAutour:=nbBombes;
end;


procedure remplirNbBombes(var grille: tab);
var i,j:Integer;
begin
for i:=1 to MAX do 
  for j:=1 to MAX do 
    checkCaseAutour(i,j,grille);
end;

end.
