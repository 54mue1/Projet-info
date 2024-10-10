unit afficheGrille;

Interface

uses types_demineur,crt;

var i,j,k : Integer;

procedure affiche(grille:tab;curs:curseur);

implementation

procedure affiche(grille:tab;curs:curseur);
begin
	for i := 1 to MAX do 
		begin
			for j:= 1 to MAX do
				begin 
					if grille[i][j].estAffiche then
						begin	
							TextColor(6);
							write(grille[i][j].nbMinesAutour);
							write(' ');
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
			writeln();
		end;
	TextColor(10);
	ClrScr;
	GotoXY((curs.x)*2,(curs.y)*2);
	if grille[i][j].estAffiche then
		write(grille[i][j].nbMinesAutour)
	else
		write('□');
end;
end.

