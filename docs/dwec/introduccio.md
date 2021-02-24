---
layout: default
title: Introduccio a Javascript
permalink: /introduccio
---
# 1 Introducció a Javascript

<!-- toc -->

- [1. Marc de treball](#1-marc-de-treball)
  * [Eines recomanades](#eines-recomanades)
    + [Entorn VSC](#entorn-vsc)
    + [Organització de dades, git, github (recomanacions)](#organitzacio-de-dades-git-github-recomanacions)
- [2 Escriure codi en JS](#2-escriure-codi-en-js)
  * [Pràctiques Recomanables](#practiques-recomanables)
    + [Punts i Coma](#punts-i-coma)
    + [Espais en Blanc](#espais-en-blanc)
    + [Blocs](#blocs)
- [3. Mostrar dades per la interfície](#3-mostrar-dades-per-la-interficie)
- [4. Escriptura d'events (bàsic)](#4-escriptura-devents-basic)
- [5. Llocs on es pot escriure codi Javascript](#5-llocs-on-es-pot-escriure-codi-javascript)

<!-- tocstop -->

Lectures interessants:
- [Javascript a MDN](https://developer.mozilla.org/ca/docs/Web/JavaScript)
- [El lenguaje de programación que cambió la web (y tu vida) cumple 25 años](https://elpais.com/tecnologia/2020-08-28/el-lenguaje-de-programacion-que-cambio-la-web-y-tu-vida-cumple-25-anos.html?rel=cla_articulo#1598695534986)
- [ECMAScript](https://en.wikipedia.org/wiki/ECMAScript)

## 1. Marc de treball
### Eines recomanades

#### Entorn VSC
Per aquest curs, recomano emprar l'entorn de desenvolupament Visual Studio Code

És molt pràctic aprendre a crear un __Workspace__. Un workspace permet ajustar les extensions adequades a cada entorn de treball (Javascript, HTML, programació back, ...) per tal de treballar més còmodament i d'una forma més eficient.

#### Organització de dades, git, github (recomanacions)

* Directori de Pràctiques
  - Crea en el teu ordinador un directori específic on guardar els Projectes.
* Exercicis i Proves
  - T'aconsello crea un directori associat a un repositori git per guardar exercicis de classe.
* Pràctiques
  - Crea un directori per cada pràctica i un repositori Github al teu compte corporatiu.
  - Les pràctiques serà obligatori pujar-les i entregar-les a un repositori de Github per mitjà d'una _Release_
  - Cal anar pujant els canvis que facis en el codi al teu repositori remot amb _commits_ i si és possible, emprant [missatges semàntics de commit](https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716)
  - En els treballs en grup, s'han de fer _Pull Request_ i _Merge_, a més de revisions de codi (zzzzz)sempre que sigui necessari.

## 2 Escriure codi en JS
[Font](https://www.w3schools.com/js/js_statements.asp)
### Pràctiques Recomanables

#### Punts i Coma
- Els punts i coma no son obligatoris, però s'acostumen a emprar.
- Gràcies als punts i coma, es poden posar varies instruccions en una sola linea, encara que no és reconamable fer això

#### Espais en Blanc
- JS ignora espais en blanc entre operadors, operands i entre instruccions o dins dels parèntesi de les funcions.
- Emprarem espais en blanc per millorar la __llegibilitat__ del codi.
- Per norma general, cal evitar les línies massa llargues - més de __80 linies__

#### Blocs
- Els blocs es defineixen entre { }
- Cada vegada que cream un bloc, introduirem sagnat (indentació). Un sagnat de 2 espais és suficient

## 3. Mostrar dades per la interfície
[Font](https://www.w3schools.com/js/js_output.asp)
* La propietat `innerHTML` permet escriure dins d'un element HTML5
* El mètode `document.write()` escriu directament a una pàgina web, esborrant el que hi havia prèviament dins del `body` del document
* `window.alert()` mostra una finestra d'alerta
* `console.log()` escriu en la consola d'errors emprant. És útil per __depurar codi__ a un nivell elemental

## 4. Escriptura d'events (bàsic)
[Font](https://www.w3schools.com/js/js_events.asp)

Els events són situacions que es produeixen mentre el navegador està en marxa i que poden afectar el funcionament del script de Javascript

Alguns exemples d'events:
- Una pàgina web ha acabat de carregar-se
- El contingut d'un camp \<input> ha canviat
- Un element \<button> ha estat clicat

Cada event necessita un event handler per a indicar quin codi s'ha d'executar quan se produeix l'event. Exemple:
```js
<button onclick="console.log('has clicat')">Espitja</button>
```
Alguns events (que tractarem més endavant en el curs):
* `onchange`: An HTML element has been changed
* `onclick`: The user clicks an HTML element
* `onmouseover`: The user moves the mouse over an HTML element
* `onkeydown`: The user pushes a keyboard key

[Llista completa d'events DOM](https://www.w3schools.com/jsref/dom_obj_event.asp)

## 5. Llocs on es pot escriure codi Javascript
[Font](https://www.w3schools.com/js/js_whereto.asp)

L'opció més directa d'escriure un script en JS és emprar les etiquetes `<script>` i `</script>`
```html
<script>
document.getElementById("demo").innerHTML = "My First JavaScript"
</script>
```
Els blocs de codi poden situar-se en molts llocs:

1. Al `<head>` del document html. Exemple
2. Al `<body>` del document html. Exemple
3. Per evitar problemes de càrrega (que veurem més endavant en aquest apartat), es pot situar el bloc d’script entre les etiquetes `</body>`  i  `</html>`

L'opció més "professional" és escriure els scripts en un arxiu extern, normalment amb extensió .js
```html
<script src="myScript.js"></script>
```
Emprar un fitxer extern té els següents avantatges:
1. Separa HTML del codi
2. Fan que el codi Js sigui més bon de mantenir i llegir
3. Els fitxers JS poden ser guardats en _cache_ i augmentar així la seva velocitat de càrrega

**ALERTA!** Quan escric el meu codi JS en un fitxer extern, les línies que s'hagin d'executar immediatament en carregar el fitxer han d'anar a dins d'aquesta funció _hook_:
```js
window.onload = function() {
// To-do: Write here your JS code
  document.getElementById("demo").innerHTML = "My First JavaScript"
};
```
La raó és que el DOM - o sigui, els elements HTML de la pàgina web - ha d'estar carregat si volem fer alguna accció amb aquests elements HTML, com en el següent exemple:


| Exemple |
| ------- |
| [load_script_problem.html](https://github.com/classicoman2/guide_javascript/blob/master/01/load_script_problem.html) |


> Amplia informació sobre `onload` al [tutorial de MDN](https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers/onload)

Podem insertar un fitxer .js tant amb ruta absoluta com amb una ruta relativa (normalment, emprarem rutes absolutes només per llibreries externes CDN). 

Exemples:
```js
<script src="https://www.w3schools.com/js/myScript1.js"></script>

<script src="/js/myScript1.js"></script>

<script src="myScript1.js"></script>
```

