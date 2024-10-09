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
						begin	
							write(grille[i][j].nbMinesAutour);
							write(' ');
						end
					else
						begin
							write('□');
							write(' ');
						end;
				end;
			writeln();
		end;
end;
end.
