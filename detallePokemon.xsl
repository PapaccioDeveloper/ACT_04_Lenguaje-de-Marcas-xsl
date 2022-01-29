<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
   <xsl:template match="/">
      <html>
         <head>
            <title>Pokemons</title>
            <style>

                .main{position:relative;margin-top: 50px;width: 70%;border: 1px solid;display:table; height:auto; outline: 1px solid black; outline-offset: 3px; }

                p{margin:0px;font-family: sans-serif; }

                .foto{ float:left;width: 250px;height: 250px; }

                img{float:left;width: 250px;}

                .textos{display:grid; }

                 div.uno p{font-size: 25px; font-weight: bold; margin-bottom: 10px;}

                 div.textos p{margin-bottom: 10px;}
            </style>
         </head>
         <body>
          
               <xsl:for-each select="pokemons/pokemon">
                <div class="cuadro">
                <div class="main">
               <div class="foto"> 
                   <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="foto" />
                    </xsl:attribute>
             </img> 
            </div>
                <div class="textos">
                        <div class="uno"><p> <xsl:value-of select="nombre" /></p> </div>
                        <div class="dos"> <p><strong>Tipo:  </strong>  <xsl:value-of select="@tipo" /></p> </div>   
                        <div class="tres"> <p><strong> Color: </strong> <xsl:value-of select="color" /></p> </div>
                        <div class="cuatro"> <p> <strong>Fuerza: </strong> <xsl:value-of select="fuerza" /></p> </div>
                        <div class="cinco"> <p><strong>Comentario: </strong><xsl:value-of select="comentario" /></p> </div>   
                </div>  
                       
                    </div>    
                </div> 
           
               </xsl:for-each>
         
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
