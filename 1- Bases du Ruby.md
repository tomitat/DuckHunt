# 1. Les bases du Ruby
Cette partie couvre les bases de la programmation en Ruby. Avant de

---
[← Précédent](0.html) • [⌂ Menu](index.html) • [Suite →](2.html)

# 1.1. Votre premier programme
En Ruby, la constitution minimale d'un programme est très simple. Il suffit d'écrire votre code et il sera exécuté de façon linéaire, de haut en bas.

Nous allons commencer par afficher un mot ou une phrase sur notre terminal.

## 1.1.a. Contenu du fichier
```rb
puts("toto")
```

Copiez le code dans le petit encart et collez-le dans un fichier appelé `bases.rb`.

> Souvenez-vous de la partie précédente : `emacs -nw bases.rb`
> Pensez également à sauvegarder et a quitter l'éditeur.

Vous pouvez modifier le contenu entre guillemets avec le mot ou la phrase de votre choix.

## 1.1.b. Explications
Ici, nous avons donc une seule et unique ligne de code. Il s'agit d'un **appel de fonction** à une fonction appelée `puts`.

> Traduit en français `puts` c'est le verbe **mettre** à la troisième personne du singulier. 
> Le rôle de la fonction est de **mettre** un mot ou une phrase dans le terminal.

## 1.1.c. Lancez votre programme
Après avoir compris le code et l'avoir mis dans un fichier, on peut le tester en le lançant.

Dans votre terminal et en dehors de l'éditeur de code `emacs`, entrez la commande suivante :
```sh
ruby bases.rb
```

Vous devriez vous votre phrase s'afficher, dans le terminal. Si oui, c'est super ! Vous pouvez passer à la suite.

Sinon, vous demandez à un cobra de vous aider !

# 1.2. Les variables
Cette partie à pour but de vous faire comprendre le concept des variables. Elles sont essentielles à un programme.

## 1.2.a. Définition
**Qu’est-ce qu’une variable ?**

Une _variable_ est un _outil_ qui permet de **mettre une valeur en mémoire**. On parle aussi de stocker une variable.

On accède à une variable en l’appelant par le nom que l'on a utilisé pour la déclarer.

## 1.2.b. Exemple
```rb
# Déclaration d'une variable nommée "age"
age = 42

# On affiche age en y accèdans grace à son nom...
puts(age)

# Déclaration d'une variable nommé pizza
# on stocke un phrase dedans
pizza = "quatre fromage supplément champi"

# On l'affiche...
puts(pizza)

# Maintenant, je pense que vous avez compris l’idée,
# cette dernière ligne n’est pas difficile à comprendre.
pi = 3.14
puts(pi)
```

## 1.2.c. Essayez vous-même !

> Conseil : si vous n’êtes pas dans votre fichier `bases.rb`, ouvrez-en un en utilisant `emacs -nw main.c` comme décrit précédemment.

----------

**Énoncé**
Dans votre fichier `bases.rb` :
- déclarez une variable qui s'appelle  `divine_proportion` ;
-   attribuez lui la valeur : `1,61803` ;
-   affichez la en utilisant un appel à la fonction `puts`.


---
**Comment tester ?**

Il suffit de lancer la même commande qu'avant : 
```sh
ruby bases.rb
```

Si tout à bien fonctionné, votre programme devrait afficher ceci :
```
1,61803
```

---
**Avez-vous des difficultés ?**

Si oui, demandez de l’aide à un cobra.

----------

**Vous avez fini l’exercice ?**

Si oui, vous êtes libres de :

-   demander à un cobra si vous avez correctement effectué l’exercice ;
-   passer à la suite.

# 1.3. Opérateurs sur les variables
Maintenant que vous voyez comment vous servir des **variables**, nous allons voir ce que l’on peut faire avec.

Les opérateurs permettent d’effectuer des opération mathématiques basiques avec des valeurs.

## 1.3.a. Description des opérateurs

Les opérateurs que nous allons voir aujourd’hui :

-   `=` : assignation,
-   `+` : addition,
-   `-` : soustraction,
-   `*` : multiplication,
-   `/` : division,
-   `%` : modulo (souvenez-vous de la division euclidienne).

Ils se comportent comme vous l’imaginez – regardez ci-dessous.

## 1.3.b. Utilisation

```rb
a = 10 / 3;     # a == 3
b = 10 % a;     # b == 1
c = 10 + 4 + b; # c == 15
d = 10 - 6;     # d == 4
# etc...
```
> Note : nous allons utiliser les opérateurs dans la partie suivante.

# 1.4. Vos propres fonctions

Pour mettre en pratique cette dernière notion, vous devez apprendre comment déclarer et utiliser les fonctions.

## 1.4.a. Définition

Une fonction a pour but **d’effectuer une certaine tâche** grâce à un **ensemble d’instructions**.

Les fonctions peuvent faire des opérations telles que :

-   **afficher quelque chose** à l’écran ;
-   **additionner deux nombres** ensemble et **renvoyer** le résultat de l’addition ;
-   _et bien d’autres choses_...

----------

On considère qu’une fonction :

-   peut en **appeler** une autre ;
-   peut **s’appeler** elle-même ;
-   peut prendre une ou plusieurs valeurs en guise de **paramètres** ;
-   peut **renvoyer** une valeur.

Un **paramètre de fonction** est une valeur qui est envoyée à votre fonction au moment de l’appel.  
Au cœur de la fonction, un **paramètre** s’utilise de la même manière qu’une **variable**.

----------

Regardons un exemple de fonction simple :

```rb
def print_add(var1, var2)
        var3 = var1 + var2
        puts(var3)
        return var3
end
```

Le *mot clé* `def` sert a indiquer que l'on commence à déclarer une fonction.

Le *mot clé* `end` indique que l'on a fini la déclaration de notre fonction. 

La fonction s’appelle `print_add` et prend deux paramètres.

La fonction a trois instructions (elle réalise trois choses) :
-   la première ajoute les deux paramètres entre eux ;
-   la seconde affiche le résultat de cette addition ;
-  la dernière renvoie le résultat.

> Lorsque vous écrirez vos propre fonction, vous serez libres de déclarer une fonction qui a zéro, un, deux, trois, ou plus de paramètres.  
> Également, vous pouvez les nommer comme vous le souhaitez.  
> De même, vous pouvez choisir le type de chaque paramètre.

---
**Comment appeler cette fonction après l'avoir déclarée ?**

```rb
# On déclare la fonction (une seule fois suffit)
def print_add(var1, var2)
        var3 = var1 + var2
        puts(var3)
        return var3
end

# On l'appelle en écrivant son nom et en précisant les valeurs
# à envoyer en paramètres entre parenthèses.
print_add(12, 2)

# On peut aussi mettre le résultat (ce qui à été "return")
# de la fonction dans une variable :
resultat = print_add(4, 6)
```

## 1.4.b. Exercice

_C’est maintenant à vous de jouer !_

**Énoncé**

Ce que vous devez faire : écrire une fonction nommée `my_square_nb` qui prend un nombre en paramètre et qui renvoie sa valeur mise au carré.

----------

**Comportement attendu**

Ce qui suit est un exemple que vous pouvez utiliser pour tester la fonction que vous devez coder. Vous pouvez ajouter ces lignes à votre fonction main.

```rb
# On déclare une variable pour stocker le résulat.
result = my_square_nb(12)
puts(result)
#  Doit afficher 144.

result = my_square_nb(2)
puts(result)
# Doit afficher 4.
```

----------

> Si vous êtes en difficulté ou si vous avez des problèmes, appelez un cobra.

----------

Une fois que vous avez fini cet exercice, je vous invite à passer à la suite !

----------

Si vous n’êtes pas sûr de ce que vous avez produit, vous pouvez demander à un cobra de vous corriger.

# 1.5. Les boucles et les conditions

Dans cette partie, nous allons voir comment fonctionnent les boucles et les conditions.

On les appelle aussi **structures de contrôle** ou encore **tests**.

## 1.5.a. Définition des tests si, sinon si, sinon

Le test _si_ va vous permettre de soumettre l’exécution d’une partie de votre programme à une condition.

Pour mieux le comprendre, nous allons étudier sa syntaxe.

----------

**Exemple de condition** _if, else if, else_

```ruby
var = "pichu"
if var == "raichu"
	puts("var est un raichu")
elsif var == "pikachu"
	puts("var est un pikachu")
elsif var == "pichu"
	puts("var est un pichu")
else
	puts("aucune idée")
end
```

----------

**Explications**

Dans cet exemple, on remarque de nouveaux mots clés, ils sont :

-   _if_ : permet de tester le contenu entre parenthèses ;
-   _elsif_ : si le test précédent a échoué, permet de tester un autre cas ;
-   _else_ : si tous les tests précédents ont échoué, ses instructions seront exécutées.

> Attention : un test _elsif_ ou _else_ **suit toujours** un test _if_.

## 1.5.b. Opérateurs de comparaison

L’utilisation de structures de contrôle va souvent de paire avec celle des opérateurs de comparaison.

Leur utilisation est assez simple, le tout est de ne pas les confondre avec les opérateurs arithmétiques.

**Liste des opérateurs**

Opérateur | Test
---|---
`==` | Égalité
`!=` | Différence
`<` | Infériorité
`<=` | Infériorité ou égalité
`>` | Supériorité
`>=` | Supériorité ou égalité

## 1.5.c. Exercice sur les conditions

_A votre tour d’essayer !_

**Énoncé**

Écrivez une nouvelle fonction nommée `is_even` qui prend un `ìnt` en paramètre et qui affiche :

-   « le nombre est pair » : _si le nombre passé en paramètre est pair_ ;
-   « le nombre est impair » : _si le nombre passé en paramètre est impair_.

> Conseils :
> 
> -   regardez du côté des opérateurs ;
> -   utilisez les tests _if_.

----------

Comme à chaque exercice, je vous conseille de voir avec vos cobras, si vous êtes bloqués.

## 1.5.d. Définition du test tant que

Les boucles permettent de répéter les mêmes instructions, plusieurs fois à la suite.  
Lorsqu’on écrit une boucle, on doit spécifier une condition.

-   Tant que la condition est valide, la boucle continue.
-   Si la condition n’est plus valide, la boucle s’arrête.

En ruby, le test _tant que_ s’appelle _while_.

----------

**Exemple de boucle**

```rb
# On donne la valeur de 0 à la variable nommée "a".
a = 0

# Tant que la valeur de `a` est inférieure à 10...
while a < 10
	puts(a)
	# ... on ajoute 1 à la variable.
	a = a + 1
end

# On peut vérifier la valeur :
puts(a)
```

----------

**Explications**

Le code protégé par le test _while_ sera exécuté tant que la condition `a < 10` est valide.

## 1.5.e. Exercice sur les boucles
**Ce que vous devez faire :**

Écrivez une fonction nommée `multiply` qui :
- prend deux nombres en paramètre ;
- les multiplie **sans utiliser le symbole :** `*` ;
- renvoie le résultat de la multiplication.

> La multiplication, ce n'est que des additions en boucle, non ?

----------

Comme d’habitude, en cas de blocage ou de question, faites signes aux cobras.

----------

Si vous avez réussi : félicitations ! Vous comprenez maintenant le concept des structures de contrôle.

---
[← Précédent](0.html) • [⌂ Menu](index.html) • [Suite →](2.html)

