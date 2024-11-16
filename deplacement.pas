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
		//premier curseur dans la première grille :
        O:  if curs1.y < MAX then curs1.y := curs1.y + 1;// déplacement haut
        L: if curs1.y > 1 then curs1.y := curs1.y - 1;  // déplacement bas
        K: if curs1.x > 1 then curs1.x := curs1.x - 1;  // déplacement gauche
        M: if curs1.x < MAX then curs1.x := curs1.x + 1;  // déplacement droite
        I: if not(grille1[curs1.y][curs1.x].estAffiche) then grille1[curs1.y][curs1.x].estAffiche:=True; // rends la case sur laquelle est le curseur dévoilable
        P :  if not(grille1[curs1.y][curs1.x].drapeau)   then grille1[curs1.y][curs1.x].drapeau:=True;  // pose un drapeau sur la case du curseur
		//deuxième curseur dans la deuxième ligne:
        z: if curs2.y < MAX then curs2.y := curs2.y + 1;  // déplacement haut
        S: if curs2.y > 1 then curs2.y := curs2.y - 1;  // déplacement bas
        Q: if curs2.x > 1 then curs2.x := curs2.x - 1;  // déplacement gauche
        D: if curs2.x < MAX then curs2.x := curs2.x + 1;  // déplacement droite
        A: if not(grille2[curs2.y][curs2.x].estAffiche) then grille2[curs2.y][curs2.x].estAffiche:=True; // rends la case sur laquelle est le curseur dévoilable
        E:  if not(grille2[curs2.y][curs2.x].drapeau)   then grille2[curs2.y][curs2.x].drapeau:=True;  // pose un drapeau sur la case du curseur
    end;
end;

end.
