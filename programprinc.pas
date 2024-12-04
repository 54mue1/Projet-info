program demineur;

uses types_demineur,checkBombes, creationGrille, afficheGrille, deplacement, crt, zero, finPartie, vainqueur, DOS, chrono,menu,gestionscores;

var grille1, grille2:tab;
j1,j2: String;
curs1,curs2 : curseur;
HeureDeb,MinuteDeb,SecondeDeb,CentiemeDeb,HeureFin,MinuteFin,SecondeFin,CentiemeFin,seconde:Word;
T1, T2, G1, G2: Boolean; // T=terminé, G=gagné

begin
lancermenu(j1,j2); // affiche le menu
GetTime(HeureDeb,MinuteDeb,SecondeDeb,CentiemeDeb); // date du début de partie
Randomize;
curs1.x:=1;// initialise les curseurs en bas à gauche de chaque grille
curs1.y:=1;
curs2.x:=1;
curs2.y:=1;
creeGrille(grille1);// crée deux grilles différentes et compte le nombre de bombes autour de chaque case
remplirNbBombes(grille1);
creeGrille(grille2);
remplirNbBombes(grille2);
repeat
clrscr;
zeros(grille1);// dévoile tous les zéros autour des éros déja dévoilés
zeros(grille2);
affiche(grille1,curs1,XGRILLE1,YGRILLE);// affiche les grilles
affiche(grille2,curs2,XGRILLE2,YGRILLE);
deplacer(curs1,curs2,grille1,grille2);// prends en compte les déplacements
finDePartie(grille1,T1,G1);// regarde si la partie est terminée
finDePartie(grille2,T2,G2);
until T1 or T2;// On répète ces actions jusqu'à ce que la partie soit terminée
GetTime(HeureFin,MinuteFin,SecondeFin,CentiemeFin);
clrscr;
TimeDiff(HeureDeb,MinuteDeb,SecondeDeb,CentiemeDeb,HeureFin,MinuteFin,SecondeFin,CentiemeFin,seconde);
victoire(T1, T2, G1, G2);
If G1 or G2 then // ne prends en compte un score que si le joueur a gagné sa grille, et pas si l'autre est tombé trop rapidement sur une bombe
enregistrerScore(seconde);
end.

