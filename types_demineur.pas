
unit types_demineur;

Interface


Const  MAX=8;

Type 
	cases = record
	estAffiche, mine, drapeau : Boolean;
	nbMinesAutour : Integer;
end;

Type curseur = record
  x, y : Integer;
end;

Type grille = array [1..MAX,1..MAX] of cases;

Implementation
end.
