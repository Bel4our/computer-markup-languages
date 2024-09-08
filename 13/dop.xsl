<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Аттестация</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
      </head>
      <body>
        <h1>Аттестационный лист</h1>
        <table border="1">
          <tr>
            <th>Имя студента</th>
            <th>CML</th>
            <th>FSE</th>
            <th>BAAP</th>
          </tr>
          <xsl:for-each select="attestation/student">
          <tr>
            <td><xsl:value-of select="name"/></td>
            <td>
              <xsl:attribute name="style">
                <xsl:choose>
                  <xsl:when test="CML &lt; 4">background-color:red;</xsl:when>
                  <xsl:when test="CML &gt; 8">background-color:green;</xsl:when>
                </xsl:choose>
              </xsl:attribute>
              <xsl:value-of select="CML"/>
            </td>
            <td>
              <xsl:attribute name="style">
                <xsl:choose>
                  <xsl:when test="FSE &lt; 4">background-color:red;</xsl:when>
                  <xsl:when test="FSE &gt; 8">background-color:green;</xsl:when>
                </xsl:choose>
              </xsl:attribute>
              <xsl:value-of select="FSE"/>
            </td>
            <td>
              <xsl:attribute name="style">
                <xsl:choose>
                  <xsl:when test="BAAP &lt; 4">background-color:red;</xsl:when>
                  <xsl:when test="BAAP &gt; 8">background-color:green;</xsl:when>
                </xsl:choose>
              </xsl:attribute>
              <xsl:value-of select="BAAP"/>
            </td>
          </tr>
          </xsl:for-each>
        </table>
      </body>
      </html>
  </xsl:template>
</xsl:stylesheet>
