unit menu;

Interface
uses  crt;
var j1,j2 : string;
procedure affichedecompte(chaine : String); // va permettre d'afficher le décompte
procedure lancermenu(var j1,j2: String) ;
procedure pageaccueil();
 
Implementation
procedure affichedecompte(chaine:String);
begin
clrscr();
gotoxy(40,10);
write(chaine);
delay(1000);
end;

procedure pageaccueil();
begin
             writeln('  ____   ____   __  __  ____   ______   _____  ');
             writeln(' |  _ \ / __ \ |  \/  ||  _ \ |  ____| |  __ \ ');
             writeln(' | |_) | |  | || \  / || |_) || |__    | |__) |');
             writeln(' |  _ <| |  | || |\/| ||  _ < |  __|   |  _  / ');
             writeln(' | |_) | |__| || |  | || |_) || |____  | | \ \ ');
             writeln(' |____/ \____/ |_|  |_||____/ |______| |_|  \_\');
end;

procedure lancermenu(var j1,j2 : String);
begin
pageaccueil();
delay(6000);
clrscr();
Textcolor(15);
writeln('Entrez le nom du premier joueur (il sera à gauche):');
readln(j1);
writeln('Entrez le nom du deuxième joueur (il sera à droite):');
readln(j2);// prends les noms des joueurs
Textcolor(6);
writeln('⚠ En jeu, restez appuyé sur la touche Alt ⚠');// affiche les touches de chaque joueur
Textcolor(15);
writeln(j1,' jouera avec :');
writeln('Z : Aller en haut');
writeln('S : Aller en bas ');
writeln('Q : Aller à gauche ');
writeln('D : Aller à droite');
writeln('A : Dévoiler une case');
writeln('E : Poser un drapeau');
writeln();
writeln(j2,' jouera avec :');
writeln('O : Aller en haut');
writeln('L : Aller en bas ');
writeln('K : Aller à gauche ');
writeln('M : Aller à droite');
writeln('I : Dévoiler une case');
writeln('P : Poser un drapeau');
writeln();
writeln('Pour commencer la partie, appuyé sur une touche ');
Readkey;
	affichedecompte('3');
	affichedecompte('2');
	affichedecompte('1');
	affichedecompte('C''est parti !');
end;
end.
