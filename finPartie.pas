unit finPartie ;

Interface

uses types_demineur,crt;

function finDePartie(grille : tab):BOOLEAN;

Implementation	


function finDePartie(grille : tab): BOOLEAN;
var i,j,k:integer;
begin
k:=0;
for i := 1 to MAX do      
	for j := 1 to MAX do
		if grille[i][j].estAffiche and grille[i][j].mine then
			finDePartie:=TRUE;
for i := 1 to MAX do      
	for j := 1 to MAX do
		if grille[i][j].estAffiche  then
			k:=k+1;
If k=MAX*MAX-NB_BOMBES then
	finDePartie:=TRUE
end;

end.
