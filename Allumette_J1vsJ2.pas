Program Jeu_Allumette_J1vsJ2;
USES crt;

CONST
	ZERO=0;
	ALLUMETTESMAX=21;
	MODTOUR=2;
	UN=1;

procedure VERIFICATION (VAR correct:integer);
BEGIN
	WHILE ((correct <1) OR (correct>3)) DO
	BEGIN
		writeln('veuillez rentrer un nombre d''allumettes compris enntre 1 et 3 allumettes');
		writeln(' ');
		readln (correct);
	END;
END;


///////////////////////////////


VAR
	correct,nbrestant,tour,joueur,nballumettes:integer;

BEGIN
	clrscr;
	nbrestant:=ALLUMETTESMAX;
	joueur:=UN;
	tour:=ZERO;
	nballumettes:=ZERO;

	writeln ('Bienvenue sur le jeu des allumettes chaque joueur devra retirer tour à tour 1,2 ou 3 allumettes.');

	REPEAT
		IF (tour MOD modtour=ZERO) THEN
		BEGIN
			joueur:=1
		END
		ELSE IF (tour MOD modtour<>ZERO) THEN
		BEGIN
			joueur:=2
		END;

	writeln ('C''est le tour du joueur',joueur,'veulliez choisir un nombre d''allumettes à retirez.');
	readln (nballumettes);
	VERIFICATION(nballumettes);
	nbrestant:=nbrestant-nballumettes;
	writeln('Il reste ',nbrestant,' allumettes.');
	tour:=tour+1;
	readkey;

	UNTIL (nbrestant=UN);
	writeln ('Joueur ',joueur,' a gagne la partie.');
	readkey;

END.