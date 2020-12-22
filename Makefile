BOOK = book
LANG = uk

all: clean xml fop-xml
all-w-xslt: clean xml xslt fop-fo

from-xml: xslt fop
xml: asciidoctor -a lang=$(LANG) -a pdf-style=my.yml -b docbook $(BOOK).txt -o $(BOOK).xml

xslt: xsltproc /usr/share/xml/docbook/stylesheet/docbook-xsl-ns/fo/docbook.xsl $(BOOK).xml > $(BOOK).fo
fop-fo: fop -c my.xconf -fo $(BOOK).fo -pdf $(BOOK).pdf
fop-xml: fop -c my.xconf -xml $(BOOK).xml -xsl my.xsl -pdf $(BOOK).pdf

vldt-relaxng: xmlstarlet val --err --relaxng /usr/share/xml/docbook/schema/rng/5.0/docbook.rng $(BOOK).xml
vldt-xsd: xmlstarlet val --err --xsd /usr/share/xml/docbook/schema/xsd/5.0/docbook.xsd $(BOOK).xml

clean: rm -f $(BOOK).xml $(BOOK).fo $(BOOK).pdf
