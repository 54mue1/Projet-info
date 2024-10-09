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
if i=1 then
	begin
		if j=1 then
		if j=MAX then
		else
	end
else if i=MAX then
else if j=1 then
	begin
		if j=1 then
		if j=MAX then
		else
	end
else if j=MAX then
else
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
