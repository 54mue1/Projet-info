unit afficheGrille;

Interface

uses types_demineur;

var i,j,k : Integer;

procedure affiche(grille:tab);

implementation

procedure affiche(grille:tab);
begin
	for i := 1 to MAX do 
		begin
			for j:= 1 to MAX do
				begin 
					if grille[i][j].estAffiche then
						write(grille[i][j].nbMinesAutour)
					else
						write('□');
				end;
			writeln();
		end;
end;
end.
