unit afficheGrille;

Interface

uses types_demineur,crt;

var i,j,k : Integer;

procedure affiche(grille:tab;curs:curseur);
procedure affichecase(grille : tab);
implementation

procedure affichecase(grille:tab);
begin
	if grille[i][j].estAffiche then
		 begin
			if grille[i][j].mine then
				begin
				TextColor(12);
				write('☼');
			    write(' ');
				end
			else
				begin
				TextColor(6);
				write(grille[i][j].nbMinesAutour);
				write(' ');
				end
			end
		else if grille[i][j].drapeau then
			begin	
			TextColor(12);
			write('♥');
			write(' ');
			end
		else
			begin
			TextColor(2);
			write('□');
			write(' ');
			end;
end;

procedure affiche(grille:tab;curs:curseur);
begin
	for i := 1 to MAX do 
		begin
			for j:= 1 to MAX do
				begin 
					if (j=curs.x) and (i=curs.y) then
						begin
						TextBackground(1);
						affichecase(grille);
						TextBackground(0);
						end
					else
						affichecase(grille);
				end;
			writeln();
		end;
end;

end.

