# classicoman2.github.io
Apunts de les assignatures de Grau Superior en Desenvolupament Web. Site desenvolupat amb `Jekyll`
[JEKYLL CHEAT SHEET](./documentation/README.MD)

## TO-DO
- [x] Iniciada _Jekyll Cheat Sheet_
- [ ] Crear iterador de `Markdown-toc` amb node que crei toc en tots els fitxers d'un directori (i successius subdirectoris)
- [ ] Add menu & subsections in page, [info](https://pmarsceill.github.io/just-the-docs/docs/navigation-structure/#pages-with-children)
- [ ] Afegir apunts i crear pàgines
- [ ] Google Analytics -> Plantilla


### Scripts
```bash
# Deploy locally
npm run serve
```
```bash
# build
npm run build
```




## Webgraphy
- Github Pages
  - https://pages.github.com/
  - https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/creating-a-github-pages-site-with-jekyll
  - https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/testing-your-github-pages-site-locally-with-jekyll


## Install Jekyll
To install `jekyll`, ruby and bundler,
```bash
sudo apt install jekyll
```
To create a Jekyll site inside a folder, 
```bash
jekyll new . 
```
Using the template [just-the-docs](), change the `gem` file to use this theme and:
```bash
bundle install
```