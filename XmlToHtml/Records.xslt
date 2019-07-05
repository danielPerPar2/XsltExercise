<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match ="/CATALOG">
    <html>
      <head>
        <title>Records</title>
        <link rel="stylesheet" type="text/css" href="styles.css"/>
      </head>
      <body>
        <h2>Records</h2>
        <table border ="1">
          <tr bgcolor="#9acd32">
            <th>Title</th>
            <th>Artist</th>
            <th>Country</th>
            <th>Company</th>
            <th>Price</th>
            <th>Year</th>
          </tr>
          <xsl:for-each select="CD">
            <tr class="rows">
              <td>
                <xsl:value-of select="TITLE"/>
              </td>
              <td>
                <xsl:value-of select="ARTIST"/>
              </td>
              <td>
                <xsl:value-of select="COUNTRY"/>
              </td>
              <td>
                <xsl:value-of select="COMPANY"/>
              </td>
              <td>
                <xsl:value-of select="PRICE"/>
              </td>
              <td>
                <xsl:value-of select="YEAR"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>       
      </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
