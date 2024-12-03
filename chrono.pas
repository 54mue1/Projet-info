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
	if (MinuteFin-MinuteDeb)<>0 then
		begin
			if SecondeFin>SecondeDeb then 
				begin
					minute:=MinuteFin-MinuteDeb;	
					seconde:=SecondeFin-SecondeDeb;
				end
			else
				begin
					minute:=MinuteFin-MinuteDeb-1;
					seconde:=60-SecondeDeb+SecondeFin;
				end;
		end
	else
		seconde:=SecondeFin-SecondeDeb;		
writeln('La partie à durée : ',minute,' minutes et ', seconde ,' secondes');
tempsEnSecondes:=minute*60+seconde;
end;
end.



