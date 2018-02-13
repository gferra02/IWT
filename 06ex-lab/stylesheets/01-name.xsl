<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml">
    <xsl:template match="proceedings">
        <head>
            <title>01 Name</title>
        </head>
        <html>
            <h1><xsl:value-of select="name"/></h1>
        </html>
    </xsl:template>
</xsl:stylesheet>
