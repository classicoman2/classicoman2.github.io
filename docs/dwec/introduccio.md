---
layout: default
title: Introduccio a Javascript
permalink: /introduccio
---

# 1 Introducció a Javascript

Lectures interessants:
- [Javascript a MDN](https://developer.mozilla.org/ca/docs/Web/JavaScript)
- [El lenguaje de programación que cambió la web (y tu vida) cumple 25 años](https://elpais.com/tecnologia/2020-08-28/el-lenguaje-de-programacion-que-cambio-la-web-y-tu-vida-cumple-25-anos.html?rel=cla_articulo#1598695534986)
- [ECMAScript](https://en.wikipedia.org/wiki/ECMAScript)

## 1.1 Marc de treball
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

## 1 Escriure codi en JS
Escriure instruccions
Els punts i coma no son obligatoris, però s'acostumen a emprar.

Gràcies als punts i coma, es poden posar varies instruccions en 1 linea (pràctica no recomanable)

JS ignora espais en blanc. Així que podem emprar espais per millorar

la llegibilitat del nostre codi

Per millorar llegibilitat, s'eviten les línies de més de 80 línies →

salts de linia dins una mateixa instrucció en alguns casos extrems

Blocs. Els blocs es defineixen entre { } Cada vegada que creem

un bloc, introduirem sagnat (indentació). Un sagnat de 2 espais és suficient

2_Mostrar dades per la interfície [##]{.ul}
innerHTML Escriu dins un element HTML5 emprant la propietat

innerHTML

document.write() Escriu directament a una pàgina web amb

document.write() Esborra el que havia escrit en el <body>

window.alert() Crea una finestra d'alerta amb window.alert()

console.log Escriu en la consola d'errors emprant

console.log() - útil per fer Debug

3_Escriptura d'events (bàsic) [##]{.ul}
Els events són situacions que es produeixen mentre el navegador està en marxa i que poden afectar el funcionament del script de Javascript

Alguns exemples d'events:

Una pàgina web ha acabat de carregar-se

El contingut d'un camp <input> ha canviat

Un element <button> ha estat clicat

Cada event necessita un event handler per a indicar quin codi s'ha d'executar quan se produeix l'event. Exemple:

<button onclick="console.log('has clicat')">Espitja</button>

Alguns events (que tractarem més endavant en el curs):

onchange An HTML element has been changed

onclick The user clicks an HTML element

onmouseover The user moves the mouse over an HTML element

onmouseout The user moves the mouse away from an HTML element

onkeydown The user pushes a keyboard key

onload The browser has finished loading the page

[Llista completa d'events DOM]{.ul}

4_On inserto els meus scripts? [##]{.ul}
L'opció més directa d'escriure un script en JS és emprar les etiquetes <script> i </script>

<script>

document.getElementById("demo").innerHTML = "My First JavaScript"

</script>

Els blocs de codi poden situar-se en molts llocs:

Al <head> del document html.

[Exemple]{.ul}

Al <body> del document html.

[Exemple]{.ul}

Per evitar problemes de càrrega (que veurem més endavant en aquest

apartat), es pot situar el bloc d'script entre les etiquetes </body> i </html>

L'opció més "professional" és escriure els scripts en un arxiu extern, normalment amb extensió .js

<script src="myScript.js"></script>

Emprar un fitxer extern té els següents avantatges:

separen HTML del codi

fan que el codi Js sigui més bon de mantenir i llegir

els fitxers JS poden ser guardats en cache i augmentar així la

seva velocitat de càrrega

ALERTA! Quan escric el meu codi JS en un fitxer extern, les
línies que s'hagin d'executar immediatament en carregar el fitxer han d'anar a dins d'aquesta funció hook:

window.onload = function() {

// Aquí el teu codi JS

document.getElementById("demo").innerHTML = "My First JavaScript"

};

La raó és que el DOM de la pàgina necessita carregar-se abans que
puguem realitzar alguna cosa amb ell (com escriure un text a dins d'una etiqueta en aquest exemple: )

Exemple [load_script_problem.html]{.ul}

Pots ampliar informació sobre onload al [tutorial de MDN]{.ul}.

Podem insertar un fitxer .js tant amb ruta absoluta com amb una ruta relativa (normalment, emprarem rutes absolutes només per llibreries externes CDN). Exemples:

<script src="https://www.w3schools.com/js/myScript1.js"></script>

<script src="/js/myScript1.js"></script>

<script src="myScript1.js"></script>

1.2_Elements bàsics
1_Sintaxi bàsica de JS [##]{.ul}
La sintaxi de JS comprèn totes aquelles normes que estableixen com toca escriure les instruccions: com declarar variables, com assignar valors, com realitzar operacions, etc..

Literals
Els nombres poden tenir o no decimals. El decimal es marca amb un punt

Els strings poden escriure's entre " " o entre ' '

Els booleans s'escriuen com true i false

Podem assignar el literal null a una variable, que significa que no té valor. (Més endavant veurem quin ús té null i en quins casos ens el podem trobar)

Variables
Les variables són contenedors per a guardar-hi valors

En JS, no és imprescindible declarar les variables. Els podem assignar un valor automàticament i això farà innecessària la seva declaració.

Tanmateix, és bona idea seguir el costum de declarar les variables, emprant el tradicional var (variables globals), let (variables locals) i const (ho veurem [més endavant]{.ul})

Algunes normes a l'hora d'escriure els noms de les variables:

JS és case sensitive, o sigui, és sensible a majúscules i una

variable és diferent del seu equivalent en majúscules. Un [Exemple]{.ul}

El primer caràcter d'una variable ha de ser una lletra, un

underscore (_) o bé el signe de dòlar ($) (aquest darrer cas no el recoman en JS)

L'ús de guions en les variables no està permès, underscore _ en

canvi, sí

És un bon costum emprar camel case per declarar variables amb 2

o més paraules, exemple: firstName, lastName, cityCode...

Exemple [variables_names.html]{.ul}

Operadors i expressions.
Les expressions poden contenir tant variables com literals. Veurem
més sobre operadors i expressions al proper capitol

Unicode
JavaScript empra el conjunt de caràcters Unicode. Unicode

cobreix gairebé tots els caràcters i símbols existents.

Per a més info, [[Complete Unicode

Reference]{.ul}](https://www.w3schools.com/charsets/ref_html_utf8.asp).

2_Comentaris (bàsic) [#]{.ul}
Les maneres usuals d'escriure comentaris són:

Comentari unilinia a sobre d'una expressió.

[Exemple]{.ul}

Comentari unilinia a la mateixa línia.

[Exemple]{.ul}

Comentari multilinia.

[Exemple]{.ul}

Apart de seguir l'estàndard JSDoc en funcions i altres construccions abstractes, només cal comentar allò que pot ajudar un altre/a programador/a a entendre com funciona el vostre codi (aquest/a programador/a podeu ser vosaltres mateixos al cap d'un temps!)

Els comentaris són molt útils també per [prevenir l'execució d'un bocí de codi]{.ul}.

Alerta! No abuseu dels comentaris per aquesta funcionalitat,

podrieu acumular grans quantitats de codi inservible que dificultarien la llegibilitat del vostre codi.

Quan entregau un codi o el penjau a un repositori, NO hi hauria

d'haver blocs de codi anulats amb comentaris → mala llegibilitat i genera confusió

3_Funcions [#]{.ul}
Una funció és un troç de codi que empra uns valors passats per paràmetre, realitza una tasca concreta i torna uns resultats

Una funció es declara quan es defineix el seu comportament, i quan es necessita es crida o s'invoca. [Exemple]{.ul}

Les funcions poden emprar-se múltiples vegades

Sintaxi de la funció
function name(parameter1, parameter2, parameter3) {

//Code to be executed

}

Una funció és declara amb la keyword function seguida del nom i els parèntesis

Els noms de les funcions segueixen les mateixes normes que els [noms de les variables]{.ul}

Puc emprar una funció maldament l'hagi declarada amb posterioritat al seu ús, gràcies al [hoisting]{.ul}:

Exemple [function_declaration.html]{.ul}

Paràmetres
Dins dels parèntesis, es poden especificar cap, un o més paràmetres

Els paràmetres, si son valors simples (integer, real, string o boolean) se passen per valor

Els paràmetres, si son arrays o objects, se passen per referència.

Repassa! Quina diferència hi ha entre passar per valor i passar per referència?

Exemple [function-parameters.html]{.ul}

Return
Quan apareix una sentència de tipus return la funció deixa d'executar-se

El valor de retorn pot ser un literal, una expressió o la invocació d'una altra funció

[Exemple bàsic]{.ul} de funció que retorna

Comentar una funció amb JSDoc
En crear una funció, cal que la documentem emprant el format JSDoc. [Més info sobre el format JSDoc]{.ul}

Exemple [function-commented.js]{.ul}

Per a que es generi automàticament el format de documentació JSDocs, escriu /** a la línia immediatament superior a la declaració de la funció i espitja intro

Més info sobre JSDoc:

[https://javascript.info/comments]{.ul}

[https://en.wikipedia.org/wiki/JSDoc]{.ul}

Altres
Les cridades a funcions poden emprar-se en expressions, com els

literals i variables. [Exemple]{.ul}

En JS es poden passar funcions per paràmetre d'altres funcions.

Això ho veurem més endavant.

s1.3 Variables, operadors i tipus de dades
1_Variables i àmbits [##]{.ul} [##]{.ul}
Variables
Continuant amb el que hem vist anteriorment sobre variables:

Els noms de variables no poden coincidir amb el de les *[[paraules

reservades]{.ul}](https://www.w3schools.com/js/js_reserved.asp)* de Javascript (per exemple: if, return, let, var... )

Se poden declarar vàries variables en una sola instrucció →

[Exemple]{.ul}

La declaració de les variables pot ocupar només una instrucció i

vàries linies. [Exemple]{.ul}

ReferenceError
Si llegim el valor d'una variable que no ha estat declarada ni inicialitzada, se produirà un [error de Referència]{.ul}, que se'ns mostrarà per consola amb un missatge semblant a:

ReferenceError: <nomdelavariable> is not defined

Undefined
Una variable té valor undefined quan ha estat declarada però no ha estat inicialitzada

El més normal és que declarem i inicialitzem una variable i per tant, la primera vegada que l'emprem, ja tengui un valor. Una variable amb valor undefined ens pot crear problemes innecessàriament.

Exemple [variable_undefined.js]{.ul}

Variables Globals
Les variables que son declarades i/o inicialitzades en l'àmbit global de l'script (fora de les funcions o dels blocs) se diuen variables globals

Les variables globals poden ser llegides i modificades dins de les funcions

L'àmbit global és l'entorn de l'objecte window. Totes les variables globals (les declarades i les no declarades) pertanyen a l'objecte window

Atenció: [Se considera una mala pràctica treballar amb variables globals si no és imprescindible]{.ul}, perquè es poden produir situacions de sobreescriptura (overwrite) de variables o funcions de l'objecte window.

El [temps de vida]{.ul} de les variables globals comença quan son declarades o inicialitzades i acaba quan finalitza l'script on estan incloses. En un navegador, les variables globals perden el seu valor quan es tanca el navegador o la pestanya.

RECOMANACIÓ: Declarar sempre totes les variables.
Exemple [variable-scope-01.js]{.ul} (Execute this code with nodejs)

Variables Locals
Una variable local declarada dins d'una funció, només pot ser emprada en aquest àmbit. No pot ser emprada per les altres funcions

RECOMANACIÓ: declara les variables locals amb let enlloc de var

Hoisting [##]{.ul}
Hoisting és un mecanisme pel qual les declaracions de variables i de funcions són pujades o hissades (hoisted) al començament de l'àmbit o bloc de codi

Hoist significa elevar, hissar

Concepte fonamental del Hoisting:

Si llegim una variable abans que sigui [declarada]{.ul}, el valor

que obtendrem serà Undefined

Si llegim una variable abans que sigui [inicialitzada]{.ul}, se

produiria un error Uncaught ReferenceError: not defined

Exemple [variable-hoisting.js]{.ul}

IMPORTANT! Declara SEMPRE les variables abans d'emprar-les.

ALERTA! Quan empram let i const no hi ha hoisting (Veurem això més endavant)

Curiositat: Es possible declarar una variable amb posterioritat al
moment en què ha estat assignada i hoisted --> [Exemple]{.ul}

Si desitjau llegir més sobre Hoisting a JS:

[[Understanding Javascript

Hoisting]{.ul}](https://blog.bitsrc.io/what-is-javascript-hoisting-f0678208eb08)

[[Quina és la diferència entre una variable declarada i una variable

no declarada?]{.ul}](https://stackoverflow.com/questions/15985875/effect-of-declared-and-undeclared-variables)

[[Understanding Hoisting in

Javascript]{.ul}](https://www.digitalocean.com/community/tutorials/understanding-hoisting-in-javascript)

2_let, const, strict mode
let [#]{.ul}
Emprarem let per declarar les nostres VARIABLES LOCALS o d'àmbit de bloc

Malgrat és possible declarar variables globals amb let, és millor emprar var.

Exemple d'us de let

Exemple [block-scope-let1.js]{.ul}

Les variables declarades amb let no tenen hoisting, com pots veure en aquest exemple:

Exemple [block-scope-let2.js]{.ul}

Curiositats

Les variables declarades amb let no pertanyen a l'objecte

window, com sí passava amb les declarades amb var → [Exemple]{.ul}

Els keywords let i const van ser introduïts en la versió

ECMASCRIPT 2015 (Versió 6) per proporcionar el que s'anomena [àmbit de bloc]{.ul} a les variables (Fins llavors, només hi havia àmbit global i àmbit local)

Altres coses
Redeclarar variables en diferents àmbits amb var o inclús amb
let no és recomanable, ja que pot crear confusió sobre quin valor de la variable i interfereix en la funcionalitat / modularitat que desitjam pels nostres codis. [Exemple]{.ul}

<!-- -->
En els bucles, [[empra preferentmet]{.ul}
[let]{.ul}](https://www.w3schools.com/js/tryit.asp?filename=tryjs_let_for_loop1) per definir les variables. Si [empres]{.ul} [var]{.ul}, aquella variable serà accessible des de fora del bloc for { } la qual cosa no és desitjable.

const
Les variables declarades amb const funcionen igual que les declarades amb let, excepte per una cosa: no se'ls pot assignar un valor més d'un cop

També tenen àmbit de bloc, com les variables declarades amb let

No tenen hoisting

Les variables que són declarades amb const se'ls assigna un valor en la mateix moment en què són declarades, en la mateixa instrucció.

Exemple [const.js]{.ul}

Objectes i arrays constants
Quan declaram un objecte amb const, no li podrem assignar un altre valor. [Exemple]{.ul}

No obstant, sí que podem canviar el valor de les propietats de l'objecte [Exemple]{.ul}

Amb arrays passa exactament el mateix: puc [canviar els valors de les caselles]{.ul} però no puc [reasignar una variable array declarada amb const]{.ul}

Strict Mode [#]{.ul}
La directiva "use strict" és un literal que s'empra per establir que el codi JS s'executi en mode estricte. Amb mode estricte, NO podem assignar valor a una variable sense haver-la declarat abans!

Curiositat: És una directiva apareguda a ECMAScript version 5. Ja està disponible en tots els navegadors (inclòs IE)

També pot emprar-se strict mode dins de funcions i de mòduls

Ampliar: Més sobre [strict mode al Tutorial MDN]{.ul}

Exemple [strict-mode.js]{.ul}

3_Operadors
Operadors bàsics [##]{.ul}
Operadors aritmètics . Precedència de les operacions
+ - * / ** exponent % mòdul ++ increment -- decrement

Precedència d'operacions
L'avaluació de les expressions que empren operadors es fa d'esquerra

a dreta

L'operació de multiplicació precedeix la suma o la resta (com és

tradicional en matemàtiques)

En general, multiplicació i divisió tenen precedència sobre suma i

resta

Per canviar la precedència, emprarem parèntesi.

[Exemple]{.ul}

Assignacions especials
= += - = *= /= %= **=

Podem emprar + per concatenar strings. També +=
<!-- -->
La suma d'un string i un nombre dóna com a resultat un string

[[ANNEX: Altres tipus d'assignacions complexes que no

emprarem]{.ul}](https://www.w3schools.com/js/js_assignment.asp)

Operadors de comparació
Emprats en condicionals i bucles.
== === ! = !== > < >= <= ?

Operadors lògics
! negació || or && and

Objecte MATH [##]{.ul}
Aquest objecte incorpora una gran quantitat de mètodes matemàtics que podem emprar per resoldre operacions complexes que no estan expressades amb operadors simples.

Podem realitzar operacions com: càlcul de potències, obtenir un número aleatori, arrodonir un nombre real a un nombre sencer, etc.

4_Tipus de Dades
Tipus de Dades bàsics [##]{.ul}
Els tipus de dades són un concepte important en programació

En JS, els tipus de dades són dinàmics. Això vol dir que poden ser emprats per emmagatzemar diversos tipus de dades en un mateix bloc de codi. [Exemple]{.ul}

Strings: Poden ser creats entre " " i entre ' ' . (Podem emprar

el caràcter " dins de ' i viceversa)

Numbers: Els nombres, sencers o reals (amb decimals) corresponen

a un sol tipus de dades. Ocasionalment, s'empra notació exponencial per nombres molt grans o molt petits. [Exemple]{.ul}

Booleans: Dos valors literals possibles, true i false. Les

expressions de comparació resulten en valors booleans. [Exemple]{.ul}

Arrays: Els arrays son un tipus compost d'elements del mateix

tipus de dades, que es crea emprant square brackets [ ].

Els índexos estan basats en 0 (el primer element d'un array anomenat taula és taula[0]. [Exemple]{.ul}

Objectes: Els objectes son un tipus compost d'elements o
propietats de diferents tipus, que es crea emprant curly braces { }.

Per referenciar la propietat d'un objecte, empram en nom de l'objecte seguit de punt i nom de propietat. [Exemple]{.ul} Els objectes són fonamentals en la programació en JS.

L'Operador de tipus: typeof
A JS, trobam 5 tipus de dades que poden conterir valors:
string number boolean object function

Empram loperador typeof operator per esbrinar el tipus de dades
d'una variable. [Exemple]{.ul}. [Exemple2]{.ul}

Exemple [typeof.html]{.ul}

L'operador typeof sempre retorna un string
Valor buid vs. null vs. valor undefined
[Buid]{.ul}

No té res a veure un valor undefined amb un valor buid

Una variable té valor undefined si la variable ha estat declarada però no assignada. En strings, el valor buit és "" o ''. En els nombres, el valor buid seria el 0. No és igual 0 que undefined

[Null]{.ul}

El valor null en una variable indica que no té valor.

El valor null procedeix de la programació en llenguatge C i servia per indicar un punter buid. Javacript no empra punters, almanco no en el sentit que tenien en la programació en C.

undefined i null tenen el mateix valor però tenen diferent tipusare equal in value but different in type:

null == undefined // true

null === undefined // false

typeof undefined // undefined

typeof null // object

1.4 Executar js amb Node
Escric el codi a un fitxer que se digui com se digui, per ex,

operacions.js

Al final d'aquest fitxer, que hauria de contenir només funcions i

classes (res de codi interactiu), escriu el codi que vols provar, per exemple:

Console.log (suma (2,3) )

Per acabar, executa el fitxer amb

# node operacions.js

1.5 Control d'execució
1_Càrrega de llibreries i fitxers
Obrir el nostre navegador (Firefox, Chrome).

Pulsar Ctrl + Shift + I i anar a la pestanya Sources

Allà podrem veure les fitxers que s'han carregat: fitxers html, js, css, imatges, etc.

També hi surten les peticions API que realitzi la nostra aplicació (això ho veurem al segon trimestre)

2_La importàcia de saber fer Debug
És molt important que tenguem clar, des del primer dia, que per a saber programar en Front End hem de saber emprar el Debugger de Javascript.

A classe, emprarem sempre els debugger del navegador. Opcionalment, podeu emprar emprar el Debugger del seu editor de codi si així ho desitjau.

El debug o Depuració consta de diverses parts:

Detecció d'errors i descripció d'errors en la Console del

navegador

Interrompre l'execució d'un codi amb Breakpoints per tal

d'analitzar el procés d'execució i els valors de les variables

Emprar les eines de desplaçament en l'execució del codi: Step

Into, Step Over, etc. per avançar en el codi i en la depuració d'aquest

Fer seguiment o vigilància (Watch) del valor de les variables

durant l'execució

Debug nivell 1
El més fàcil és emprar missatges. No obstant, això només serveix a un nivell molt bàsic, com, per exemple quan empram el terminal i [executam el codi amb l'ajut de]{.ul} [node]{.ul}.

console.log() Missatge de consola.

console.log() és molt útil per fer seguiment del valor de les
variables

Per veure els missatges de la consola,

Clica Ctrl + Mayús + I

En el panel desplegat, clica sobre Console per a veure els

fallo

alert() - finestra de missatge (no massa pràctic)

Exemple [debug-basic.html]{.ul}

Debug nivell 2
El que hem vist abans és molt bàsic i no em permet investigar a fons en el problema que me provoca el bug o error.

Curiositat: debug significa originalment desparasitar, desinsectar, i ve de bug: insecte, virus (i per extensió: error informàtic)
Emprarem Google Chrome. En els altres navegadors, les eines són molt similars.

Clica Ctrl + Mayús + I i Clica sobre Sources

Trobaràs que el panell se divideix en tres parts, d'esquerra a

dreta:

Page -> pots seleccionar la pàgina o fitxer on es troba el codi

El codi de la pàgina

Les opcions de depuració . A sobre, hi ha les eines de

desplaçament que veurem més endavant (veure imatge a sota)

{width="1.9951388888888888in" height="2.151388888888889in"}

Ara veurem com depurar 1 linia del codi anterior. En el nostre cas,

aquella en la que es fa la suma. Per això, hi crearem un breakpoint i refrescarem la pàgina.

Si ara passo el punter del ratolí per sobre de les variables n1 i

n2, puc comprovar que aquestes variables tenen valors de diferents tipus. Per tant, és d'esperar que l'error sigui aquest (és un exemple molt senzill)

Més coses que puc fer:

A la columna de la dreta, si desplego Scope → Global, tendré

accés a les variables globals n1 i n2

També puc saber el valor de les variables si clico + a la

dreta de Watch i introdueixo el nom de la variable. També hi puc ficar expressions, com per exemple n1 + n2

Exemple [debug-basic.html]{.ul}

Debug nivell 3
Provarem en el codi del següent exemple:

Exemple [debug-basic2.html]{.ul}

{width="2.7868055555555555in" height="0.35208333333333336in"}

Els botons son (en blau els que cal saber):

Resume script execution - continua l'execucio fins el següent

breakpoint o fins el final si no hi ha més breakpoints

Passa a la següent funció (F10) - Bota a la següent cridada de

funció

Step into - Permet saltar entre diferents funcions i ens mostra

el valor dels paràmetres de la funció, la qual cosa és molt ùtil i permet saltar-nos blocs d'instruccions que no ens interessen

Step out - Surt de la funció actual

Step - avança 1 instrucció

Deactivate Breakpoints - desactiva els breakpoints per la actual

finestra del navegador

Més info:

[https://developers.google.com/web/tools/chrome-devtools/javascript/]{.ul}
