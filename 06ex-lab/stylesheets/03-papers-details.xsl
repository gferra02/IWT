<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml">
    <xsl:template match="proceedings">
        <head>
            <title>03 Papers details</title>
        </head>
        <html>
            <h1><xsl:value-of select="name"/></h1>
            <xsl:apply-templates select="contents/article"/>
        </html>
    </xsl:template>

    <xsl:template match="contents/article">
        <p>
            <xsl:for-each select="author">
                <xsl:value-of select="../author"/>, 
            </xsl:for-each>
        </p>
        <p><em>"<xsl:value-of select="title"/>"</em>, pp. <xsl:value-of select="pages"/>.</p>
    </xsl:template>
</xsl:stylesheet>
