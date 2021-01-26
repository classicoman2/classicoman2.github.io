# classicoman2.github.io
Apunts de les assignatures de Grau Superior en Desenvolupament Web. Site desenvolupat amb [Jekyll]()

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

### Deploy locally
```bash
bundle exec jekyll serve
```
### Create dist version (build)
```bash
bundle exec jekyll build
```

## TODO (posar en fitxer separat)
- [x] Canviat el theme bàsic, `Minima`, too basic [(info)](https://www.inmotionhosting.com/support/website/jekyll/how-to-change-your-jekyll-theme-with-rubygems/)
- [x] New theme: [Just the Docs](https://jekyllthemes.io/theme/just-the-docs) that won't work in Github Pages (free version)
- [ ] Add menu & subsections in page, [info](https://pmarsceill.github.io/just-the-docs/docs/navigation-structure/#pages-with-children)
- [ ] Afegir apunts i crear pàgines
- [ ] Google Analytics
- [ ] Desactivar Github Pages
- [ ] Penjar a màquina virtual
- [ ] Adquirir domini propi 

## Webgraphy
PAGINA CREADA AMB AQUEST TUTORIAL BASIC:    

### Jekyll combinat amb Github Pages (massa limitat pel que el meu site necessita)
- https://pages.github.com/
- https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/creating-a-github-pages-site-with-jekyll
- https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/testing-your-github-pages-site-locally-with-jekyll