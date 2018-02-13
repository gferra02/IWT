<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml">
    <xsl:template match="proceedings">
        <head>
            <title>02 Name and titles</title>
        </head>
        <html>
            <h1><xsl:value-of select="name"/></h1>
            <xsl:apply-templates select="contents/article"/>
        </html>
    </xsl:template>

    <xsl:template match="contents/article">
        <p>"<xsl:value-of select="title"/>"</p>
    </xsl:template>
</xsl:stylesheet>
