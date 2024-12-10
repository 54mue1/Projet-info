unit vainqueur;

Interface

uses types_demineur, crt;

procedure victoire(estTermine1, estTermine2, estGagne1, estGagne2: Boolean);

Implementation	

procedure victoire(estTermine1, estTermine2, estGagne1, estGagne2: Boolean);  //Determine quel joueur à gagner en fonction de la manière dont se termine la partie
var i: Integer;
begin
{if estTermine1 then // si joueur de la grille de gauche est tombé sur une bombe
	begin
		TextColor(12);
		gotoxy(XGRILLE1,YGRILLE-4);
		write('Perdu');
		TextColor(15);
		gotoxy(XGRILLE2,YGRILLE-4); 
		write('Gagné');
	end;
if estTermine2 then // si joueur de la grille de droite est tombé sur une bombe
	begin
		gotoxy(XGRILLE1,YGRILLE-4);
		TextColor(15);
		write('Gagné');
		TextColor(12);
		gotoxy(XGRILLE2,YGRILLE-4);
		write('Perdu');
	end;}
if estGagne1 or estTermine2 then // si joueur de la grille de gauche a trouvé toutes les bombes
	begin
		gotoxy(XGRILLE1,YGRILLE-4);
		TextColor(15);
		write('Gagné');
		TextColor(12);
		gotoxy(XGRILLE2,YGRILLE-4);
		write('Perdu');
	end;
if estGagne2 or estTermine1 then // si joueur de la grille de droite a trouvé toutes les bombes
	begin
		gotoxy(XGRILLE1,YGRILLE-4);
		TextColor(12);
		write('Perdu');
		TextColor(15);
		gotoxy(XGRILLE2,YGRILLE-4);
		write('Gagné');
	end;
for i:=1 to 13 do // saute 13 lignes pour que l'affichage de la fin du programme soit plus loin
	writeln();
end;

end.

