Unit chrono;

Interface

uses DOS;

procedure TimeDiff(HeureDeb,MinuteDeb,SecondeDeb,CentiemeDeb,HeureFin,MinuteFin,SecondeFin,CentiemeFin:Word;var tempsEnSecondes:Word);

implementation

procedure TimeDiff(HeureDeb,MinuteDeb,SecondeDeb,CentiemeDeb,HeureFin,MinuteFin,SecondeFin,CentiemeFin:Word;var tempsEnSecondes:Word);
var heure,minute,seconde:Word;
begin
	heure:=0;
	minute:=0;
	seconde:=0;
	if (HeureFin-HeureDeb)<>0 then
		begin
			if MinuteFin>MinuteDeb then 
				heure:=HeureFin-HeureDeb	
			else 
				heure:=HeureFin-HeureDeb-1;
		end;
	if (MinuteFin-MinuteDeb)<>0 then
		begin
			if SecondeFin>SecondeDeb then 
				minute:=MinuteFin-MinuteDeb
			else 
				minute:=60-MinuteDeb+MinuteFin;
		end;
	if (SecondeFin-SecondeDeb)<>0 then
		begin
			if CentiemeFin>CentiemeDeb then 
				seconde:=SecondeFin-SecondeDeb
			else 
				seconde:=60-SecondeFin+SecondeDeb;
		end;
writeln('Chrono de fin de partie',heure,' : ',minute,' : ',seconde);
tempsEnSecondes:=heure*3600+minute*60+seconde;
end;
end.


