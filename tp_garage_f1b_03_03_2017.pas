//but:permet de gerer 2 garage avec toutes les infos sur le garage et sur les voiture
//entree:infos sur le garage et sur les voitures
//sortie:tableau avec les voiture et les garages identifier

present 
type enregistrement
procedure init_garage
procedure init_voiture


absent 
procedure generation des plaques
procedure calcul age de la voiture et sa cote
test pour email et dates
procedure pour mettre chaque voiture qui correspond a son garage 
procedure affichage
programme principal



algo Garage_automobile




type
	adresse=enregistrement
		nb_rue_cp_ville_pays:chaine
		ntel:entier
		email:chaine
	FINENREGISTREMENT
FIN

type  
	garage=enregistrement
		nom:CHAINE
		identite:adresse
		nbvoiture:entier
	FINENREGISTREMENT
FIN


type
	voiture=enregistrement
		marque:chaine
		modele:chaine
		energie:chaine
		puissancef:entier
		dyn:entier
		couleur:chaine
		option:chine
		annéemod:entier
		prixmod:entier
		cote:entier
		datecircu:entier
		age:entier
		immatriculation:chaine
	FINENREGISTREMENT
FIN

type
	tgarage=tableau[1..2] de garage
FIN

procedure init_garage(var tabgarage:tgarage; var nbvoituremax:entier)

var
	i:entier

DEBUT
	
nbvoiture<--0

	pour i de 1 a 2 faire
		ECRIRE('veuillez saisir le nom du garage n*'&i&'':')
		LIRE(tabgarage[i].nom)
		ECRIRE('saisri votre adresse entiere n* ,voie, ville ,code postal,pays ')
		LIRE(tabgarage[i]adresse.identite)
		ECRIRE('saisir le numero de telephone de votre garage :')
		LIRE (tabgarage[i]adresse.ntel)
		ECRIRE ('entrer votre email')
		LIRE (tabgarage[i]adresse.email)
		nbvoituremax<--nbvoituremax+tabgarage[i].nbvoiture
		ECRIRE('entrer le nombre de vehicules que vous avez (minimun 6 maximum 15 ):')
		LIRE (tabgarage[i].nbvoiture)

	FINPOUR
FIN

procedure inti_voiture(var nbvoituremax:entier; var tabvoit:tableau[1..nbvoituremax] de voiture)

VAR
	i:entier
DEBUT
	pour i de 1 a nbvoiture faire
		ECRIRE('veuillez entrer la marque de la voiture n*'&i&'')
		LIRE(tabvoit[i].marque)
		ECRIRE('entrer le modele de la voiture n*'&i&'')
		LIRE(tabvoit[i].modele)

VAR

	tabvoit:tableau[1..nbvoiture] de voiture
	tabgarage:tgarage	
	nbvoituremax:entier

//programme

var

DEBUT
	init_garage(tabgarage,nbvoituremax)


