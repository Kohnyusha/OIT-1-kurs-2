<?xml version="1.0" encoding="UTF-8"?>
      <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"><!--хранилище других
элементов, но также идентифицирует документ как XSL-таблицу стилей-->
         <xsl:template match="/"><!--. Атрибут match шаблона указывает на определенную ветвь, /- Он представляет весь документ, для которого элемент Документ является дочерним-->
            <html>
               <body>
               <h1 style="text-align:center">Информация о специальности ИСиТ белорусских университетов:</h1>
                  <table style="text-align:center" border="2">
                  <tr bgcolor="Tan">
                   <th>Название</th>
                   <th>Проходной балл</th>
                   <th>План набора</th>
                   <th>Место нахождение</th>
                  </tr>
                  <xsl:for-each select="INVENTORY/UNIVERSITY"><!--оператор пути атрибута select-->
                     <tr>
                        <td><xsl:value-of select = "NAME"/></td><!--value-of порядок элементов-->
                        <td><xsl:value-of select = "BALL"/></td>
                        <td><xsl:value-of select = "KOL"/></td>
                        <td><xsl:value-of select = "TOWN"/></td>
                     </tr>
                  </xsl:for-each>
                  </table>
               </body>
            </html>
         </xsl:template>
      </xsl:stylesheet>