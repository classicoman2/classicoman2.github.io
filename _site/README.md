# classicoman2.github.io
Github pages

PAGINA CREADA AMB AQUEST TUTORIAL BASIC:    

https://pages.github.com/

SOBRE JEKYLL i GITHUB PAGES,

- https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/creating-a-github-pages-site-with-jekyll
- https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/testing-your-github-pages-site-locally-with-jekyll

## JEKYLL

    sudo apt install jekyll

Installara ruby i bundler al mateix temps que jekyll

    jekyll new . 

Cal seguir les instrucc del fitxer gem (també presents a la URL anterior)

Cal fer, si cal,

    bundle install
    bundle update github-pages

Ja que hi pot haver algunes descoordinacions amb les versions indicades a `Gemfile`

### Desplegar localment

Per executar i desplegar localment, 

    bundle exec jekyll serve

### Desplegar remotament

    git push