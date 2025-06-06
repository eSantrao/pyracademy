knitr::opts_chunk$set(
  echo = TRUE,       # Afficher le code des chunks
  eval = TRUE,       # Exécuter les chunks
  warning = FALSE,   # Masquer les avertissements
  message = FALSE,   # Masquer les messages
  fig.width = 6,     # Largeur par défaut des figures
  fig.height = 4     # Hauteur par défaut des figures
)
    print("R est mon ami !") 
install.packages("tidyverse")  # Pour la manipulation de données 
install.packages("ggplot2")    # Pour la visualisation graphique 
install.packages("dplyr")      # Pour le traitement des données 
x <- 5 * (3.2)  # Attention, le séparateur décimal doit être un point (.)
x
5 * (-3,2)  # Sinon, l'erreur suivante est générée : 
5^2  # Identique à 5**2.
sin(2 * pi / 3)  
sqrt(4)  # Racine carrée de 4.
c(1, 2, 3, 4, 5)  # Crée un vecteur contenant les cinq premiers entiers.
Nom_objet_a_creer <- "instructions"
x <- 6  # Affectation
x       # Affichage
12 -> y
y
# Valides
ma_variable <- 10
MaVariable <- "texte"
var2 <- 5.6
taux.de.croissance <- 0.03  # Utilisation du point

#  Invalides
2variable <- "erreur"  # Commence par un chiffre
ma variable <- 100      # Contient un espace
mavariable! <- TRUE     # Contient un caractère spécial
print(2*3)
print(x)
help(source)
# Il est possible d’écrire plusieurs instructions sur la même ligne grâce au signe ";"
Mon.Poids <- 63 ; Ma.Taille <- 1.70
Mon.IMC <- Mon.Poids / Ma.Taille^2
Mon.IMC  # Affichage du résultat
nomfonction(par1 = valeur1, par2 = valeur2, par3 = valeur3)
log(3)  
log(x = 3)  
log(x = 3, base = exp(1))  
log(x = 3, exp(1))  
log(3, base = exp(1))  
log(3, exp(1))  
log(base = exp(1), 3)  
log(base = exp(1), x = 3)  
log(exp(1), 3)  # Logarithme de exp(1) en base 3.
factorial <- function(x) gamma(x + 1)
MyIMC <- function(Poids, Taille) {
  Poids / (Taille)^2
}
MyIMC(80,1.65)
a <- 1
b <- 3.4
c <- as.integer(a)  # Conversion en entier
typeof(c)  # Renvoie "integer"
z <- 1 + 2i
  Re(z)  # Partie réelle → [1] 1
  Im(z)  # Partie imaginaire → [1] 2
  Mod(z) # Module → [1] 2.236
  Arg(z) # Argument → [1] 1.107
  typeof(z)
  is.complex(z)
 a <- 1; b <- 3.4
  a < b  # [1] TRUE
  a == b # [1] FALSE
  x <- c(3, NA, 6)
  mean(x, na.rm=TRUE) 
 0/0  # NaN (Not a Number)
  3/0  # Inf (Infini)
  as.character(2.3)  # "2.3"
 as.numeric("2.3")  # 2.3
 as.integer("3.4")  # 3
x <- as.raw(15)
x  # Affichage en hexadécimal → [1] 0f
mode(x)  # Vérification du type → [1] "raw"
# Création de vecteurs
vec1 <- c(3, 1, 7)
print(vec1)  # Affichage du vecteur
# Mélange de types : R effectue une conversion implicite
vec2 <- c(3, TRUE, 7)  # TRUE est converti en 1
print(vec2)
vec3 <- c(3, T, "7")  # Tous les éléments sont convertis en caractères
print(vec3)
# Génération de séquences numériques
seq1 <- seq(from = 0, to = 1, by = 0.1)
print(seq1)
seq2 <- seq(from = 0, to = 20, length.out = 5)  # Utilisation de length.out pour garantir le bon fonctionnement
print(seq2)
# Création d'un vecteur avec l'opérateur `:`
vec <- 2:36
print(vec)  # Affichage du vecteur
vec <- c(1, 3, 6, 2, 7, 4, 8, 1, 0)
 names(vec) <- letters[1:9] # Attribution des 9 premières lettres de l’alphabet.
vec
# Vérification si vec est un vecteur
vec <- 2:36
print(is.vector(vec))  # Affiche TRUE

# Comparaison entre integer et numeric
x <- 1:3  # Stocké comme integer
print(x)

y <- c(1, 2, 3)  # Stocké comme numeric
print(y)

# Affichage du type de chaque variable
print(class(x))  # Affiche "integer"
print(class(y))  # Affiche "numeric"
X <- matrix(1:12, nrow = 4, ncol = 3, byrow = TRUE)
print(X)
Y <- matrix(1:12, nrow = 4, ncol = 3, byrow = FALSE)
print(Y)
print(class(Y))  # Affiche "matrix"
X <- array(1:12, dim = c(2, 2, 3))
print(X)
print(class(X))  # Affiche "array"
multi_array <- array(1:24, dim = c(2, 3, 4))  # Tableau avec 4 dimensions
print(multi_array)
A <- list(
  TRUE,
  -1:3,
  matrix(1:4, nrow = 2),
  c(1 + 2i, 3),
  "Une chaîne de caractères"
)
print(A)
print(class(A))  # Affiche "list"
B <- list(
  une.matrice = matrix(1:4, nrow = 2),
  des.complexes = c(1 + 2i, 3)
)
print(B)
liste1 <- list(complexe = 1 + 1i, logique = FALSE)
liste2 <- list(chaine = "J’apprends R", vecteur = 1:2)

C <- list(
  "Ma première liste" = liste1,
  Ma.seconde.liste = liste2
)
print(C)
IMC <- data.frame(
  Sexe = c("H", "F", "H", "F", "H", "F"),
  Taille = c(1.83, 1.76, 1.82, 1.60, 1.90, 1.66),
  Poids = c(67, 58, 66, 48, 75, 55),
  row.names = c("Rémy", "Lol", "Pierre", "Domi", "Ben", "Cécile")
)

print(IMC)
print(is.data.frame(IMC))  # Vérifie si IMC est bien un data.frame (TRUE)
print(class(IMC))          # Affiche "data.frame"
print(str(IMC))            # Affiche la structure détaillée du data.frame
print(is.list(IMC))  # Vérifie si IMC est une liste (TRUE)
x <- factor(c("bleu", "vert", "bleu", "rouge", "bleu", "vert", "vert"))
print(x)
print(levels(x))  # Affiche : "bleu" "rouge" "vert"
print(class(x))  # Affiche "factor"
Poids <- c(55, 63, 83, 57, 75, 90, 73, 67, 58, 84, 87, 79, 48, 52)
Poids_categorise <- cut(Poids, 3)
print(Poids_categorise)
IMC <- data.frame(
  Sexe = factor(c("H", "F", "H", "F", "H", "F")),
  Taille = c(1.83, 1.76, 1.82, 1.60, 1.90, 1.66),
  Poids = c(67, 58, 66, 48, 75, 55)
)
print(IMC)
str(IMC) # Affiche la structure du data.frame
z <- ordered(
  c("Petit", "Grand", "Moyen", "Grand", "Moyen", "Petit", "Petit"),
  levels = c("Petit", "Moyen", "Grand")
)
print(class(z))  # Affiche "ordered" "factor"
facteur_exemple <- gl(n = 2, k = 8, labels = c("Control", "Treat"))
print(facteur_exemple)
# Vecteur de dates sous forme de chaînes de caractères
dates <- c("27/02/92", "27/02/92", "14/01/92", "28/02/92", "01/02/92")

# Conversion en format Date avec as.Date()
dates <- as.Date(dates, format = "%d/%m/%y")

# Affichage des dates converties
print(dates)

# Vérification du type de l'objet
print(class(dates))  # Affiche "Date"
dates_complet <- as.Date("27/02/1992", format = "%d/%m/%Y")
print(dates_complet)  # Affiche "1992-02-27"
serie_temporelle <- ts(1:10, frequency = 4, start = c(1959, 2))
print(serie_temporelle)
serie_mensuelle <- ts(1:24, frequency = 12, start = c(2000, 1))
print(serie_mensuelle)
