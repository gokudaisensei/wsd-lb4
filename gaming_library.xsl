<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.example.com/gaming">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!-- Template to match the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Gaming Library</title>
            </head>
            <body>
                <h2>Gaming Library</h2>
                <table>
                    <tr>
                        <th>Game ID</th>
                        <th>Game Name</th>
                        <th>Category</th>
                        <th>Release Date</th>
                        <th>Publisher</th>
                        <th>Price</th>
                        <th>Rating</th>
                    </tr>
                    <xsl:for-each select="GamingLibrary/Game">
                        <tr>
                            <td>
                                <xsl:value-of select="GameID"/>
                            </td>
                            <td>
                                <xsl:value-of select="GameName"/>
                            </td>
                            <td>
                                <xsl:value-of select="Category"/>
                            </td>
                            <td>
                                <xsl:value-of select="ReleaseDate"/>
                            </td>
                            <td>
                                <xsl:value-of select="Publisher"/>
                            </td>
                            <td>
                                <xsl:value-of select="Price"/>
                            </td>
                            <td>
                                <xsl:value-of select="Rating"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
