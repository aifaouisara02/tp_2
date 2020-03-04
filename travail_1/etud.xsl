<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <link type="text/css" rel="stylesheet" href="etud.css"/>
    </head>
  <body>
  
  <table border="4" align="center" >
  <h1 align="center">Liste des etudiants</h1>
  <tr>
  <th>Matricule</th>
  <th>Nom</th> 
  <th>Prenom</th> 
  <th>Moy S1</th>
  <th>Moy S2</th>
  <th>Moyenne Annuelle</th>
  <th>Credit S1</th>
  <th>Credit S2</th>
   <th>Unite</th>
   <th>Resultat</th>
  </tr>
  
  <xsl:for-each select="Group_gsi/etudiant"> 
  <xsl:sort select='Moy/MoyAnnuel' order="descending" data-type="number"/>
  <tr> 
      <td><xsl:value-of select="Identite/Matricule"/></td> 
      <td><xsl:value-of select="Identite/Nom"/></td> 
      <td><xsl:value-of select="Identite/Prenom"/></td> 
      <td><xsl:value-of select="Moy/MoyS1"/></td> 
      <td><xsl:value-of select="Moy/MoyS2"/></td> 
      <td><xsl:value-of select="Moy/MoyAnnuel"/></td> 
      <td><xsl:value-of select="Moy/CreditS1"/></td> 
      <td><xsl:value-of select="Moy/CreditS2"/></td>
      <td><xsl:value-of select="Moy/Unite"/></td>
      <xsl:choose>
          <xsl:when test='Moy/MoyS1 >= 10 and Moy/MoyS2 >= 10'>
              <td id="admis">Admis</td>
          </xsl:when>

          <xsl:when test='(Moy/CreditS1 + Moy/CreditS2) >= 45 and (Moy/Unite = "Oui")'>
              <td id="admis_avec_dette">Admis avec Dettes</td>
          </xsl:when>

          <xsl:otherwise>
              <td id="ajournee">Ajourné</td>
          </xsl:otherwise>
      </xsl:choose>

  </tr>
  </xsl:for-each>
  </table>

      <br/>
      <div id="sa">
        <h3>  Le nombre total des etudiants est :<xsl:value-of select="count(Group_gsi/etudiant)"/> </h3>
        <h3>  Le nombre des etudiants Admis est : <xsl:value-of select="count(Group_gsi/etudiant[Moy/MoyS1 >= 10 and Moy/MoyS2 >= 10])"/> </h3>
        <h3>  Le nombre des etudiants Admis avec Dettes est :<xsl:value-of select="count(Group_gsi/etudiant[(Moy/CreditS1 + Moy/CreditS2) >= 45 and Moy/Unite = 'Oui'])-10"/> </h3>
        <h3>  Le nombre des etudiants Ajournés est :<xsl:value-of select="count(Group_gsi/etudiant[ 45 > (Moy/CreditS1 + Moy/CreditS2) ])"/> </h3>
      <h3>  La moyenne de la classe est :<xsl:value-of select="sum(Group_gsi/etudiant/MoyAnnuel)"/> </h3>
      </div>
  </body>
  </html>
  </xsl:template>
</xsl:stylesheet>