if j=1 then //cases de la colonne gauche
	begin
		if i=1 then // case haut gauche
			begin
				...
			end
		else if i=MAX then // case bas gauche
			 begin
				...
			  end			
		else // reste des cases de la colonne
			 begin
				...
			 end
	end
else if i=1 then //cases de la première ligne
	begin
			...
	end
else if j=MAX then //cases de la colonne droite
	begin
		if i=1 then // case haut droit
			begin
				...
			end
		else if i=MAX then // case bas droit
			begin
				...
			end
		else // reste des cases de la colonne
			begin
				...
			end
	end
else if i=MAX then //cases de la dernière ligne
	begin
			...
	end
else 
	begin //reste de la grille 
		...
	end;
