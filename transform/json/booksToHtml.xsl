<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <!-- The input JSON file -->
    <xsl:param name="input" select="'books.json'"/>
    
    <!-- The initial template that process the JSON -->
    <xsl:template name="xsl:initial-template">
        <html>
            <head>
                <title>Recommended Books</title>
            </head>
            <body>
                <h1>The list of recommended books</h1>
                <table cellspacing="12px">
                    <xsl:apply-templates select="json-doc($input)?books?book"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <!-- Template that matches the maps -->
    <xsl:template match=".[. instance of map(*)]">
        <!-- Book -->
        <tr>
            <td valign="top">
                <!--Image-->
                <img src="{?image?src}" alt="{?image?escription}" width="110" height="140"/>
            </td>
            <td>
                <a id="{?anchor}"/>
                <!-- Title with link -->
                <xsl:variable name="title" select="?title"/>
                <xsl:variable name="titleURI" select="?targeturi"/>
                <h3>
                    <a href="{?targeturi}" title="{?title}">
                        <xsl:value-of select="?title"/>
                    </a>
                </h3>
                <!-- Author -->
                <p>
                    <i>by <xsl:value-of select="?author"/>
                    </i>
                </p>
                <!-- Book info -->
                <b>Paperback: </b><xsl:value-of select="?paperback"/> | <b>Publisher: </b><xsl:value-of select="?publisher"/> | <b>Isbn: </b><xsl:value-of select="?isbn"/>
                <!-- Description -->
                <xsl:variable name="description" select="?description"/>
                <p>
                    <xsl:choose>
                        <xsl:when test="$description instance of map(*)">
                            <xsl:value-of select="$description?content"/>
                            <ul>
                                <xsl:for-each select="$description?list?element?*">
                                    <li>
                                        <xsl:value-of select="current()"/>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$description"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </p>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
