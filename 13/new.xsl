<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Планеты</title>
      </head>
      <body>
        <xsl:apply-templates select="planets"/>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="planets">
    <h1><xsl:value-of select="title"/></h1>
    <ul>
      <xsl:apply-templates select="planet"/>
    </ul>
  </xsl:template>
  <xsl:template match="planet">
    <li>
      <h2><xsl:value-of select="name"/></h2>
      <p>Расстояние от Солнца: <xsl:value-of select="distance"/></p>
      <p>Диаметр планеты: <xsl:value-of select="diameter"/></p>
      <p>Описание планеты: <xsl:value-of select="description"/></p>
    </li>
  </xsl:template>
</xsl:stylesheet>
