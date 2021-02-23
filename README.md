# classicoman2.github.io

[JEKYLL CHEAT SHEET](./documentation/README.MD)

Apunts de les assignatures de Grau Superior en Desenvolupament Web. Site desenvolupat amb [Jekyll]()

### Deploy locally
```bash
bundle exec jekyll serve
```
### Create dist version (build)
```bash
bundle exec jekyll build
```

## TODO (posar en fitxer separat)
- [x] Theme triat: [Bulma](https://jekyllthemes.io/theme/bulma)
- [ ] Add menu & subsections in page, [info](https://pmarsceill.github.io/just-the-docs/docs/navigation-structure/#pages-with-children)
- [ ] Afegir apunts i crear pàgines
- [ ] Google Analytics?



## Webgraphy
- Jekyll combinat amb Github Pages (massa limitat pel que el meu site necessita)
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