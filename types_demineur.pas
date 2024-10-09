unit types_demineur;

Interface


Const  MAX=8;
HAUT=#72;
BAS=#80;
GAUCHE=#75;
DROITE=#77;
ENTREE=#13;
NB_BOMBES=11;

Type 
	cases = record
	estAffiche, mine, drapeau : Boolean;
	nbMinesAutour : Integer;
end;

Type curseur = record
  x, y : Integer;
end;

Type tab = array [1..MAX,1..MAX] of cases;

Implementation
end.
