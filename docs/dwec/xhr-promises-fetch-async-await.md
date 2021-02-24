# 8.1\_JS Asíncron I: XHR

## Table of contents


## Webgrafia

[Asynchronous JavaScript - Learn web development | MDN](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous)

[Asynchronous JavaScript Tutorial #1 - What is Async JavaScript (11 VÍDEOS)](https://www.youtube.com/watch?v=ZcQyJ-gxke0&amp;list=PL4cUxeGkcC9jx2TTZk3IGWKSbtugYdrlu)

## 1\_Repàs de JSON

- [JSON Intro](https://www.w3schools.com/js/js_json_intro.asp)
- [JSON Syntax](https://www.w3schools.com/js/js_json_syntax.asp)
- [JSON Data Types](https://www.w3schools.com/js/js_json_datatypes.asp)
- [JSON vs XML](https://www.javatpoint.com/json-vs-xml)
- [JSON.parse()](https://www.w3schools.com/js/js_json_parse.asp)

Convertir un JSON en un objecte JS (o una combinació d&#39;objectes i arrays)

- Parsing JSON
- JSON i AJAX
- Excepció: no es poden &quot;parsejar&quot; dates, se passen com _strings_
- [&quot;Parsear&quot; amb una funció acoblada a JSON.parse()](https://www.w3schools.com/js/tryit.asp?filename=tryjson_parse_reviver)

- [JSON.stringify()](https://www.w3schools.com/js/js_json_stringify.asp): Converteix un objecte Javascript a string en notació JSON.



## 2\_JS síncron vs asíncron

Javascript és un llenguatge d&#39;un sol fil d&#39;execució. Això vol dir que en principi, només pot executar operacions síncrones.

Javascript no pot crear_ **threads o múltiples fils d&#39;execució** _com si pot fer el llenguatge **Java** , per exemple

El codi Javascript que hem après i creat durant el curs és majoritàriament síncron.


> Un **codi síncron** està composat per instruccions que s&#39;executen unes darrere les altres, és a dir, que una instrucció només s&#39;executa quan l&#39;anterior instrucció ha acabat d&#39;executar-se.

Això és així perquè el motor d&#39;execució de Javascript ([V8 a Chrome](https://v8.dev/) i a Node.js, [Spidermonkey a Mozilla](https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey)) treballa sempre en un fil d&#39;execució.

No obstant, el motor d&#39;execució de Javascript treballa sempre amb **API** s que amplien la seva funcionalitat.

En un script d'interfície com és Javascript, a vegades es necessita disposar de la possibilitat de que no s&#39;esperi al final de l&#39;execució d&#39;una instrucció per a iniciar l&#39;execució de la següent instrucció.

Per exemple,

```
**Instrucció a** - síncrona: comença → acaba
**Instrucció b** - asíncrona: comença (però no acaba)
**Instrucció c** - síncrona: comença → acaba
**Instrucció d** - síncrona: comença → acaba
**Instrucció e** - síncrona: comença → acaba ara acaba
...
Execució de la **Instrucció b**
```

Entre els tipus de JS asíncron més freqüent, trobam:

### setInterval() i setTimeout()

Aquests dos mètodes [no són part de l&#39;especificació de Javascript](https://javascript.info/settimeout-setinterval) sinó que son part de una **Web API** de la que disposen els navegadors.

Són dos mètodes que programen un event que es disparà al cap d&#39;un temps i provoca que s&#39;executi una **funció callback**.

> Recorda: en programació, un _callback_ fa referència de forma genèrica a una funció que es passa com a paràmetre d&#39;una altra funció. [**Més sobre callbacks**](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous/Introducing#Async_callbacks)

### EventTarget
Hi ha una altra **Web API** , de fet la més coneguda, que és la [**Web API DOM**](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model), que implementa events sobre elements del document web susceptibles de rebre events: [la interficie EventTarget](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget)

Les funcions _callback_ dels _events handlers_ de Javascript l&#39;exemple clàssic d&#39;execució asíncrona:

```js
document.getElementById('myBtn').addEventListener('click', () => {
  alert('Hello World!');
}
```

Ja hem vist com funciona això a la pràctica durant el curs: La funció _callback_ és passa com a paràmetre del mètode _addEventListener_ i no s&#39;executa fins que es produeix l&#39;event corresponent - en aquest cas un clic en el botó

## 3\_AJAX

Les cridades Ajax ( **A** synchronous **JA** vaScript and **X** ML) o XHR són un altre exemple clàssic d&#39;instrucció asíncrona.

AJAX va introduir les següents novetats en la programació web:

1. Fer una HTTP Request des d&#39;una pàgina carregada en navegador a un servidor sense necessitat d&#39;emprar la línia de URL - a diferència, per ex, de l&#39;acció d&#39;un formulari PHP en què aquest obliga a recarrgar la pàgina.
2. Obtenir dades del servidor i carregar-les en pantalla sense necessitat d&#39;actualitzar tota la pàgina - la petició HTTP Request es fa &quot;en el background&quot;

Avui en dia, és una cosa comuna ja Javascript, tots els navegadors i tots el Frameworks ho implementen.

AJAX té molts avantatges però incorpora algunes [noves problemàtiques](https://en.wikipedia.org/wiki/Ajax_(programming)#Drawbacks) a la programació web:

- Hi ha aparells antics que no incorporen XMLHttpRequest i no hi funciona Ajax
- Problemes amb **screen readers** ja que el contingut ha estat generat dinàmicament i de forma asíncrona
- El **Debug** és més complicat que en programació JS normal
- Dificultat per indexar (SEO) el contingut de pàgines actualitzades amb Ajax
- Problemes amb **Web Crawlers** i indexació en els Cercadors Web

Anem a començar a treballar amb AJAX.

Per això començarem amb l&#39;objecte XMLHTTPRequest

## 4\_XMLHTTPRequest (o XHR)

Aquest objecte es va crear amb l&#39;objectiu d&#39;implementar AJAX.

La idea inicial era - d&#39;aqui el seu nom tan llarg i mal de recordar :

1. Fer peticions **HTTP Request** en background
2. Interactuar amb servidors i obtenir dades en format **XML**

Avui dia es pot emprar XHR o les seves variants modernes (Fetch, Axios ..) per a altres coses:

- Carregar fitxers o recursos multimèdia del propi servidor - sempre que se permeti CORS - o de servidors externs
- Atacar una Rest API del propi servidor - sempre que se permeti CORS - o de servidors externs
- Executar codi _back_ - PHP, Python, etc - en el propi servidor

### Els 4 estats

En aquest exemple, veurem el funcionament bàsic de la petició XHR i els 4 estats en què es pot trobar el client XHR

> **Exemple:** [XHR\_example1-4-estats.html](https://github.com/classicoman2/guide_javascript/blob/master/08/XHR/XHR_example1-4-estats.html) |

Més info:
- [XMLHttpRequest - Web APIs | MDN Docs](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest)
- [XMLHttpRequest.readyState - Web APIs | MDN Docs](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/readyState)

### async/sync

La petició XHR es pot fer de forma asincrona o síncrona.

De totes maneres, les requests síncrones se consideren _deprecated_[pels efectes negatius que té sobre la User Experience dels usuaris](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/Using_XMLHttpRequest)

### XHR amb fitxers i API

El que interessa quan programam amb JS és el **readyState == 4** i que la petició hagi acabat amb èxit - **status == 200**

Aquest és el motiu de l&#39;aspecte que té el codi de les peticions XHR més habituals

> **Exemple:** [XHR\_example2-fitxer.html](https://github.com/classicoman2/guide_javascript/blob/master/08/XHR/XHR_example2-fitxer.html)

Anem a explicar aquest codi.

1. **xhttp.open** fa una petició GET per carregar el fitxer &quot;fitxer.txt&quot;
2. Quan la petició HTTP és resposta, s&#39;executa la callback _xhr.onreadystatechange_
3. Si el status és 200 i el readystatus és 4, ja disposam de la resposta
4. En cas d&#39;error, no fa res, ja que no disposa de tractament d&#39;errors

NOTA: és interessant que proveu amb urls incorrectes per veure què passa.

En aquest exemple, atacam una API que ens torna un JSON:

> **Exemple:** [XHR\_example3-API.html](https://github.com/classicoman2/guide_javascript/blob/master/08/XHR/XHR_example3-API.html)

En aquest exemple, faig una petició per llegir un fitxer, que retorna un error per mor de la política CORS (no puc sol·licitar aquell fitxer del servidor de AEMET perquè no m&#39;hi estic connectant a través d&#39;un navegador sinó a través d&#39;una aplicació web):

> **Exemple:** [XHR\_example4-XML.html](https://github.com/classicoman2/guide_javascript/blob/master/08/XHR/XHR_example4-XML.html)

### XHR amb JSON

Anem a veure un exemple sobre com manipulam un JSON que hem obtingut de la API d&#39;un servidor extern,

> **Exemple:** [XHR\_example5-JSON.html](https://github.com/classicoman2/guide_javascript/blob/master/08/XHR/XHR_example5-JSON.html)

### XHR i JQuery

XHR Aquesta versió bàsica va millorar amb la proposta de **JQuery** , però no ha estat fins l&#39;arribada de les **Promises** que els programadors disposen d&#39;una forma estandaritzada - ja que [les](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)[_Promises_](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)[són objectes que formen part de l&#39;especificació de Javascript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)

# 08.2\_JS Asíncron II: Promises

## 1\_Promises

Les **Promises** són la nova forma d&#39;emprar codi asíncron en Javascript. El codi que s&#39;empra majoritàriament per accedir a recursos o APis des de Javascript (a navegador o a Node.js) està basat en les _promises_

Una _promise_ és un objecte que representa un estat latent o intermedi, que pot desembocar en l&#39;èxit o l&#39;error d&#39;una operació asíncrona. Com si el nostre codi javascript ens digués &quot;Et prometo que et donaré una resposta a la petició al que demanes tan aviat com pugui&quot;.

Les promeses s&#39;empren amb l&#39;[objecte](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)[**Promise**](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)[de Javascript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)

Aquesta natura provisional de la Promise fa que tengui 3 possibles estats:

- **pending** : estat inicial, ni fulfilled (complida) ni rejected (rebutjada)
- **fulfilled** : significa que l&#39;operació que controla la Promesa ha estat exitosa
- **rejected** : significa que l&#39;operació ha fallat

Un exemple bàsic de Promesa:

| **Exemple:** [**promise-example1.html**](https://github.com/classicoman2/guide_javascript/blob/master/08/Promises/promise-example1.html) |
| --- |

Podem simular amb una Promesa una operació asíncrona (que tarda aprox. 3 segons) amb un codi com aquest:

| **Exemple:** [**promise-example2.html**](https://github.com/classicoman2/guide_javascript/blob/master/08/Promises/promise-example2.html) |
| --- |

Una promesa es pot tractar de manera encara més simple:

| **Exemple:** [**promise-example3.js**](https://github.com/classicoman2/guide_javascript/blob/master/08/Promises/promise-example3.js) |
| --- |

Per entendre millor com funcionen les promeses

- [Asynchronous JavaScript Tutorial #7 - Promises](https://www.youtube.com/watch?v=a_8nrslImo4) (video en anglès)

Un altre exemple més complex de promeses, basat en el tutorial [Javascript Promises for dummies](https://scotch.io/tutorials/javascript-promises-for-dummies) :

| **Exemple:** [**promise-example4.js**](https://github.com/classicoman2/guide_javascript/blob/master/08/Promises/promise-example4.js) |
| --- |

### Encadenar Promeses

- [**Asynchronous JavaScript Tutorial #8 - Chaining Promises**](https://www.youtube.com/watch?v=GfVMKkUk2Uo)

| **Exemple:** [**promise-example5.js**](https://github.com/classicoman2/guide_javascript/blob/master/08/Promises/promise-example5.js) |
| --- |

## 2\_Fetch API

- [Fetch API - Web APIs | MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)
- [Asynchronous JavaScript Tutorial #9 - The Fetch API](https://www.youtube.com/watch?v=drK6mdA9d_M)
- [Working with the Fetch API | developers.google.com](https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api)
- [Fetching data from the server | MDN](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Client-side_web_APIs/Fetching_data)
- [Fetch | javascript.info](https://javascript.info/fetch)

Fetch és una implementació nova d&#39;Ajax a través d&#39;una Javascript API

Molt més fàcil, perquè el codi és extraordinariament curt i fàcil d&#39;entendre. La seva estructura està basada en les **Promises**

Fetch és bàsicament una versió moderna i més eficient de les cridades Ajax o [XMLHttpRequest](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest)

Exemple bàsic de Fetch (per a obtenir un json local o remot):

```js
fetch('examples/example.json')
  .then(function(response) {
    if (!response.ok) {
      throwError(response.statusText);
    }

    // Read the response as json.
    return response.json();
  })
  .then(function(responseAsJson) {
    // Do stuff with the JSON
    console.log(responseAsJson);
  })
  .catch(function(error) {
    console.log('Looks like there was a problem',error);
  });
```

Com funciona fetch:

1. Fetch retorna una **Response,** que és una **Promesa**
2. Per obtenir la Response, encadenam el **primer .then()**
  1. Aquest primer .then() rep com paràmetre de la funció _callback_ un [**objecte de tipus Response**](https://developer.mozilla.org/es/docs/Web/API/Response) amb la resposta a la petició HTTP
  2. La Response és un &quot;flux de dades&quot; que hem de llegir per obtenir les dades
  3. Per accedir a les dades, el primer .then() instancia el mètode **.json()** amb la Response
  4. Altres mètodes que podem emprar apart de .json()
    1. text() Per textos
    2. blob() Per fitxers
3. Per llegir les dades, necessitam un **segon .then()** encadenat amb una altra _callback._ Aquest **2n then()** resol quan se rep el contingut (_body_) de la _response_
  1. Dins aquesta segona _callback_ tenim accés a les dades i podem ja emprar-les
4. El bloc [catch()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/catch) s&#39;executa si algun dels blocs .then() falla — recorda els blocs [try...catch](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/try...catch) sincrons del propi [Javascript](https://www.w3schools.com/js/js_errors.asp)

Exemple bàsic i funcional de Fetch amb una API,

| **Exemple:** [**fetch-example0.html**](https://github.com/classicoman2/guide_javascript/blob/master/08/Fetch/fetch-example0.html) |
| --- |

Anem a profunditzar una mica i vegem com funciona realment Fetch:

| **Exemple:** [**fetch-example1.html**](https://github.com/classicoman2/guide_javascript/blob/master/08/Fetch/fetch-example1.html) |
| --- |

Exemple de Fetch amb fitxer de text:

| **Exemple:** [**fetch-example2.html**](https://github.com/classicoman2/guide_javascript/blob/master/08/Fetch/fetch-example2.html) |
| --- |

Un exemple extra amb una estructura una mica diferent però amb la mateixa funció:

| **Exemple:** [**fetch-example3.html**](https://github.com/classicoman2/guide_javascript/blob/master/08/Fetch/fetch-example3.html) |
| --- |

I un exemple d&#39;aplicació de fetch per carregar imatges:

| **Exemple:** [**fetch-exemple4.html**](https://github.com/classicoman2/guide_javascript/blob/master/08/Fetch/fetch-exemple4.html) |
| --- |

## 3\_async/await

- [async function - JavaScript | MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function)
- [JavaScript Fetch API and using Async/Await](https://dev.to/shoupn/javascript-fetch-api-and-using-asyncawait-47mp)

Si empram fetch tal i com ho hem vist, podem fer algunes coses interessants, com encadenar peticions HTTP, però llavors entrariem en el que s&#39;anomena **Callback Hell**

Per evitar allò, el codi asíncron, des de fa uns anys, s&#39;escriu emprant les paraules reservades **await** i **async** ;

- **async** permet definir una funcio asíncrona, és a dir, que s&#39;executa de forma paral·lela al codi js
- **await** s&#39;empra dins d&#39;una funció asíncrona per indicar que una o més operacions dins d&#39;aquesta funció són asíncrones i s&#39;ha d&#39;esperar que es finalitzi la seva execució abans de passar a la següent instrucció.

**O sigui que:**

  - **await** bloqueja l&#39;execució del codi fins que no es resolgui la instrucció actual
  - **Però** ho fa sempre dins d&#39;una funció asíncrona, que s&#39;executa en paral·lel a la resta de codi js → per tant, mai bloquejarà la interficie gràfica !

**Video recomanat per entendre millor aquest concepte:**

- [Asynchronous JavaScript Tutorial #10 - Async &amp; Await](https://www.youtube.com/watch?v=CWjNefiE47Y)

Exemple bàsic de async / await:

| **Exemple:** [**fetch-exemple5-await-async.html**](https://github.com/classicoman2/guide_javascript/blob/master/08/Fetch/fetch-exemple5-await-async.html) |
| --- |

Exemple bàsic de async / await:

| **Exemple:** [**fetch-exemple6-await-async-Error.html**](https://github.com/classicoman2/guide_javascript/blob/master/08/Fetch/fetch-exemple6-await-async-Error.html) |
| --- |

Aquest darrer exemple l&#39;he obtingut d&#39;aqui: [Asynchronous JavaScript Tutorial #11 - Throwing Errors](https://www.youtube.com/watch?v=AoBSB00vW5A)
