PROGRAM Jeu_Allumette_JvsIA;

USES crt;

//BUT : Jeux d'allumette où l'on retire des allumettes les unes après les autres, il faut absolument retirer la dèrnière allumette pour gagner.

//Principe : On a la valeur initiale du tas d'allumette(21), le joueur alterne avec la machine dans une boucle répéter pour retirer 1,2 ou 3 allumettes, 
			//si le joueur retire l'allumettes en dernier, il gagne sinon, il perds.

//ENTREES : le nombre d'allumettes à soustraire.

//SORTIES : Le nombre d'allumettes restantes et le détenteurs de la victoire.


CONST
ZERO = 0;
MODTOUR = 2;
ALLUMETTESMAX = 21;
UN = 1;

VAR
nbrestant,tour, nballumettes,joueur,ia : INTEGER;

PROCEDURE VERIFICATION (VAR correct : INTEGER);
	
	BEGIN

	While ((correct <1) OR (correct>3)) DO
	Begin
	writeln ('veuillez rentrer un nombre d allumettes compris enntre 1 et 3 allumettes');
	readln (correct);
	End;

	END;

BEGIN
nbrestant:=ALLUMETTESMAX;
nballumettes:=ZERO;
ia:=ZERO;


	writeln ('Bienvenue sur le jeu de nim chaque joueur devras retirer tour à tour de une à 3 allumettes des 21 de départ, celui ramassant la dernière allumettes sera déclaré perdant.');

	REPEAT

		writeln ('c est le tour de l ordinateur');
		randomize;
		ia:=random(3)+1;//On donne une valeur aléatoire comprise entre 1 et 3
		VERIFICATION(ia);


		IF (nbrestant-ia <=UN) THEN
		begin
		 	writeln('L ordinateur vous as battu.');
		 	readkey;
		end
		else 
		begin

		nbrestant:=nbrestant-ia;
		writeln ('L''ordinateur retire',ia,'allumettes il reste',nbrestant,'allumettes.');
		readkey;

		writeln ('c est le tour du joueur, veulliez choisir un nombre d allumettes à retirer entre 1 et 3');
		readln (nballumettes);
		VERIFICATION(nballumettes);


		IF (nbrestant-nballumettes<=UN) THEN
		begin
			writeln('Vous avez gagné!');
			readkey;
		end;
		nbrestant:=nbrestant-nballumettes;

		end;




		

		

	UNTIL (nbrestant<=UN);


		readkey;
	END.
	