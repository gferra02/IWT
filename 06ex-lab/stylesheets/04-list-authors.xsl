<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml">
    <xsl:template match="proceedings">
        <head>
            <title>04 List authors</title>
        </head>
        <html>
            <h1><xsl:value-of select="name"/></h1>
            <h2>List of authors</h2>
            <ul>
                <xsl:for-each select="//author">
                    <li><a href=""><xsl:value-of select="."/></a></li>
                </xsl:for-each>
            </ul>
            <h2>List of papers</h2>
            <xsl:apply-templates select="contents/article"/>
        </html>
    </xsl:template>

    <xsl:template match="contents/article">
        <p><xsl:value-of select="author"/>, </p>
        <p><em>"<xsl:value-of select="title"/>"</em>, pp. <xsl:value-of select="pages"/>.</p>
        <hr/>
    </xsl:template>
</xsl:stylesheet>
