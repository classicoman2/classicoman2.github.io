---
layout: default
title: Expressions Regulars
permalink: /regexpr
---

# EXPRESSIONS REGULARS

<!-- toc -->

- [Materials](#materials)
- [Expressions regulars](#expressions-regulars)
  * [Què son](#que-son)
  * [Taula de caràcters i metacaràcters (font: [aqui](https://regexone.com/lesson/introduction_abcs))](#taula-de-caracters-i-metacaracters-font-aquihttpsregexonecomlessonintroduction_abcs)
    + [1.- Caràcters constants](#1--caracters-constants)
    + [2.- Metacaràcters generals](#2--metacaracters-generals)
    + [3.- Grups i rangs](#3--grups-i-rangs)
    + [4.- Quantificadors](#4--quantificadors)
    + [5.- Alternatives](#5--alternatives)
    + [6.- Marques inici i final](#6--marques-inici-i-final)
    + [7.- Caràcters Escapats](#7--caracters-escapats)
- [Exercicis](#exercicis)

<!-- tocstop -->

## Materials

Eina per practicar amb expressions regulars de forma interactiva, amb _cheat sheet_:

[https://regexr.com/](https://regexr.com/)

Alguns Tutorials:

- [Referència Expressions Regulars en Javacript (W3Schools)](https://www.w3schools.com/jsref/jsref_obj_regexp.asp)
- [Regular expressions - JavaScript a MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions)
- [Regular Expressions](https://eloquentjavascript.net/09_regexp.html)

- [Video explicatiu molt recomanable](https://www.youtube.com/watch?v=rhzKDrUiJVk)

[![IMAGE ALT TEXT](https://img.youtube.com/vi/rhzKDrUiJVk/0.jpg)](https://www.youtube.com/watch?v=rhzKDrUiJVk "Video Title")

## Expressions regulars

### Què son

Les expressions regulars són _patterns_ emprats per trobar combinacions de caràcters en _strings._

Procedeixen del llenguatge formal i matemàtic. S&#39;empren en molts de contextos,

Les expressions regulars es poden emprar amb:

- Els mètodes **exec()** i **test()** que són propis d&#39;expressions regulars
- Els mètodes de _strings:_ match(), matchAll(), replace(), replaceAll(), search() i and split()

###


### Taula de caràcters i metacaràcters (font: [aqui](https://regexone.com/lesson/introduction_abcs))

#### 1.- Caràcters constants

**abc** Lletres

**123** Digits numèrics

#### 2.- Metacaràcters generals

- **.** Qualsevol caràcter (només 1)
- **\w** Qualsevol caràcter alfanumèric
- **\W** Qualsevol caràcter no alfanumèric
- **\d** Qualsevol dígit numèric
- **\D** Qualsevol caràcter **no** dígit numèric
- **\s** Espai en blanc
- **\S** Qualsevol caràcter manco l&#39;espai en blanc

#### 3.- Grups i rangs

- **[abc]** Només a, b o c (separadament)
- **[^abc]** Ni a, ni b ni c
- **[a-z]** Rang: Characters de la _a_ a la _z_ (minúscules)
- **[A-Z]** Rang: Characters de la _A_ a la _Z_ (majúscules)
- **[0-9]** Números de 0 a 9
- **(abc)** Grup

#### 4.- Quantificadors

- **a\*** Zero o més repeticions de a
- **a+** Una o més repeticions de a
- **a{m}** m repeticions de a
- **a{m,}** Com a mímin _m_ repeticions de a
-**a{m,n}** De m a n repeticions de a

#### 5.- Alternatives

- **x?** a és opcional (pot sortir o no)
- **(abc|def)** Captura abc o def

#### 6.- Marques inici i final

- **^a** Comença amb a
- **a$** Acaba amb a

#### 7.- Caràcters Escapats

- **\.** Punt (&quot;Escapat&quot; per no confondre amb el metacaràcter general . )
- **\?** Interrogant (&quot;Escapat&quot; per no confondre amb el metacaràcter opcional ? )
- etc.

## Exercicis

Intenta resoldre els exercicis d&#39;aquesta [pàgina web](https://regexone.com/lesson/introduction_abcs)

Veurem que hi ha sempre unes quantes solucions possibles, es tracta de trobar sempre la més _precisa._

**Proposta nadalenca:** Proposa solucions a cada exercici en les caselles d&#39;aquest [full de càlcul](https://docs.google.com/spreadsheets/d/1vxq-v95BA-DvFWVSmcBJaYME5xxFvuGJyqoPmOOpahU/edit#gid=0)


