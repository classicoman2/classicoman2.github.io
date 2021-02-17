---
layout: default
title:  Expressions Regulars
parent: DWEC
---

# 7 Tests Unitaris amb Mocha.js

## Intro al testing

Quan desenvolupam una aplicació, necessitam implementar **tests** que ens permetin provar funcionalitats clau del nostre programa o bé comprovar la integració entre diferents mòduls.

Els tests són la manera més simple de detectar inconsistències en el codi o falles previsibles.

Per cada llenguatge de programació i entorn de desenvolupament existeixen diversos **frameworks** per a fer tests del codi.

### Tipus de tests

Veurem els 2 tipus de tests més freqüents: **tests unitaris** i **tests d&#39;integració**

#### Unit Testing

This testing is used to test a small isolated piece of code,

Unit testing will be done by developers to test functions or blocks. It doesn&#39;t have any Networking calls or DB operations.

#### Integration Testing

Integration testing is used to test a group of individual modules, components or piece of units, to check how two or more modules, components or a different piece of code are will work together.

The main purpose of Integration testing is to find bugs when **two or more modules are integrated.**

## TDD vs BDD

Els Tests se solen enmarcar en dos escenaris principalment:

### [TDD = Test-driven development](http://agiledata.org/essays/tdd.html#WhatIsTDD)

- És una tècnica que consisteix en escriure Tests abans i de crear el codi de desenvolupament, a continació escriure el codi de les nostres aplicacions, provar els tests a continuació i finalment, refactoritzar; i llavors, repetir el procés fins acabar el codi:

![](RackMultipart20210128-4-rdzzhl_html_3a6d309422f21b.png)

  - **Write tests** for the required software functionality
  - **Run the tests** for the software functionality
  - **Implement the software functionality**
  - **Fix bugs** and **refactor** until all tests pass
  - **Repeat** the cycle for any new functionality

### [BDD = Behavior-driven development](https://blog.logrocket.com/a-quick-and-complete-guide-to-mocha-testing-d0e0ea09f09d/#whatismochajsusedfor)

- És una evolució de TDD. Pretén ajudar els desenvolupadors a crear software que sigui:
  - Predecible
  - Resilient / Resistent als canvis
  - Que no tengui tendència a errors.

[**TDD vs BDD: Learn the Key Differences With Examples**](https://phoenixnap.com/blog/tdd-vs-bdd)

Les darreres tendències en testing es troben en millorar el rendiment i l&#39;eficiència del desenvolupament web en [**Continuous testing**](https://www.synopsys.com/blogs/software-security/continuous-testing-cicd/)en entorns CI/CD.

## Tests amb Mocha.js

Repositori exemple:

- [https://github.com/classicoman2/tests-mochajs-ES6](https://github.com/classicoman2/tests-mochajs-ES6)

Més info:

- [Test automatizados con mocha - javascript.info](https://es.javascript.info/testing-mocha)
- [How to write an Integration test for Node Js Application](https://medium.com/@selvarajchinnasamyks/how-to-write-an-integration-test-for-node-js-application-4a2f4140665f)
- [Mocha.js, the JavaScript test framework: A tutorial](https://blog.logrocket.com/a-quick-and-complete-guide-to-mocha-testing-d0e0ea09f09d/#whatismochajsusedfor)
- [Mocha Guide to Testing (Gist)](https://gist.github.com/samwize/8877226)
- [Guia de Chai](https://www.chaijs.com/)

###


Mocha.js és un framework senzill per realitzar testing.

Se poden implementar tests amb node.js (des de terminal de comandes) o en el navegador.

Nosaltres veurem com escriure tests en fitxers .js que executarem amb **node test** i que ens permetran preveure possibles errors en les pràctiques.