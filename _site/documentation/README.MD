# JEKYLL CHEAT SHEET

## Dev
```bash
bundle exec jekyll serve
```

## Theme
Per simplicitat i perquè és fàcilment configurable, he triat [Minimal](https://github.com/pages-themes/minimal)


## Layout

Els layouts son personalitzables de dues maneres:

- Emprar els que estan inclosos en `vendor/gems/jekyll-theme-minimal-0.1.1/layouts`
- Crear els teus propis layouts a `./_layouts` (opcio que he seleccionat)

Per emprar un layout determinat (`default`, `post`.. ) --> Posar `layout:post` per al principi del fitxer `.md`

## Style amb minimal

No funciona. He seguit les instrucc del seu README i no va ??

## Mantaining code & install

>Per generar carpeta `vendor`
```
bundle install
```
En fer un canvi en plugin o similar
```
bundle update
```

### Deploy locally
```bash
bundle exec jekyll serve
```
### Create dist version (build)
```bash
bundle exec jekyll build
```