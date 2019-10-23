# 2. Les bases de Ruby2D
Ruby2D est le nom de la bibliothèque graphique que nous allons utiliser pour réaliser ce projet.

Nous allons commencer par vous expliquer comment ouvrir une fenêtre puis comment afficher des choses à l'écran.

> Note aux cobras : le sujet à été modifié pour ruby2d 0.5.1 et a été originalement pensé pour la version 0.8.1.

---
[← Précédent](1.html) • [⌂ Menu](index.html) • [Suite →](3.html)

# 2.1. Ouvrir une fenêtre

Pour ouvrir une fenêtre, et de manière générale pour utiliser des outils graphiques en Ruby, il vous faut ajouter **Ruby2d** qui est la librairie graphique que nous utilisons. Pour cela, **ajoutez** tout en haut de votre code :
```rb
require 'ruby2d'
```
Vous devrez le faire pour chaque nouveau fichier que vous créerez et qui utilisera Ruby2d.

***

Revenons en au fait ! Créons notre première fenêtre. Tout d'abord, nous devons définir la taille et le titre de notre fenêtre. On va la faire la plus grande possible, pour vos écrans c'est une résolution de 1280 x 720. **Rajoutez** donc ceci dans votre code :
```rb
set width: 1280 # On définit la largeur à 1280 Pixels
set height: 720 # Ici on définit la hauteur à 720 Pixels
set title: "Coding Club @ Paris" # Et là on met juste un titre à notre fenêtre :p
show
```

Si vous exécutez ceci vous verrez votre première fenêtre qui apparaît sous vos yeux. Malheureusement cette fenêtre est vide, il faudrait la remplir un peu en mettant un ``background`` par exemple.

Si jamais votre fenêtre ne s'affiche pas ou qu'il y une erreur, n'hésitez pas à faire appel aux **Cobras** !

# 2.2. Un vent de fraîcheur dans la fenêtre
## 2.2.a. Une couleur comme fond d'écran
Votre fenêtre est basique, trop basique. Un fond d'écran (ou ``background``) noir c'est un peu dépassé, vous ne trouvez pas ?
C'est pourquoi je vous propose de rajoutez un peu de couleur dans votre fenêtre. Pour cela, **rajoutez** cette ligne juste avant ``show`` dans votre programme :
```rb
set background: "blue"
```
Exécutez et hop ! Vous avez un ``background`` bleu.


>Vous pouvez remplacer ``blue`` par d'autre couleur, en voici une liste non exhaustive :
``navy``, ``blue``, ``aqua``, ``green``, ``yellow``, ``orange``, ``red``, ``brown``, ``fuschia``, ``purple``, ``white`` et bien d'autre.
>Vous pouvez aussi essayer de mettre ``random`` à la place de ``blue`` ça pourrait avoir des effets assez drôles par la suite du sujet si vous décider de le laisser.

Bon j'en conviens, une fenêtre avec un fond d'écran coloré c'est pas beaucoup plus passionnant. C'est pour ça qu'on va préférer mettre une image !

## 2.2.b. Une Image en fond d'écran
Là ça commence à devenir intéressant, on va apprendre à afficher une image dans votre fenêtre à partir d'un fichier.
Commencez d'abord par télécharger un fond d'écran sur internet de la même taille que la fenêtre (1280 x 720) puis déplacez la dans le même dossier que votre programme.
Si vous ne savez pas comment faire, **demandez à un Cobra** !
***
Une fois que vous avez votre image, vous pouvez la rajoutez dans votre fenêtre, pour cela **rajoutez** ceci à la place de ``set background`` :
```rb
background = 'background.jpg' # Correspond au nom de fichier de votre image téléchargée
Image.new(path: background, x: 0, y: 0)
```
Et vous voilà maintenant avec une image comme fond d'écran de votre jeu, mais ce n'est que le début. Nous allons rajouter d'autre objets dans notre fenêtre qui nous permettrons de continuer.

# ~~2.3. Il bat des ailes ! L'image est animée~~
_Section supprimée pour problèmes logistiques_

# 2.3. Il nous faut un pigeon !
Dans notre jeu de tir, nous avons besoin de tirer sur un oiseau. Il vous faut donc chercher une image de pigeon ou de votre oiseau favori sur internet, la télécharger et la sauvegarder dans votre dossier de travail.

Une fois cela fait : ajouter l'oiseau dans votre fenêtre en utilisant `Image.new`...

# 2.4. Ajouter du texte
Maintenant que je vous ai appris les fondamentaux de Ruby2d, pour parfaire votre futur jeu je vais vous aider à afficher du texte. Mais je vais je ne vais faire que vous donner les clés pour en créer un, vous vous en servirez que plus tard dans votre jeu.
***
Pour commencer, on crée un texte de la même manière qu'une image ou un sprite :
```rb
Text.new()
```
Dans les parenthèses, nous devons renseigner plusieurs informations à notre texte. En voici la liste dans l'ordre :

```rb
var_de_texte = Text.new(
	text: 'Mon texte à afficher',
	x: 0,
	y: 0,
	size: 20,
	color: 'black',
	font: '/usr/share/fonts/truetype/Nakula/nakula.ttf'
)
```

> Éviter de changer la fonte, sinon, vous risquez d'avoir une erreur !

 **ATTENTION !** Il est **très** important que vous respectiez cet ordre d'affichage pour le texte sinon votre programme ne fonctionnera pas !

# 2.5. Finition
Si vous assemblez tout ce que je vous ai appris jusque là vous devriez tomber sur quelque chose qui ressemble à ceci :

![Apercu résulat](http://paris-coding.club/subject/duck-hunt/images/aperçu_résultat.png)

---
Et voilà, j'ai fini de vous apprendre les bases ainsi que tout ce que vous avez besoin de savoir sur **Ruby2d** pour créer votre *Shoot the duck*. si jamais à un moment vous avez un petit trou de mémoire, n'hésitez pas à faire appel aux **Cobras** et à revenir sur cette page.

---
*Fin de section*

---
[← Précédent](1.html) • [⌂ Menu](index.html) • [Suite →](3.html)

