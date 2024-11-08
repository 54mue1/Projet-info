unit zero;

interface

uses crt,types_demineur;
procedure zeros(var grille:tab); 

implementation 

procedure zeros(var grille:tab); 
var i,j, k : Integer;
begin
repeat
k := 0;
for i := 1 to MAX do
	for j := 1 to MAX do
		if (grille[i,j].estAffiche and (grille[i,j].nbMinesAutour = 0)) then //s'arrete lorsqu'une case est dévoilé et vaut 0
			begin 
				if j=1 then //colonne gauche
					begin
						if i=1 then // case haut gauche
							begin
								if ((grille[i,j+1].nbMinesAutour = 0) and not(grille[i,j+1].estAffiche)) then
									k := 1;
								if ((grille[i+1,j].nbMinesAutour = 0) and not(grille[i+1,j].estAffiche)) then
									k := 1;
								if ((grille[i+1,j+1].nbMinesAutour = 0) and not(grille[i+1,j+1].estAffiche)) then
									k := 1;
								grille[i,j+1].estAffiche:= True;
								grille[i+1,j].estAffiche:= True;
								grille[i+1,j+1].estAffiche:= True;
							end
						else if i=MAX then // case bas gauche
							begin
								if ((grille[i-1,j].nbMinesAutour = 0) and not(grille[i-1,j].estAffiche)) then
									k := 1;
								if ((grille[i-1,j+1].nbMinesAutour = 0) and not(grille[i-1,j+1].estAffiche)) then
									k := 1;
								if ((grille[i,j+1].nbMinesAutour = 0) and not(grille[i,j+1].estAffiche)) then
									k := 1;
							    grille[i-1,j].estAffiche:= True;
							    grille[i-1,j+1].estAffiche:= True;
							    grille[i,j+1].estAffiche:= True;
							end
						else
							begin
								if ((grille[i-1,j].nbMinesAutour = 0) and not(grille[i-1,j].estAffiche)) then
									k := 1;
								if ((grille[i+1,j].nbMinesAutour = 0) and not(grille[i+1,j].estAffiche)) then
									k := 1;
								if ((grille[i-1,j+1].nbMinesAutour = 0) and not(grille[i-1,j+1].estAffiche)) then
									k := 1;
								if ((grille[i,j+1].nbMinesAutour = 0) and not(grille[i,j+1].estAffiche)) then
									k := 1;
								if ((grille[i+1,j+1].nbMinesAutour = 0) and not(grille[i+1,j+1].estAffiche)) then
									k := 1;
								grille[i-1,j].estAffiche:= True;
								grille[i+1,j].estAffiche:= True;
								grille[i-1,j+1].estAffiche:= True;
								grille[i,j+1].estAffiche:= True;
								grille[i+1,j+1].estAffiche:= True;
							end
					end
				else if i=1 then //colonne droite
					begin
						if i=1 then//case haut droit 
							begin
								if ((grille[i,j-1].nbMinesAutour = 0) and not(grille[i,j-1].estAffiche)) then
									k := 1;
								if ((grille[i+1,j-1].nbMinesAutour = 0) and not(grille[i+1,j-1].estAffiche)) then
									k := 1;
							    if ((grille[i+1,j].nbMinesAutour = 0) and not(grille[i+1,j].estAffiche)) then
									k := 1;
								grille[i,j-1].estAffiche:= True;
								grille[i+1,j-1].estAffiche:= True;
								grille[i+1,j].estAffiche:= True;
							end
						else if i=MAX then
							begin
								if ((grille[i,j-1].nbMinesAutour = 0) and not(grille[i,j-1].estAffiche)) then
									k := 1;
								if ((grille[i-1,j-1].nbMinesAutour = 0) and not(grille[i-1,j-1].estAffiche)) then  //notifie si on a un zero autour de la case qui n'est pas dévoilé
									k := 1;
								if ((grille[i-1,j].nbMinesAutour = 0) and not(grille[i-1,j].estAffiche)) then
									k := 1;
								grille[i,j-1].estAffiche:= True;
								grille[i-1,j-1].estAffiche:= True;
								grille[i-1,j].estAffiche:= True;
							end
						else
							begin
								if ((grille[i-1,j].nbMinesAutour = 0) and not(grille[i-1,j].estAffiche)) then
									k := 1;
								if ((grille[i-1,j-1].nbMinesAutour = 0) and not(grille[i-1,j-1].estAffiche)) then  //notifie si on a un zero autour de la case qui n'est pas dévoilé
									k := 1;
								if ((grille[i,j-1].nbMinesAutour = 0) and not(grille[i,j-1].estAffiche)) then
									k := 1;
								if ((grille[i+1,j-1].nbMinesAutour = 0) and not(grille[i+1,j-1].estAffiche)) then
									k := 1;
								if ((grille[i+1,j].nbMinesAutour = 0) and not(grille[i+1,j].estAffiche)) then
									k := 1;
								grille[i-1,j].estAffiche:= True;
								grille[i-1,j-1].estAffiche:= True;
								grille[i,j-1].estAffiche:= True;
								grille[i+1,j].estAffiche:= True;
							end
						end
				else if i=1 then  //premiere ligne 
					begin
						if ((grille[i,j-1].nbMinesAutour = 0) and not(grille[i,j-1].estAffiche)) then
							k := 1;
						if ((grille[i,j+1].nbMinesAutour = 0) and not(grille[i,j+1].estAffiche)) then
							k := 1;	
						if ((grille[i+1,j-1].nbMinesAutour = 0) and not(grille[i+1,j-1].estAffiche)) then
							k := 1;
						if ((grille[i+1,j].nbMinesAutour = 0) and not(grille[i+1,j].estAffiche)) then
							k := 1;
						if ((grille[i+1,j+1].nbMinesAutour = 0) and not(grille[i+1,j+1].estAffiche)) then
							k := 1;	
						grille[i,j-1].estAffiche:= True;
						grille[i,j+1].estAffiche:= True;
						grille[i+1,j-1].estAffiche:= True;
						grille[i+1,j].estAffiche:= True;
						grille[i+1,j+1].estAffiche:= True;
					end
				else if i=MAX then
					begin
						if ((grille[i,j-1].nbMinesAutour = 0) and not(grille[i,j-1].estAffiche)) then
							k := 1;
						if ((grille[i,j+1].nbMinesAutour = 0) and not(grille[i,j+1].estAffiche)) then
							k := 1;
						if ((grille[i-1,j-1].nbMinesAutour = 0) and not(grille[i-1,j-1].estAffiche)) then  //notifie si on a un zero autour de la case qui n'est pas dévoilé
							k := 1;
						if ((grille[i-1,j].nbMinesAutour = 0) and not(grille[i-1,j].estAffiche)) then
							k := 1;
						if ((grille[i-1,j+1].nbMinesAutour = 0) and not(grille[i-1,j+1].estAffiche)) then
							k := 1;
						grille[i,j-1].estAffiche:= True;
						grille[i,j+1].estAffiche:= True;
						grille[i-1,j-1].estAffiche:= True;
						grille[i-1,j].estAffiche:= True;
						grille[i-1,j+1].estAffiche:= True;
					end
				else
					begin							
						if ((grille[i-1,j-1].nbMinesAutour = 0) and not(grille[i-1,j-1].estAffiche)) then  //notifie si on a un zero autour de la case qui n'est pas dévoilé
							k := 1;
						if ((grille[i,j-1].nbMinesAutour = 0) and not(grille[i,j-1].estAffiche)) then
							k := 1;
						if ((grille[i+1,j-1].nbMinesAutour = 0) and not(grille[i+1,j-1].estAffiche)) then
							k := 1;
						if ((grille[i-1,j].nbMinesAutour = 0) and not(grille[i-1,j].estAffiche)) then
							k := 1;
						if ((grille[i+1,j].nbMinesAutour = 0) and not(grille[i+1,j].estAffiche)) then
							k := 1;
						if ((grille[i-1,j+1].nbMinesAutour = 0) and not(grille[i-1,j+1].estAffiche)) then
							k := 1;
						if ((grille[i,j+1].nbMinesAutour = 0) and not(grille[i,j+1].estAffiche)) then
							k := 1;
						if ((grille[i+1,j+1].nbMinesAutour = 0) and not(grille[i+1,j+1].estAffiche)) then
							k := 1;
								
						grille[i-1,j-1].estAffiche:= True; //dévoile toutes les cases autour 
						grille[i,j-1].estAffiche:= True;
						grille[i+1,j-1].estAffiche:= True;
						grille[i-1,j].estAffiche:= True;
						grille[i+1,j].estAffiche:= True;
						grille[i-1,j+1].estAffiche:= True;
						grille[i,j+1].estAffiche:= True;
						grille[i+1,j+1].estAffiche:= True;
					end;
			end;
until k = 0;
	
end;

end.
