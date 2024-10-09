unit checkBombes;

Interface

uses types_demineur;

procedure checkCaseAutour(i,j:Integer; var grille: tab; nbBombes:Integer);
procedure remplirNbBombes(var grille: tab);


Implementation	

procedure checkCaseAutour(i,j:Integer; var grille: tab; nbBombes:Integer);
var m,n:Integer;
begin
for m:=-1 to 1 do
    for n:=-1 to 1 do
        if grille[i+m,j+n].mine then
            nbBombes:=nbBombes+1;
end;


procedure remplirNbBombes(var grille: tab);
var i,j, bombes:Integer;
begin
bombes:=0;
for i:=1 to MAX do 
  for j:=1 to MAX do 
    checkCaseAutour(i,j,grille,bombes);
end;

end.
