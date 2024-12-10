unit finPartie ;

Interface

uses types_demineur;

procedure finDePartie(grille : tab;var estTermine, estGagne: Boolean);

Implementation	


procedure finDePartie(grille : tab;var estTermine, estGagne: Boolean);
var i,j,k:integer;
begin
k:=0;
for i := 1 to MAX do      // partie perdu
	for j := 1 to MAX do
		if grille[i][j].estAffiche and grille[i][j].mine then
			begin
			estTermine:=TRUE;
			estGagne:=False;
			end;
for i := 1 to MAX do      // partie gagnée
	for j := 1 to MAX do
		if grille[i][j].estAffiche  then
			k:=k+1;
If k=MAX*MAX-NB_BOMBES then
	begin
	estTermine:=False;
	estGagne:=True;
	end;
end;

end.

