<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
      <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <link type="text/css" rel="stylesheet" href="mushaf.css"/>
    </head>
  <body>
  <table border="3" cellspacing="2" align="center" >
  <h1 align="center">جزء عما</h1>
 <tr align="center">
 <th> اسم السورة</th>
 <th>رقم السورة</th>
  <th>اياتها</th>
 <th>مكية/مدنية</th>
</tr>
<xsl:for-each select="mushaf/sura">
<tr align="center">
<td><xsl:value-of select="@name"/></td>
<td><xsl:value-of select="@id"/></td>
<td><xsl:value-of select="@nb_aya"/></td>
<td><xsl:value-of select="@type"/></td>
</tr>
</xsl:for-each>
  </table>
   </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
