Unit deplacement ;

Interface

uses crt, types_demineur;

procedure deplacer1(var curs : curseur; var grille :tab); // déplace le curseur avec les controles du joueur1
procedure deplacer2(var curs : curseur;var grille : tab); // déplace le curseur avec les controles du joueur2



Implementation


procedure deplacer1(var curs:curseur;var grille:tab);
var touche:char;
begin
    touche := READKEY;
    case touche of
        HAUT: if curs.y > 1 then curs.y := curs.y - 1;  // déplacement haut
        BAS: if curs.y < MAX then curs.y := curs.y + 1;  // déplacement bas
        GAUCHE: if curs.x > 1 then curs.x := curs.x - 1;  // déplacement gauche
        DROITE: if curs.x < MAX then curs.x := curs.x + 1;  // déplacement droite
        ENTREE: if not(grille[curs.y][curs.x].estAffiche) then grille[curs.y][curs.x].estAffiche:=True; // rends la case sur laquelle est le curseur dévoilable
        INSER :  if not(grille[curs.y][curs.x].drapeau)   then grille[curs.y][curs.x].drapeau:=True;  // pose un drapeau sur la case du curseur
    end;
end;


procedure deplacer2(var curs:curseur;var grille:tab);
var touche:char;
begin
    touche := READKEY;
    case touche of
        z: if curs.y > 1 then curs.y := curs.y - 1;  // déplacement haut
        S: if curs.y < MAX then curs.y := curs.y + 1;  // déplacement bas
        Q: if curs.x > 1 then curs.x := curs.x - 1;  // déplacement gauche
        D: if curs.x < MAX then curs.x := curs.x + 1;  // déplacement droite
        A: if not(grille[curs.y][curs.x].estAffiche) then grille[curs.y][curs.x].estAffiche:=True; // rends la case sur laquelle est le curseur dévoilable
        E:  if not(grille[curs.y][curs.x].drapeau)   then grille[curs.y][curs.x].drapeau:=True;  // pose un drapeau sur la case du curseur
    end;
end;

end.
