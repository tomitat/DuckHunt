# 3. Logique de jeu

---
[← Précédent](2.html) • [⌂ Menu](index.html) • ~~Suite →~~

# 3.1. Rafraîchir une fenêtre et déplacer une image

Maintenant que vous savez afficher ~~un sprite animé~~ une image et un fond, pourquoi ne pas tenter de le faire avancer ?

__Ajoutez__ ces lignes dans votre programme juste avant votre "show":
```ruby
update do # update permet de rafraichir la fenêtre

  if tick % 10 == 0 # on vérifie qu'il y a eu 10 images d'affichées avant d'actualiser
	  bird.x += 10 # on fait avancer l'oiseau de 10 pixels
  end # fin du if

  tick += 1 # on incremente le nombre d'image affichées
end # fin du do
```
Cette boucle permet de faire avancer votre oiseau de 10 pixels horizontalement (sur l'axe x) toutes les 10 images affichées.

Et si vous tentiez de modifier cette valeur pour voir comment se comporte l'oiseau ?

>Bonus: En modifiant bird.y également vous pouvez lui donner des trajectoire diagonales !

# 3.2. Garder l'oiseau à l'écran
## 3.2.a. Sauvez l'oiseau !
Dans votre version actuelle l'oiseau traverse l'écran et disparaît à jamais..c'est triste. Ceci est dû au fait que l'oiseau ne s’arrête jamais, il continue donc à avancer mais hors de notre vue, pour l'éternité.

Pour éviter cela, il faut ajouter une condition tel que lorsque l'oiseau sort de la fenêtre, on le replace au début de notre axe x.

> Astuce: au lieu d'augmenter la valeur de bird.x vous pouvez lui attribuer directement une valeur comme à n'importe quelle variable

## 3.2.b. RAND(ez) l'oiseau plus vivant !
C'est réussi ?

SUPER !

Vous voulez rendre cela plus vivant ? Pourquoi ne pas utiliser la fonction rand() pour le placer à un endroit aléatoire sur l'axe y ?

Voici comment on utilise la fonction:
> rand(NOMBRE_MAXIMUM)

Ainsi, la ligne suivante nous donnera un nombre entier compris entre 0 et 10:

```ruby
rand(10)
```
__Faites donc en sorte__ que l'oiseau réaparaisse à une hauteur aléatoire à chaque fois qu'il recommence sa traversée de l'écran.

Jouer avec l'aléatoire peut avoir des résultats surprenant, si le coeur vous en dit faites quelques expériences !

# 3.3. Interagir avec le jeu
## 3.3.A. Maintenant, tuez le.
A ce stade vous avez un oiseau qui parcourt l'écran en boucle. C'est sympa mais nous on veut un jeu, pas un gif.

Ajoutons donc des __interactions__ entre le joueur et le jeu !

En ruby il existe un moyen simple et rapide à mettre en place pour utiliser la souris:

```ruby
on :mouse_down do |e| # si l'utilisateur clique, alors ..                          \
        # on effectue n'importe quelle action que l'on veut
end # fin du do
```
En utilisant les lignes précédemment données, faites retourner notre oiseau adoré au bord de la fenêtre lorsque vous cliquez n'importe où..
***
Une fois que cette tâche est réussie, vous devrez récupérer l'emplacement du clic et vérifier si l'oiseau est bien ciblé par la souris, ceci peut vous aider:
```ruby
# ceci permet de récupérer la position exacte de la souris
mouse_X = get :mouse_x
mouse_Y = get :mouse_y

# et ceci la position de l'oiseau
bird_X = bird.x
bird_Y = bird.y
```

> Pour savoir si vous touchez votre pigeon, ne faut pas seulement regarder si votre souris est à la même position en x et en y.
> L'origine de votre pigeon est en effet à bird.x et bird.y mais il s'étend sur plusieurs pixels en abscisses et en ordonnées.
> Voici un exemple, imaginez simplement qu'il y a un pigeon dans le carré :
>
> ![Carré](http://paris-coding.club/subject/duck-hunt/images/schéma_carré.png)

## 3.3.B. Et le score dans tout ça ?
Maintenant que vous pouvez tuer votre oiseau, il faudrait rendre cela plus gratifiant non ? Ajoutons donc un score !

Il y a une multitude de moyens de le faire, dans ma grande bonté je vais vous en donner deux mais soyez libres de laisser votre imagination vous guider.
### a. Les batons

La première méthode dite des bâtonnets consiste à afficher un texte auquel vous ajouterez un `|` chaque fois que vous touchez l'oiseau. En ruby c'est plutôt simple, mais je vais devoir vous apprendre quelques bricoles d'abord.

La ==concaténation==  est une notion relativement simple, si l'on considère un mot comme une suite de lettres, en "additionant" deux mots grâce à l'opérateur `+` on peut les coller l'un à la suite de l'autre.
```ruby
variable_inutile_1 = 'Bonjou'
variable_inutile_2 = 'r à vous'
variable_inutile_3 = variable_inutile_1 + variable_inutile_2

```
La variable_inutile_3 vaut maintenant "Bonjour à vous", formidable non ?
Ainsi, en ajoutant `|` à la variable score à chaque fois que l'oiseau est tué on obtient une barre de score qui s'allonge.


### b. Les chiffres
La seconde qui est peut être la plus connue est également assez simple, il vous suffit de créer une variable contenant un nombre et d'augmenter ce nombre à chaque touche.

D'autres part, vous pouvez complexifier le calcul des scores en ajoutant dans l'équation, une variable dépendant de la position de l'oiseau.

---

Tout ceci est bien joli mais pour que vous puissiez l'afficher il faut d'abord créer une classe de texte, je vous invite à relire la page précédente du sujet si vous avez oublié comment faire.

Pour mettre à jour ce texte, ne cherchez pas loin, il suffit de faire ça:
```ruby
votre_text.text = 'nouveau texte'
```
> Astuce: l'opérateur += fonctionne également sur la ligne précédente

# 3.4. Lui laisser une chance ?
Vous voilà avec un jeu bien avancé, mais ces pauvres oiseaux se font tirer dessus à la chaîne sans avoir aucune chance de gagner, rajoutons donc une condition de défaite pour leur laisser une chance.

En modifiant la fonction qui vérifie la position de votre clic et celui de l'oiseau, __ajoutez le cas__ où le joueur manque sa cible et faite en sorte qu'au bout de trois échecs le jeu se ferme.

>Cette tâche peut être accomplie en ajoutant 5 lignes (pas forcément à la suite) dans votre code

Pour sortir du programme de manière un peu directe, utilisez:
```ruby
close
```
Une fois ceci accompli, __affichez un texte de défaite__ à l'écran et stoppez l'action au lieu de fermer le jeu.

# 3.5. Pour aller plus loin
Ma foi il me semble que vous avez tout juste fini de coder un duck hunt plutôt pas mal ! GG !

![enter image description here](https://66.media.tumblr.com/6a2532511a92089553eae0c65b1584b1/tumblr_nqtvm4UiFA1u5mnn7o1_500.gif)
Et maintenant ? Appelez déjà un cobra ? Ensuite pourquoi ne pas ajouter de nouvelles fonctionnalités ? Plusieurs oiseaux qui volent ? Un viseur ? Un temps de recharge à votre arme, des munitions limitées, une musique, des explosions ou de la VR ?

Voici ci dessous des fonctionalités de ruby qui peuvent vous être utiles, également je vous conseille la [documentation de ruby2d](http://www.ruby2d.com/learn/) (en anglais) et internet pour chercher de l'inspiration.

## Interagir avec le clavier
```ruby
on :key_down do |event|   # une touche est pressée
  # votre code va ici
end

```
ou
```ruby
on :key_held do |event|   # une touche est maintenue enfoncée
  # votre code va ici
end

```
## Avec la souris

```ruby
on :mouse_move do |event| # la souris bouge
  # ceci vous imprimera dans le terminal le changement de position effectué
  puts event.delta_x
  puts event.delta_y

  # et ca les coordonées actuelles
  puts event.x, event.y
end
```
## Utiliser du son
```ruby
despacito = Sound.new('despacito.wav')

# lance la musique despacito
despacito.play
```
Celles là aussi peuvent servir
```
# met pause (dur à deviner)
despacito.pause

# remet play (si si je vous jure)
despacito.play

# coupe la musique et la remet à zéro
despacito.stop

# fait tourner la musique en boucle
despacito.loop = true

```

---
[← Précédent](2.html) • [⌂ Menu](index.html) • ~~Suite →~~

