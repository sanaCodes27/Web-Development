<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>
        <head>
            <title>Student Data</title>
            <style>
                table {
                    border-collapse: collapse;
                    width: 50%;
                }
                th, td {
                    border: 1px solid black;
                    padding: 8px;
                    text-align: center;
                }
                th {
                    background-color: lightblue;
                }
            </style>
        </head>

        <body>
            <h2>Student List</h2>

            <table>
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Course</th>
                </tr>

                <xsl:for-each select="students/student">
                    <tr>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="age"/></td>
                        <td><xsl:value-of select="course"/></td>
                    </tr>
                </xsl:for-each>

            </table>
        </body>
        </html>

    </xsl:template>

</xsl:stylesheet>
