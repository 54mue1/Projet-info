unit types_demineur;

Interface


Const 
MAX=8; // taille des grilles (ici 8x8)
// touches du clavier :
Z=#44;
Q=#16;
S=#31;
D=#32;
A=#30;
E=#18;

O=#24;
L=#38;
K=#37;
M=#50;
I=#23;
P=#25;

NB_BOMBES=1; //nombre de bombes dans une grille
//emplacement dans le terminal :
XGRILLE1=20;
YGRILLE=10;
XGRILLE2=40;

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
