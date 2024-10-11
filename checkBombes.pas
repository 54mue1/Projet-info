unit checkBombes;

Interface

uses types_demineur;

procedure checkCaseAutour(i,j:Integer; var grille: tab);
procedure remplirNbBombes(var grille: tab);


Implementation	

procedure checkCaseAutour(i,j:Integer; var grille: tab); // compte le nombre de bombes autour d'une case
var m,n,nbBombes:Integer;
begin
nbBombes:=0;
if j=1 then //comptage bombes autour des cases de la colonne gauche
	begin
		if i=1 then // case haut gauche
			begin
				if grille[i,j+1].mine then
					nbBombes:=nbBombes+1;
				if grille[i+1,j].mine then
					nbBombes:=nbBombes+1;
				if grille[i+1,j+1].mine then
					nbBombes:=nbBombes+1;
			end
		else if i=MAX then // case bas gauche
			 begin
				if grille[i-1,j].mine then
					nbBombes:=nbBombes+1;
				if grille[i-1,j+1].mine then
					nbBombes:=nbBombes+1;
				if grille[i,j+1].mine then
					nbBombes:=nbBombes+1;
			  end			
		else // reste des cases de la ligne
			 begin
				if grille[i-1,j].mine then
					nbBombes:=nbBombes+1;
				if grille[i+1,j].mine then
					nbBombes:=nbBombes+1;
				if grille[i-1,j+1].mine then
					nbBombes:=nbBombes+1;
				if grille[i,j+1].mine then
					nbBombes:=nbBombes+1;
				if grille[i+1,j+1].mine then
					nbBombes:=nbBombes+1;
			 end
	end
else if i=1 then //comptage bombes autour des cases de la première ligne
	begin
			if grille[i,j-1].mine then
				nbBombes:=nbBombes+1;
			if grille[i,j+1].mine then
				nbBombes:=nbBombes+1;
			if grille[i+1,j-1].mine then
				nbBombes:=nbBombes+1;
			if grille[i+1,j].mine then
				nbBombes:=nbBombes+1;
			if grille[i+1,j+1].mine then
				nbBombes:=nbBombes+1;
	end
else if j=MAX then //comptage bombes autour des cases de la colonne droite
	begin
		if i=1 then // case haut droit
			begin
				if grille[i,j-1].mine then
					nbBombes:=nbBombes+1;
				if grille[i+1,j-1].mine then
					nbBombes:=nbBombes+1;
				if grille[i+1,j].mine then
					nbBombes:=nbBombes+1;
			end
		else if i=MAX then // case bas droit
			begin
				if grille[i,j-1].mine then
					nbBombes:=nbBombes+1;
				if grille[i-1,j-1].mine then
					nbBombes:=nbBombes+1;
				if grille[i-1,j].mine then
					nbBombes:=nbBombes+1;
			end
		else // reste des cases de la ligne
			begin
				if grille[i-1,j].mine then
					nbBombes:=nbBombes+1;
				if grille[i-1,j-1].mine then
					nbBombes:=nbBombes+1;
				if grille[i,j-1].mine then
					nbBombes:=nbBombes+1;
				if grille[i+1,j-1].mine then
					nbBombes:=nbBombes+1;
				if grille[i+1,j].mine then
					nbBombes:=nbBombes+1;
			end
	end
else if i=MAX then //comptage bombes autour des cases de la dernière ligne
	begin
			if grille[i,j-1].mine then
				nbBombes:=nbBombes+1;
			if grille[i,j+1].mine then
				nbBombes:=nbBombes+1;
			if grille[i-1,j-1].mine then
				nbBombes:=nbBombes+1;
			if grille[i-1,j].mine then
				nbBombes:=nbBombes+1;
			if grille[i-1,j+1].mine then
			 	nbBombes:=nbBombes+1;
	end
else 
	begin //comptage bombes dans tous le reste de la grille 
		for m:=-1 to 1 do
			for n:=-1 to 1 do
				if grille[i+m,j+n].mine then
					nbBombes:=nbBombes+1;
	end;
grille[i,j].nbMinesAutour:=nbBombes;
end;


procedure remplirNbBombes(var grille: tab); // compte le nombre de bombes autour de chaque case de la grille
var i,j:Integer;
begin
for i:=1 to MAX do 
  for j:=1 to MAX do 
    checkCaseAutour(i,j,grille);
end;

end.
