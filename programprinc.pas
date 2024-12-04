program demineur;

uses types_demineur,checkBombes, creationGrille, afficheGrille, deplacement, crt, zero, finPartie, vainqueur, DOS, chrono;

var grille1, grille2:tab;
curs1,curs2 : curseur;
HeureDeb,MinuteDeb,SecondeDeb,CentiemeDeb,HeureFin,MinuteFin,SecondeFin,CentiemeFin,seconde:Word;
T1, T2, G1, G2: Boolean; // T=terminé, G=gagné
begin
GetTime(HeureDeb,MinuteDeb,SecondeDeb,CentiemeDeb);
Randomize;
curs1.x:=1;
curs1.y:=1;
curs2.x:=1;
curs2.y:=1;
creeGrille(grille1);
remplirNbBombes(grille1);
creeGrille(grille2);
remplirNbBombes(grille2);
repeat
clrscr;
zeros(grille1);
zeros(grille2);
affiche(grille1,curs1,XGRILLE1,YGRILLE);
affiche(grille2,curs2,XGRILLE2,YGRILLE);
deplacer(curs1,curs2,grille1,grille2);
finDePartie(grille1,T1,G1);
finDePartie(grille2,T2,G2);
until T1 or T2;
GetTime(HeureFin,MinuteFin,SecondeFin,CentiemeFin);
clrscr;
TimeDiff(HeureDeb,MinuteDeb,SecondeDeb,CentiemeDeb,HeureFin,MinuteFin,SecondeFin,CentiemeFin,seconde);
victoire(T1, T2, G1, G2);
end.
