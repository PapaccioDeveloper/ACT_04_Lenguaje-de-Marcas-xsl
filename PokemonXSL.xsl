<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
<xsl:template match="/">
<html>
    <head><title>Tabla de Pokemons</title></head>
    <body>

<table border="1" style="height: 10%;width: 50%;border: black 1px solid; ">
    <tr>
      <th>Nombre</th>        
      <th> Tipo</th>
      <th>Foto</th>
    </tr>

  
 <xsl:for-each select="pokemons/pokemon">




            <xsl:if test="@tipo='Hielo'">
          <tr bgcolor="#b8adaf"  > 
      <td style="height: 30%; width: 30%;"><xsl:value-of select="nombre"/> </td>
      <td style="height: 30%; width: 30%;"><xsl:value-of select="@tipo"/>  </td>
      <td>
          <img style="height: 30%; width: 30%;  margin:10px auto;
          display:block;" >
          <xsl:attribute name="src">
        <xsl:value-of select="foto"/> </xsl:attribute>
         </img>
    </td>
    </tr>
</xsl:if>







            </xsl:for-each>



  </table>






</body>
</html>
</xsl:template>
</xsl:stylesheet>