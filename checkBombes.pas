program casseAutour;

const MAX=8;

Type cases = record
  estAffiche, mine, drapeau : Boolean;
  nbMinesAutour : Integer;
end;

Type curseur = record
  x, y : Integer;
end;

Type tab = array [1..MAX,1..MAX] of cases;

procedure checkCaseAutour(i,j:Integer; var grille: tab; nbBombes:Integer);
var m,n:Integer;
begin
nbBombes:=0;
for m:=-1 to 1 do
    for n:=-1 to 1 do
        if grille[i+m][j+n].mine then
            nbBombes:=nbBombes+1;
end;

procedure remplirNbBombes(var grille: tab);
var i,j, bombes:Integer;
begin
for i:=1 to MAX do 
  for j:=1 to MAX do 
    checkCaseAutour(i,j,grille,bombes);
end;
