Unit deplacement ;

Interface

uses crt, types_demineur;

procedure deplacer(var curs : curseur);

procedure devoiler(curs: curseur; var grille : tab);

procedure drapeau(curs : curseur; var grille : tab);

Implementation


procedure deplacer(var curs:curseur);
var touche:char;
begin
    touche := READKEY;
    case touche of
        HAUT: if curs.y > 1 then curs.y := curs.y - 1;  // déplacement haut
        BAS: if curs.y < MAX then curs.y := curs.y + 1;  // déplacement bas
        GAUCHE: if curs.x > 1 then curs.x := curs.x - 1;  // déplacement gauche
        DROITE: if curs.x < MAX then curs.x := curs.x + 1;  // déplacement droite
    end;
end;

procedure devoiler(curs:curseur ;var grille:tab);
var touche :char;
begin
touche:=READKEY;
	If touche= ENTREE then grille[curs.x][curs.y].estAffiche:=True; // rends la case sur laquelle est le curseur dévoilable
end;

procedure drapeau(curs : curseur; var grille: tab);
var touche : char;
begin
touche:=READKEY;
	If touche= ENTREE then grille[curs.x][curs.y].drapeau:=True; // pose un drapeau sur la case pointée par le curseur
end;

end.
