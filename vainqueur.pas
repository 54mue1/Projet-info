unit vainqueur;

Interface

uses types_demineur, crt;

procedure victoire(estTermine1, estTermine2, estGagne1, estGagne2: Boolean);

Implementation	

procedure victoire(estTermine1, estTermine2, estGagne1, estGagne2: Boolean);
begin
if estTermine1 then 
	begin
		gotoxy(XGRILLE1,YGRILLE-4);
		write('Perdu');
		gotoxy(XGRILLE2,YGRILLE-4);
		write('Gagne');
	end;
if estTermine2 then 
	begin
		gotoxy(XGRILLE1,YGRILLE-4);
		write('Gagne');
		gotoxy(XGRILLE2,YGRILLE-4);
		write('Perdu');
	end;
if estGagne1 then 
	begin
		gotoxy(XGRILLE1,YGRILLE-4);
		write('Gagne');
		gotoxy(XGRILLE2,YGRILLE-4);
		write('Perdu');
	end;
if estGagne2 then 
	begin
		gotoxy(XGRILLE1,YGRILLE-4);
		write('Perdu');
		gotoxy(XGRILLE2,YGRILLE-4);
		write('Gagne');
	end;
end;

end.
