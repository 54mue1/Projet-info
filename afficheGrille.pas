unit afficheGrille;

Interface

uses types_demineur,crt;

var i,j,k : Integer;

procedure affiche(grille:tab;curs:curseur;debutx,debuty:Integer);

procedure affichecase(grille : tab);
implementation

procedure affichecase(grille:tab); //gestion de l'affichage de la case en fonction de sa "condition"
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

procedure affiche(grille:tab;curs:curseur;debutx,debuty:Integer); //permet d'afficher l'entièreté de la grille
begin
gotoxy(debutx,debuty);
	for i := 1 to MAX do 
		begin
			for j:= 1 to MAX do
				begin 
					if (j=curs.x) and (i=curs.y) then //permet d'afficher le curseur en changeant la couleur de fond
						begin
						TextBackground(1);
						affichecase(grille);
						TextBackground(0);
						end
					else
						affichecase(grille);
				end;
			writeln();
			gotoxy(debutx,debuty-i);
		end;
end;



end.
