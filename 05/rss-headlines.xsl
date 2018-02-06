<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml">

  <xsl:template match="channel">
    <html>
      <xsl:apply-templates select="item"/>
    </html>
  </xsl:template>

  <xsl:template match="item">
    <p><xsl:value-of select="title"/></p>
  </xsl:template>

</xsl:stylesheet>
