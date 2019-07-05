<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match ="/ShoppingLists">
    <html>
      <head>
        <title>Ejemple de xslt</title>
      </head>
      <body>
        <h2>ShoppingList</h2>
        <table border ="1">
          <tr bgcolor="#9acd32">
            <th>Id</th>
            <th>Name</th>
            <th>Description</th>
            <th>CreationDate</th>
          </tr>
          <xsl:for-each select="ShoppingList">
            <tr>
              <td>
                <xsl:value-of select="Id"/>
              </td>
              <td>
                <xsl:value-of select="Name"/>
              </td>
              <td>
                <xsl:value-of select="Description"/>
              </td>
              <td>
                <xsl:value-of select="CreationDate"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <h3>ShoppingItem</h3>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Id</th>
            <th>ShoppingListId</th>
            <th>Description</th>
            <th>Quantity</th>
            <th>Status</th>
            <th>Unit</th>
          </tr>
          <xsl:for-each select="/ShoppingLists/ShoppingList/ShoppingItems/ShoppingItem">
            <tr>
              <td>
                <xsl:value-of select="Id"/>
              </td>
              <td>
                <xsl:value-of select="ShoppingListId"/>
              </td>
              <td>
                <xsl:value-of select="Description"/>
              </td>
              <td>
                <xsl:value-of select="Quantity"/>
              </td>
              <td>
                <xsl:value-of select="Status"/>
              </td>
              <td>
                <xsl:value-of select="Unit"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
