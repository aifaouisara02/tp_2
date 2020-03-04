<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">    <head>
      
    </head>
  <body>
    <table border="4">
  <h1 align="center"> النبأ</h1>
  <tr>
  <th>name</th> 
  <th>id_sura</th> 
  <th> nbr_aya</th> 
  </tr>
<xsl:for-each select="mushaf/sura"></td>
                <td> <xsl:varleur-of select="@name"/></td>
                 <td><xsl:varleur-of select="aya"/></td>
                   <hr/>
                   <xsl:for-each select="aya">
                   
                    <xsl:varleur-of select="."/>
                   
                    
                 </xsl:for-each>
                </xsl:for-each>
  </tr>
  </table>
   </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
