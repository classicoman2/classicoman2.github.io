| Els exemples d&#39;aquest tutorial es troben en el repositori [guide\_javascript](https://github.com/classicoman2/guide_javascript) |
| --- |



#

# 08.3\_JS Asincron (III): Rest API

### Què és una Rest API

Vídeos introductoris:

- [What is a REST API? (6&#39;)](https://www.youtube.com/watch?v=SLwpqD8n3d0)
- [What is REST? (3&#39;)](https://www.youtube.com/watch?v=6sUbt-Qp6Pg)

### HTTP Requests

#### 5 peticions habituals

Anem a repassar els 5 + 1 tipus de peticions HTTP que puc fer a una REST API.

- Webgrafia: [JSONPlaceholder - Guide](https://jsonplaceholder.typicode.com/guide/)
- Exemples: [https://github.com/classicoman2/fake-Rest-API-local-CRUD](https://github.com/classicoman2/fake-Rest-API-local-CRUD)

##### GET all

fetch(&#39;https://jsonplaceholder.typicode.com/posts&#39;)

.then(response =\&gt; response.json())

.then(json =\&gt; console.log(json))

_// Output_

[

{ id: 1, title: &#39;[...]&#39;_/\* ... \*/_ },

_/\* ... \*/_

{ id: 100, title: &#39;[...]&#39;_/\* ... \*/_ }

]

##### GET one

fetch(&#39;https://jsonplaceholder.typicode.com/posts/1&#39;)

.then(response =\&gt; response.json())

.then(json =\&gt; console.log(json))

_// Output_

{

id: 1,

title: &#39;[...]&#39;,

body: &#39;[...]&#39;,

userId: 43987654

}

##### POST: Create one

LA API Rest afegirà un camp id a dins de l&#39;objecte creat.

En aquest exemple, afegeix l&#39;identificador **104**.

A l&#39;igual que en la taula d&#39;una base de dades, tots els registres han de tenir un identificador diferent.

fetch( **&#39;https://jsonplaceholder.typicode.com/posts**&#39;, {

method: **&#39;POST&#39;** ,

body: JSON.stringify({

title: &#39;foo&#39;,

body: &#39;bar&#39;,

userId: 43987654

}),

headers: {

&quot;Content-type&quot;: &quot;application/json; charset=UTF-8&quot;

}

})

.then(response =\&gt; response.json())

.then(json =\&gt; console.log(json))

_// Output_

{

**id:**  **101**** ,**

title: &#39;foo&#39;,

body: &#39;bar&#39;,

userId: 43987654

}

##### DELETE one

fetch(&#39;https://jsonplaceholder.typicode.com/posts/1&#39;, {

method: &#39;DELETE&#39;

})

##### PUT: Update a resource (sencer)

Per modificar el registre amb el identificador 5 , de manera que s&#39;esborrin les seves propietats i se substitueixin per les que li passo,

fetch(&#39;https://jsonplaceholder.typicode.com/posts/5&#39;, {

method: &#39;PUT&#39;,

body: JSON.stringify({

title: &#39;foo&#39;,

body: &#39;bar&#39;,

userId: 43987654

}),

headers: {

&quot;Content-type&quot;: &quot;application/json; charset=UTF-8&quot;

}

})

.then(response =\&gt; response.json())

.then(json =\&gt; console.log(json))

_// Output_

{

id: 5,

title: &#39;foo&#39;,

body: &#39;bar&#39;,

userId: 43987654

}

#### Patch

A les operacions anteriors, li podem afegir PATCH.

PATCH permet modificar un recurs, però a diferència de **PUT,** amb PATCH se substitueixen **només** els valors de les propietats indicades, no totes les propietats dels objectes.

fetch(&#39;https://jsonplaceholder.typicode.com/posts/5&#39;, {

method: &#39;PATCH&#39;,

body: JSON.stringify({

title: &#39;nou titol&#39;,

body: &#39;bar&#39;,

userId: 43987654

}),

headers: {

&quot;Content-type&quot;: &quot;application/json; charset=UTF-8&quot;

}

})

.then(response =\&gt; response.json())

.then(json =\&gt; console.log(json))

_// Output_

{

id: 5,

title: &#39;foo&#39;,

body: &#39;bar&#39;,

userId: 43987654

}

### Autenticació

Falta

- Autenticació
- Peticions amb TOKEN per comprovar si tenc o no permis per fer aquestes operacions) -\&gt; el token l&#39;he d&#39;haver aconseguit a l&#39;autenticació !!

#

# 9 - JQUERY (FORA TEMARI)

## 1.- Getting Started

### 1.1.-Introducció

The purpose of jQuery is to make it much easier to use JavaScript on your website.

### **Primer exemple amb JS**

[https://www.w3schools.com/jquery/tryit.asp?filename=tryjquery\_hide](https://www.w3schools.com/jquery/tryit.asp?filename=tryjquery_hide)

A favor

- jQuery is a lightweight, &quot; **write less, do more**&quot;, JavaScript library.
- jQuery also simplifies a lot of the complicated things from JavaScript, like **AJAX** calls and **DOM** manipulation.
- Will jQuery work in **all browsers**? → The jQuery team have written the jQuery library to run the same in all major browsers

En contra

- Sobrecàrrega
- Molts de cops, no aporta res de nou que no se pugui fer amb [Vanilla JS](http://vanilla-js.com/)

The jQuery library contains the following features:

1. HTML/DOM manipulation
2. CSS manipulation
3. HTML event methods
4. Effects and animations
5. AJAX
6. Utilities

### **Exercicis test de Repàs de JQuery**

[Comprova el teu nivell de JQuery](https://www.w3schools.com/jquery/exercise_jq.asp?filename=exercise_jq_selectors1) en qualsevol moment durant aquest curs!

### **Exemples de JQuery**

[https://www.w3schools.com/jquery/jquery\_examples.asp](https://www.w3schools.com/jquery/jquery_examples.asp)

### **Referència de JQuery**

[https://www.w3schools.com/jquery/jquery\_ref\_overview.asp](https://www.w3schools.com/jquery/jquery_ref_overview.asp)

### 1.2.- Download / CDN

Pots emprar 2 versions:

- Production version
- Development version → this is for testing and development (uncompressed and readable code)

[https://www.w3schools.com/jquery/jquery\_get\_started.asp](https://www.w3schools.com/jquery/jquery_get_started.asp)

### **Download**

[https://jquery.com/download/#downloading-jquery](https://jquery.com/download/#downloading-jquery)

### **CDN**

[https://code.jquery.com/](https://code.jquery.com/)

## 2.- JQuery elemental

### 2.1.- Sintaxi

[Aquí](https://www.w3schools.com/jquery/jquery_syntax.asp) ens explica la sintaxi bàsica de JQuery

### **\*\*\* MOLT IMPORTANT \*\*\***** : L&#39;event &quot;Document Ready&quot;**

Tots els exemples de JQuery que veuràs en aquest tutorial i el tutorial de W3Schools estan a dins d&#39;aquest mètode:

$(document).ready(function(){

// jQuery methods go here...

});

Això és per evitar que JQuery s&#39;executi abans que el document web s&#39;hagi carregat del tot i estigui preparat el DOM, com se&#39;ns indica a la [guia oficial de JQuery](https://api.jquery.com/ready/)

### 2.2.-Selectors a JQuery

jQuery selectors allow you to select and manipulate HTML element(s).

They allow you to select HTML elements based on their name, id, classes, types, attributes, values of attributes and much more. It&#39;s based on the existing **CSS Selectors** , and in addition, it has some own custom selectors.

All selectors in jQuery start with the dollar sign and parentheses: $()

[En aquesta pàgina, mirar-ho tot](https://www.w3schools.com/jquery/jquery_selectors.asp)

- Com emprar els selectors
- Com incloure funcions JQuery en una pàgina diferent

[Alguns exercicis](https://www.w3schools.com/jquery/exercise_jq.asp?filename=exercise_jq_selectors1)

### 2.3.- Events a JQuery

Aquí tenim una explicació molt clara sobre la manera en la què recomano treballar amb events.

[https://www.w3schools.com/jquery/jquery\_events.asp](https://www.w3schools.com/jquery/jquery_events.asp)

Està molt més clar que amb Javascript!

## 3.- Efectes i Animacions. Callbacks

Comença: [aqui](https://www.w3schools.com/jquery/jquery_fade.asp)

### Fade i Slide

#### Fade [#](https://www.w3schools.com/jquery/jquery_fade.asp)

- fadeOut() _difumina un element_
- fadeIn() _el contrari de l&#39;anterior_
- fadeToggle() _alterna entre un efecte i un altre_
- fadeTo() _fins un determinat valor d&#39;opacitat_

#### Slide [#](https://www.w3schools.com/jquery/jquery_slide.asp)

- slideDown() efecte desplegament cap a sota d&#39;un element ocult
- slideUp() _efecte plegament cap amunt d&#39;un element visible_
- slideToggle() _alterna entre un efecte i un altre_

### Callbacks

A totes aquestes funcions anteriors se&#39;ls hi pot passar una **funció callback** que s&#39;executaria quan acabi l&#39;animació.

[En aquest exemple](https://jsfiddle.net/aamengual/0q6Ltayv/18/), en acabar l&#39;efecte (que dura 3 segons), s&#39;executa un alert()

Més info sobre efectes i callbacks: [https://www.w3schools.com/jquery/jquery\_callback.asp](https://www.w3schools.com/jquery/jquery_callback.asp)

### Animacions

#### Animations [#](https://www.w3schools.com/jquery/jquery_animate.asp)

Podem emprar el mètode animate() per a...

- Fer una animació simple
- Animació amb múltiples propietats
  - Se poden animar gairebé totes les propietats de CSS !
- Amb valors relatius
- Amb valors predefinits
- Encadenant vàries animacions amb _Queue Functionality_

[Exercicis simples...](https://www.w3schools.com/jquery/exercise_jq.asp?filename=exercise_jq_animate1)

#### Stop

[https://www.w3schools.com/jquery/jquery\_stop.asp](https://www.w3schools.com/jquery/jquery_stop.asp)

La funció stop() permet aturar l&#39;animació d&#39;un _Efecte_

## 4.- JQuery Chaining

[https://www.w3schools.com/jquery/jquery\_chaining.asp](https://www.w3schools.com/jquery/jquery_chaining.asp)

Molt simple. Executar una instrucció JQuery, sigui un efecte, un canvi de format, etc.. darrere d&#39;un altra instrucció, així vàries instruccions sense límit aparent.

#


# 10 - Frameworks: Vue.JS

[Enllaç a Guia Vue.js (en construcció)](https://docs.google.com/document/d/1dmP-TEw7n8rdKwWKhng9zRzHm4u11mBH1wK7P2a6U_I/edit#heading=h.vi06grfap0ug)

# APÈNDIX

## BIBLIOGRAFIA I WEBGRAFIA

- [**JS Tutorial de W3Schools**](https://www.w3schools.com/jsref/default.asp.)
  - Aquests apunts estan basats sobretot en aquest tutorial. D&#39;aqui s&#39;han extret la majoria de conceptes i alguns exemples
  - Conté explicacions (en anglès) dels principals aspectes de Javascript i multitud d&#39;exemples que es poden modificar i provar en línia.
  - Maldament està desactualitzat en alguns aspectes, és una guia molt útil per aprendre la gran majoria dels conceptes que necessites dominar per programar amb JS

- [**Referència de Javascript i DOM a W3Schools**](https://www.w3schools.com/jsref/default.asp)
  - Una referència completa de JS organitzada per temàtiques
  - Serveix com a complement a l&#39;anterior tutorial
- [**Javascript tutorial - MDN Web Docs**](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
  - Tutorial molt complet, que he emprat per consultat unes quantes coses que no se troben en el tutorial de W3Schools i per actualitzar alguns conceptes
  - Existeix una versió en castellà (però no per totes les pàgines)