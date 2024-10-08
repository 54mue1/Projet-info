Unit deplacement ;

Interface

uses crt, types_demineur;

procedure deplacer(var grille: tab);


Implementation

procedure deplacer(var grille : tab);
begin
	case READKEY of 
		#72 : then  // aller en haut en ayant vérifier qu'on ait pas y=0
		#80 : then  // aller en bas en ayant vérifier qu'on ait pas y=MAX
		#77 : then  // aller à droite en ayant vérifier qu'on ait pas x=MAX
		#75 : then  // aller à gauche en ayant vérifier qu'on ait pas x=0
	end;
end.
