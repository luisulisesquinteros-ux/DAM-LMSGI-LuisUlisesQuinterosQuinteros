<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Resultat en HTML</title>
        </head>
        <body>
            <table border="1">
                <tr>
                    <th>Customer Number</th>
                    <th>Customer Name</th>
                    <th>Phone</th>
                    <th>Contact First Name</th>
                    <th>Contact Last Name</th>
                    <th>Addres Line 1</th>
                    <th>Addres Line 2</th>
                    <th>City</th>
                    <th>State</th>
                    <th>Postal Code</th>
                    <th>Country</th>
                    <th>Sales Rep Employee Number</th>
                    <th>Credit Limit</th>
                </tr>
                <xsl:for-each select="customers/customer">
                    <tr>
                        <td><xsl:value-of select="@customerNumber"/></td>
                        <td><xsl:value-of select="customerName"/></td>
                        <td><xsl:value-of select="phone"/></td>
                        <td><xsl:value-of select="contact/contactFirstName"/></td>
                        <td><xsl:value-of select="contact/contactLastName"/></td>
                        <td><xsl:value-of select="address/addressLine1"/></td>
                        <td><xsl:value-of select="address/addressLine2"/></td>
                        <td><xsl:value-of select="address/city"/></td>
                        <td><xsl:value-of select="address/state"/></td>
                        <td><xsl:value-of select="address/postalCode"/></td>
                        <td><xsl:value-of select="address/country"/></td>
                        <td><xsl:value-of select="salesRepEmployeeNumber"/></td>
                        <td><xsl:value-of select="creditLimit"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>