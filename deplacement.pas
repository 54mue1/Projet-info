Unit deplacement ;

Interface

uses crt, types_demineur;

procedure deplacer(var curs : curseur);


Implementation


procedure deplacer(var curs:curseur);
var touche:char;
begin
    touche := ReadKey;
    case touche of
        #72: if curs.y > 1 then curs.y := curs.y - 1;  // Haut (code ASCII de la touche flèche haute)
        #80: if curs.y < MAX then curs.y := curs.y + 1;  // Bas (code ASCII de la touche flèche basse)
        #75: if curs.x > 1 then curs.x := curs.x - 1;  // Gauche (code ASCII de la touche flèche gauche)
        #77: if curs.x < MAX then curs.x := curs.x + 1;  // Droite (code ASCII de la touche flèche droite)
    end;
end;




end.
