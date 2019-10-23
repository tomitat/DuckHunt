[exemple_ls]: http://paris-coding.club/subject/duck-hunt/images/exemple_ls.png  "Exemple du résulat de ls"
[exemple_prompt]: http://paris-coding.club/subject/duck-hunt/images/exemple_prompt.png "Exemple de prompt"
[exemple_fichier_dl]: http://paris-coding.club/subject/duck-hunt/images/exemple_fichier_dl.png  "Exemple téléchargement"
[exemple_telechargement]: http://paris-coding.club/subject/duck-hunt/images/exemple_telechargement.png  "Exemple téléchargement"

# 0. Espace de travail
Dans cette partie, nous allons voir ensemble comment vous préparer à coder, pour pouvoir réaliser la suite du sujet sans pépins.

Pour ce faire, je vais vous montrer comment :
- ouvrir un terminal
- afficher le contenu d'un dossier
- créer un dossier
- accéder à ce dossier
- créer un fichier

---
~~← Précédent~~ • [⌂ Menu](index.html) • [Suite →](1.html)

## A. Ouvrir un terminal
Pour ouvrir un terminal, appuyez simultanément sur les touches `Ctrl + Alt + T`.
Une fenêtre noire devrait apparaître.
Il doit y avoir, à l’intérieur, une ligne se finissant par un symbole comme "$".
Cette ligne s’appelle le prompt, elle indique que le terminal que vous venez d’ouvrir est prêt à recevoir des commandes.

> Exemple de prompt :
> ![exemple prompt](http://paris-coding.club/subject/duck-hunt/images/exemple_prompt.png =x100)
## B. Afficher le contenu d'un dossier
Maintenant que votre terminal est ouvert, vous allez pouvoir lancer votre première commande.

Lorsque l'on veut consulter le contenu d'un dossier, on utilise la commande `ls`.
Entrez dans votre terminal :
```sh
ls
```
Puis confirmez votre commande en appuyant sur la touche `Entrée`.

> Exemple de sortie de la commande `ls` :
> ![exemple ls][exemple_ls]

## C. Créer un dossier
Pour créer un dossier, on utilise la commande `mkdir`.
Entrez dans votre terminal :
```sh
mkdir coding
```

> Elle va avoir pour effet de créer un dossier – aussi appelé répertoire – nommé « coding ».
> En changeant le mot qui suit `mkdir` vous pouvez créer un répertoire du nom de votre choix !

## D. Accéder à un dossier
Créer un dossier, c'est bien, y accéder, c'est mieux !
La commande pour changer de répertoire est `cd`.

En suivant la logique précédente, vous pouvez accéder à votre dossier en tapant la commande suivante :
```sh
cd coding
```
> De la même façon qu'avec la commande `mkdir`, vous pouvez changer le nom de dossier que vous précisez derrière `cd`, afin de vous rendre dans un autre répertoire existant.

Voilà ! C'est tout ce dont vous avez besoin de savoir pour lancer une commande dans un terminal, créer un dossier et y accéder.

**Un problème ? Faites-moi plaisir, appelez un cobra : ne restez pas bloqué !**

## E . Éditer des fichiers sources
### Créer un fichier avec emacs
La commande pour créer un nouveau fichier ou pour accéder à un fichier existant est la même. La voici :
```sh
emacs -nw nom_de_votre_fichier
```

Utilisez-la pour créer un fichier nommé `toto.txt` en entrant `emacs -nw toto.txt` dans votre terminal.

> Cette procédure vous sera utile à chaque fois que vous voudrez créer un fichier.
> Si, plus tard dans le sujet, vous avez besoin de créer ou d’ouvrir un fichier, je vous conseille de suivre à nouveau ces instructions.

### Écrire dans emacs
Maintenant que emacs est ouvert, vous pouvez écrire dans votre fichier en utilisant votre clavier.

Écrivez par exemple le nom de votre plat préféré puis passez à l'étape suivante pour sauvegarder et quitter.

### Sauvegarder et quitter
Maintenant, vous devez sauvegarder votre code et quitter l’éditeur en utilisant les raccourcis clavier suivants :
-  `ctrl + x` suivi de `ctrl + s` pour sauvegarder
-  `ctrl + x` suivi de `ctrl + c` pour quitter

> Au début, cela peut paraître compliqué. Mais n’ayez crainte, vous prendrez l’habitude.
> Si vous avez un soucis avec ces raccourcis, demandez de l’aide à un cobra.

## F. Télécharger un fichier dans votre dossier
A plusieurs reprises dans le sujet, vous allez être amenés à télécharger des fichiers.

Voici la procédure à suivre afin d'y parvenir.

---
Lorsque vous cliquez sur `save target as` ou sur `télécharger la cible sous` dans Firefox : une fenêtre d'enregistrement devrai apparaître pour vous demander ou placer le nouveau fichier.
Pour enregistrer votre fichier dans le dossier `coding` créé plus tôt :
 - **appuyez** sur `Home` *sur la barre latérale de gauche* ;
 - **double-cliquez** sur `coding` ;
 - **validez** en appuyant sur `Save` *en haut à droite*.

![exemple telechargement][exemple_telechargement]

---
**Pour vérifier** dans un terminal, après avoir préalablement fait `cd coding`, faites `ls`.

Vous deviez voir un nouveau fichier s'afficher, comme ceci (dans l'exemple le fichier s'appelle "gfx.py" et il est bien apparu) :
![exemple fichier dl][exemple_fichier_dl]

---
*Fin de partie*

~~← Précédent~~ • [⌂ Menu](index.html) • [Suite →](1.html)
