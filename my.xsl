<?xml version='1.0'?>
<!DOCTYPE stylesheet [
    <!ENTITY dbdir "/usr/share/xml/docbook/stylesheet/docbook-xsl-ns">
]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:d="http://docbook.org/ns/docbook"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">

<xsl:import href="&dbdir;/fo/docbook.xsl"/>
<xsl:import href="&dbdir;/fo/autoidx-kosek.xsl"/>
<xsl:output method="xml" indent="yes"/>

<xsl:param name="index.method">kosek</xsl:param>

<!--  setting paper size  -->
<xsl:param name="paper.type" select="'A4'"/>

<!-- fonts -->
<xsl:param name="body.font.family" select="'Times-Roman'"/>
<xsl:param name="title.font.family" select="'Times-Roman'"/>

<!--  ensuring a page break before first-level sections  -->
<xsl:attribute-set name="section.level1.properties">
<xsl:attribute name="break-before">page</xsl:attribute>
</xsl:attribute-set>

</xsl:stylesheet>
