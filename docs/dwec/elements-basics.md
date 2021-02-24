---
layout: default
title: Elements bàsics
permalink: /basics
---

# 2 Elements bàsics

<!-- toc -->


## 1_Sintaxi bàsica de JS
[Font](https://www.w3schools.com/js/js_syntax.asp)

La sintaxi de JS comprèn totes aquelles normes que estableixen com toca escriure les instruccions: com declarar variables, com assignar valors, com realitzar operacions, etc..

### Literals
- Els nombres poden tenir o no decimals. El decimal es marca amb un punt
- Els strings poden escriure's entre " " o entre ' '
- Els booleans s'escriuen com true i false

Podem assignar el literal `null` a una variable, que significa que no té valor. (Més endavant veurem quin ús té null i en quins casos ens el podem trobar)

### Variables
- Les variables són contenedors per a guardar-hi valors.
- En JS, no és imprescindible declarar les variables. Els podem assignar un valor automàticament i això farà innecessària la seva declaració.
- Tanmateix, és bona idea seguir el costum de declarar les variables, emprant el tradicional var (variables globals), let (variables locals) i const (ho veurem més endavant)
- Algunes normes a l'hora d'escriure els noms de les variables:
  * JS és case sensitive, o sigui, és sensible a majúscules i una 
variable és diferent del seu equivalent en majúscules. Un [Exemple](https://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_case) 
  * El primer caràcter d'una variable ha de ser una lletra, un underscore (_) o bé el signe de dòlar ($) (aquest darrer cas no el recoman en JS)
  * L'ús de guions en les variables no està permès, underscore _ en canvi, sí
  * És un bon costum emprar camel case per declarar variables amb 2 o més paraules, exemple: firstName, lastName, cityCode...

| Exemple |
| ------- |
| [variables_names.html](https://github.com/classicoman2/guide_javascript/blob/master/01/variables_names.html) |


### Operadors i expressions.
Les expressions poden contenir tant variables com literals. Veurem
més sobre operadors i expressions al proper capitol

### Unicode
- JavaScript empra el conjunt de caràcters Unicode. 
- Unicode cobreix gairebé tots els caràcters i símbols existents.

Per a més info, [[Complete Unicode Reference](https://www.w3schools.com/charsets/ref_html_utf8.asp)


## 2_Comentaris (bàsic)

Les maneres usuals d'escriure comentaris són:
- Comentari unilinia a sobre d'una expressió.
- Comentari unilinia a la mateixa línia.
- Comentari multilinia.

Apart de seguir l'estàndard **JSDoc** en funcions i altres construccions abstractes, només cal comentar allò que pot ajudar un altre/a programador/a a entendre com funciona el vostre codi (aquest/a programador/a podeu ser vosaltres mateixos al cap d'un temps!)

Els comentaris són molt útils també per [prevenir l'execució d'un bocí de codi]{.ul}.

Alerta! No abuseu dels comentaris per aquesta funcionalitat,

podrieu acumular grans quantitats de codi inservible que dificultarien la llegibilitat del vostre codi.

Quan entregau un codi o el penjau a un repositori, NO hi hauria

d'haver blocs de codi anulats amb comentaris → mala llegibilitat i genera confusió

## 3_Funcions [#]{.ul}

Una funció és un troç de codi que empra uns valors passats per paràmetre, realitza una tasca concreta i torna uns resultats

Una funció es declara quan es defineix el seu comportament, i quan es necessita es crida o s'invoca. [Exemple]{.ul}

Les funcions poden emprar-se múltiples vegades

Sintaxi de la funció
```fs
function name(parameter1, parameter2, parameter3) {
  //Code to be executed
}
```
Una funció és declara amb la keyword function seguida del nom i els parèntesis

Els noms de les funcions segueixen les mateixes normes que els [noms de les variables]{.ul}

Puc emprar una funció maldament l'hagi declarada amb posterioritat al seu ús, gràcies al [hoisting]{.ul}:

Exemple [function_declaration.html]{.ul}

### Paràmetres
Dins dels parèntesis, es poden especificar cap, un o més paràmetres

Els paràmetres, si son valors simples (integer, real, string o boolean) se passen per valor

Els paràmetres, si son arrays o objects, se passen per referència.

Repassa! Quina diferència hi ha entre passar per valor i passar per referència?

Exemple [function-parameters.html]{.ul}

### Return
Quan apareix una sentència de tipus return la funció deixa d'executar-se

El valor de retorn pot ser un literal, una expressió o la invocació d'una altra funció

[Exemple bàsic]{.ul} de funció que retorna

### Comentar una funció amb JSDoc
En crear una funció, cal que la documentem emprant el format JSDoc. [Més info sobre el format JSDoc]{.ul}

Exemple [function-commented.js]{.ul}

Per a que es generi automàticament el format de documentació JSDocs, escriu /** a la línia immediatament superior a la declaració de la funció i espitja intro

Més info sobre JSDoc:

[https://javascript.info/comments]{.ul}

[https://en.wikipedia.org/wiki/JSDoc]{.ul}

### Altres
Les cridades a funcions poden emprar-se en expressions, com elsliterals i variables. [Exemple]{.ul}

En JS es poden passar funcions per paràmetre d'altres funcions.
