Unit deplacement ;

Interface

uses crt, types_demineur;

procedure deplacer(var curs1,curs2 : curseur; var grille1,grille2 :tab); // déplace les curseurs dans leur grille respective




Implementation


procedure deplacer(var curs1,curs2:curseur;var grille1,grille2:tab);
var touche:char;
begin
    touche := READKEY;
    case touche of

		//premier curseur dans la deuxième ligne:
        z: if curs1.y < MAX then curs1.y := curs1.y + 1;  // déplacement haut
        S: if curs1.y > 1 then curs1.y := curs1.y - 1;  // déplacement bas
        Q: if curs1.x > 1 then curs1.x := curs1.x - 1;  // déplacement gauche
        D: if curs1.x < MAX then curs1.x := curs1.x + 1;  // déplacement droite
        A: if not(grille1[curs1.y][curs1.x].estAffiche) then grille1[curs1.y][curs1.x].estAffiche:=True; // rends la case sur laquelle est le curseur dévoilable
        E:  if not(grille1[curs1.y][curs1.x].drapeau) then 
				grille1[curs1.y][curs1.x].drapeau:=True 
			else 
				grille1[curs1.y][curs1.x].drapeau:=False ;  // enlève un drapeau s'il y en a déjà, sinon en ajoute un

		//premier curseur dans la première grille :
        O:  if curs2.y < MAX then curs2.y := curs2.y + 1;// déplacement haut
        L: if curs2.y > 1 then curs2.y := curs2.y - 1;  // déplacement bas
        K: if curs2.x > 1 then curs2.x := curs2.x - 1;  // déplacement gauche
        M: if curs2.x < MAX then curs2.x := curs2.x + 1;  // déplacement droite
        I: if not(grille2[curs2.y][curs2.x].estAffiche) then grille2[curs2.y][curs2.x].estAffiche:=True; // rends la case sur laquelle est le curseur dévoilable
        P :  if not(grille2[curs2.y][curs2.x].drapeau) then 
				grille2[curs2.y][curs2.x].drapeau:=True 
			else 
				grille2[curs2.y][curs2.x].drapeau:=False ;  // enlève un drapeau s'il y en a déjà, sinon en ajoute un
end;
end;
end.
