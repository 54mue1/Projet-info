Unit chrono;

Interface

uses DOS;

procedure TimeDiff(HeureDeb,MinuteDeb,SecondeDeb,CentiemeDeb,HeureFin,MinuteFin,SecondeFin,CentiemeFin:Word;var tempsEnSecondes:Word);

implementation

procedure TimeDiff(HeureDeb,MinuteDeb,SecondeDeb,CentiemeDeb,HeureFin,MinuteFin,SecondeFin,CentiemeFin:Word;var tempsEnSecondes:Word);
var minute,seconde:Word;
begin
	minute:=0;
	seconde:=0;
	if (MinuteFin-MinuteDeb)<>0 then //si une minute est passée sur l'horloge
		begin
			if SecondeFin>SecondeDeb then //regarde si la ou les minutes passés sur l'horloge correspondent bien au nombre de minutes réel écoulé
				begin
					minute:=MinuteFin-MinuteDeb;	//dans ce cas on fait simplement la différence du chrono du début et de fin pour avoir la durée de la partie
					seconde:=SecondeFin-SecondeDeb;
				end
			else              //si la ou les minutes passés sur l'horloge ne correspondent pas bien au nombre de minutes réel écoulé
				begin
					minute:=MinuteFin-MinuteDeb-1; //dans ce cas on retire la minute compté en trop
					seconde:=60-SecondeDeb+SecondeFin; //pour les secondes, on compte le nombre de secondes écoulées jusqu'à passé à la minute supèrieur,
				end;                                       //puis on ajoute les seconde écoulés dans la nouvelle minute
		end
	else
		seconde:=SecondeFin-SecondeDeb;		
writeln('La partie à durée : ',minute,' minutes et ', seconde ,' secondes');
tempsEnSecondes:=minute*60+seconde; //convertion du chrono en seconde pour l'inscription des scores dans un fichier
end;
end.



