---
title:  DOM
parent: DWEC
#categories: jekyll update
---
# El DOM. Manipulació. Mètodes.

**Atenció!**: El _Crash Course_ de Traversy Media inclou tot el que necessitau saber sobre DOM (i més):

- [JavaScript DOM Crash Course - Part 1](https://www.youtube.com/watch?v=0ik6X4DJKCc)
- [JavaScript DOM Crash Course - Part 2](https://www.youtube.com/watch?v=mPd2aJXCZ2g)
- [JavaScript DOM Crash Course - Part 3](https://www.youtube.com/watch?v=wK2cBMcDTss)
- [JavaScript DOM Crash Course - Part 4](https://www.youtube.com/watch?v=i37KVt_IcXw)

Més informació:

- https://eloquentjavascript.net/14_dom.html

## 1 Intro [##](https://www.w3schools.com/js/js_htmldom.asp)

El DOM (**Document Object Model)** és un arbre que conté tots els elements de la pàgina web ordenats jeràrquicament.

Exemple de DOM:

![DOM basic example](https://www.w3schools.com/js/pic_htmltree.gif)

És un [estàndard de la W3C (World Wide Web Consortium)](https://dom.spec.whatwg.org/) que defineix l&#39;estàndard per accedir els documents dels navegadors.

El DOM permet interpretar documents web HTML amb CSS i documents XML.

Javascript pot emprar l'estructura DOM per a:

- canviar el text o els atributs dels elements
- gestionar la interactivitat (_events_) en la interfície.

## 2 Mètodes i propietats bàsiques [##](https://www.w3schools.com/js/js_htmldom_methods.asp)

- Exemple de _Mètode_: .getElementById()
- Exempe de _Propietat_ .innerHTML

## 3 Mètodes per Localitzar elements [##](https://www.w3schools.com/js/js_htmldom_elements.asp)

Els exemples que veurem en aquest apartat:

| **Exemples**: [**dom-search-elements.html**](https://github.com/classicoman2/guide_javascript/blob/master/04/dom-search-elements.html)

- Constantment, en treballar amb el DOM amb JS, necessitarem **accedir** als elements del DOM de diferents maneres: un element amb un identificador, tots els elements d&#39;un tipus o d&#39;una classe determinada, tots els elements que comparteixin un selector, tots els elements d&#39;un formulari… etc.

#### getElementById(id)

- Retorna un element HTML a partir del seu id

#### getElementsByTagName( )

- Retorna una [**HTMLCollection**](https://www.w3schools.com/js/js_htmldom_collections.asp) (una espècie d&#39;array d&#39;elements) amb els elements de document del **tag** que indicam: p, div, span, etc…
- Ús genèric: document.getElementsByTagName( )
- Si en lloc de _document_ posam un objecte del DOM, llavors tornarà només els elements amb aquell **tag** a dins d'aquest element del DOM

``` 
  // capturam tots els elements de tipus <p>
  let pElements = document.getElementsByTagName("p");
  for (p of pElements) {
    // Fer alguna cosa amb aquests elements
  }
```

#### getElementsByClassName( )

- Retorna una [**HTMLCollection**](https://www.w3schools.com/js/js_htmldom_collections.asp) (una espècie d'array d'elements) amb els elements de document de la **classe** que indicam
- Ús genèric: document.getElementsByTagName( )
- Si en lloc de `document` posam un objecte del DOM, llavors tornarà només els elements amb aquella **classe** a dins d'aquest element del DOM

#### querySelectorAll( )

- Retorna una [NodeList](https://www.w3schools.com/js/js_htmldom_nodelist.asp) (semblant a HTMLCollection) amb els elements que encaixen amb el **selector** que passam per paràmetre
- Ens permet més flexibilitat i concreció que `getElementsByClassName`
- La variant `querySelector()` retorna només el primer element que encaixa amb el selector proporcionat

```
   // Captura tots els <p> que son descendents directes de #wrapper
   let list = document.querySelectorAll("#wrapper2 > p");
   for (l of list) {
    // Fer alguna cosa amb aquests elements
   }
```

## 4 Modificar elements [##](https://www.w3schools.com/js/js_htmldom_html.asp)

| **Exemples**: [**dom-modify-elements.html**](https://github.com/classicoman2/guide_javascript/tree/master/04)

#### .innerHTML

- Canvia contingut HTML de _element_

#### ._nomdelAtribut_

- Canvia el valor d'un atribut de _element_

#### .style._nomdelaPropietat_

- Canvia l&#39;estil d&#39;un element HTML. Més [**aqui**](https://www.w3schools.com/js/js_htmldom_css.asp)
- **Atenció** : Les propietats de CSS formades per 2 paraules (exemple: font-style, color-background) se converteixen en _CamelCase_ (exemple: `fontStyle`, `colorBackground`)

#### .setAttribute( nomAtribut, valor )

- Canvia el valor d'un atribut emprant una funció amb dos paràmetres en lloc de la fòrmula anterior. És una alternativa a la propietat anterior

#### .className [#](https://www.w3schools.com/jsref/prop_html_classname.asp)

- Aquest atribut permet consultar o establir la classe d&#39;un element de forma directa.

#### .classList() [#](https://www.w3schools.com/jsref/prop_element_classlist.asp)

- Sense cap dubte, la millor manera de treballar amb classes amb Javascript
- `classList` incorpora tot un seguit de mètodes per:
  - Afegir i eliminar classes: `add()` i `remove()`
  - Alternar una classe amb `toggle()`: afegir-la i eliminar-la alternativament
  - Consultar si un element té assignada o no una classe amb `contains()`

```
  //Afegeix la classe .contenedor a l'element #myDiv
  document.getElementById("myDIV").classList.add("contenedor")
```

## 5 Modificar l'arbre del DOM [##](https://www.w3schools.com/js/js_htmldom_nodes.asp)

| **Exemples** : [**dom-create-elements.html**](https://github.com/classicoman2/guide_javascript/tree/master/04)

#### .createElement( )

- Crea un element HTML
- Que crei un element no significa que aparegui automàticament en la pàgina. Per a que es pugui mostrar, s'ha d'afegir a algun element preexistent.

#### .appendChild( )

- Afegeix un element que acabam de crear a un altre element, que serà el seu _pare_

#### .removeChild( )

- Elimina un element del seu _pare_

#### .replaceChild(new, old)

- Substitueix un element per un altre

## 6 Navegació entre nodes [##](https://www.w3schools.com/js/js_htmldom_navigation.asp)

| **Exemple** : [**dom-navegacio.html**](https://github.com/classicoman2/guide_javascript/tree/master/04)

Útil quan necessitam accedir a un &quot;familiar&quot; d&#39;un node (parent, child, siblings)

- parentNode
- childNodes[nodenumber]
- firstChild
- lastChild
- nextSibling
- previousSibling

![Exemple d'ús](./assets/html-links.svg)

#### parentNode

A partir d&#39;un node, podem obtenir la referència al seu pare (ja hem vist algun exemple).

#### childNodes[]

- childNodes és un **NodeList** , que ja vam veure anteriorment en aquests apunts
- Anam a veure com treballar amb `childNodes[]`, perquè no és tan fàcil com sembla
- Primer de tot, hem de tenir en compte que un element qualsevol no conté text, sinó que conté un **node de text** , que és un node de DOM

**Què son els nodes?**

- _ **document** _ és un node
- Cadascun dels **elements** o tags HTML d'un document és un node
- El **text** dins de cada element HTML (que és accessible amb la propietat .innerHTML) és també un node
- Si hi ha **espais en blanc** entre elements que són &quot;siblings&quot;, llavors hi haurà un altre **node de text**
- Si hi ha espais en blanc entre un element i el tag que tanca el pare, llavors hi haurà un altre **node de text**
- Per esbrinar el número de child nodes, emprarem `childNodes.length`.

## 7 Altres propietats i mètodes de &#39;document&#39; [##](https://www.w3schools.com/jsref/dom_obj_document.asp)

| **Exemple** : [**dom-document.html**](https://github.com/classicoman2/guide_javascript/tree/master/04)

- El keyword _document_ disposa de tota una sèrie de mètodes i propietats per tal de treballar amb el DOM.
- En l&#39;exemple anterior, veim com emprar-ne alguns d&#39;ells.
- Els altres, els anirem veurem en aquests apunts quan ens facin falta.