Для збирання прикладу використовуй

```bash
asciidoctor -r asciidoctor-pdf -b pdf book.txt
```

Також можна спробувати

```bash
make all
```

Для підставлення шрифтів можна використовувати конфігурацію в yml:

```bash
asciidoctor -r asciidoctor-pdf -b pdf book.txt -a pdf-style=my.yml -a pdf-fontsdir="/usr/share/fonts/truetype/msttcorefonts"
```
