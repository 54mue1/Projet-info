unit gestionscores;

Interface 

uses crt,SysUtils;


const
  FICHIER_SCORES = 'scores.txt';

type
  TScore = record
    Temps: Integer; // Temps en secondes
  end;

procedure enregistrerScore(nouveauTemps: Integer);

Implementation

procedure enregistrerScore(nouveauTemps: Integer);
var
  fichier: TextFile;
  ligne: string;
  meilleurTemps, tempsActuel: LongInt;
  estMeilleur: Boolean;
  i : Integer;
begin
  meilleurTemps := MaxInt; // Initialiser avec la valeur maximale possible
  estMeilleur := False;

  // On vérifie les scores précédents et on trouve le meilleur.
  if FileExists(FICHIER_SCORES) then
  begin
    Assign(fichier, FICHIER_SCORES);
    Reset(fichier);
    while not EOF(fichier) do
    begin
      ReadLn(fichier, ligne);
      if TryStrToInt(ligne, tempsActuel) then // On convertit la chaine du fichier texte en nombre si possible
      begin
        if tempsActuel < meilleurTemps then
          meilleurTemps := tempsActuel;
      end;
    end;
    Close(fichier);
  end;
  
  // On ajoute le nouveau temps dans le fichier
  assign(fichier, FICHIER_SCORES);
  if FileExists(FICHIER_SCORES) then
    Append(fichier)
  else
    Rewrite(fichier);

  WriteLn(fichier, nouveauTemps);
  Close(fichier);
  
  // On regarde si le meilleur temps est le meilleur
  if nouveauTemps < meilleurTemps then
  begin
    meilleurTemps := nouveauTemps;
    estMeilleur := True;
  end;



  // Affichage du meilleur temps avec annonce si record battu ou non 
  if estMeilleur then
    begin
    WriteLn('Nouveau record battu ! Meilleur temps : ', meilleurTemps, ' secondes.')
    for i := 1 to 100 do
      begin
        Beep;      // Produit un son 
        delay(10); // Petit délai entre chaque beep
      end;
    end
  else
    WriteLn('Temps enregistré. Meilleur temps actuel : ', meilleurTemps, ' secondes.');
end;

end.
