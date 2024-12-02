program demineur;

uses types_demineur,checkBombes, creationGrille, afficheGrille, deplacement,crt,zero,finPartie,DOS;

var grille1, grille2:tab;
curs1,curs2 : curseur;
HeureDeb,MinuteDeb,SecondeDeb,CentiemeDeb,HeureFin,MinuteFin,SecondeFin,CentiemeFin:Word;
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


until finDePartie(grille1) or finDePartie(grille2);
GetTime(HeureFin,MinuteFin,SecondeFin,CentiemeFin);
clrscr;
write('La partie à durée :',Minutefin-MinuteDeb,' minutes, ', SecondeFin-SecondeDeb ,' secondes et ',CentiemeFin-CentiemeDeb,' centiemes');
write('PERDU LOOSER'); ;
end.

