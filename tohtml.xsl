<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:template match="cheatsheet">
    <html>
      <head>
        <title>The Big Emacs Cheatsheet</title>
        <link rel="stylesheet" type="text/css" href="cheatsheet.css"/>
      </head>

      <body>
        <xsl:apply-templates select="header"/>
        <xsl:apply-templates select="body"/>
        <xsl:apply-templates select="footer"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="header">
    <div class="headerdiv">
      <span class="headtitle"><xsl:value-of select="title"/></span><br />
      <span class="headsubtitle"><xsl:value-of select="subtitle"/></span>
      <xsl:for-each select="txline">
        <p><xsl:value-of select="."/></p>
      </xsl:for-each>
    </div>
  </xsl:template>

  <!-- 2017-11-11T09.36
    As suggested by JLRishe on stackoverflow.com/questions/47222575
  -->
  <xsl:template match="descr//*">
    <xsl:element name="{local-name()}" namespace="http://www.w3.org/1999/xhtml">
      <xsl:apply-templates select="node() | @*" />
    </xsl:element>
  </xsl:template>

  <xsl:template match="body">
    <xsl:for-each select="chapter">
      <xsl:variable name="TITLE" select="@title"/>
      <div class="bodydiv">
        <div class="bodytitle">
          <xsl:value-of select="@title"/>
        </div>

        <xsl:for-each select="it">
          <div class="itdiv">
            <table style="page-break-after: avoid">
              <tr>
                <xsl:choose>
                  <xsl:when test="key">
                    <td>
                      <kbd><xsl:value-of select="key"/></kbd>
                    </td>
                  </xsl:when>
                  <xsl:otherwise>
                    <td>
                      <xsl:text> </xsl:text>
                    </td>
                  </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                  <xsl:when test="func">
                    <td align="right">
                      <xsl:choose>
                        <xsl:when test="$TITLE='Regular expressions'">
                          <xsl:value-of select="func"/>
                        </xsl:when>
                        <xsl:when test="$TITLE='Regex examples'">
                          <xsl:value-of select="func"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <em><xsl:value-of select="func"/></em>
                        </xsl:otherwise>
                      </xsl:choose>
                    </td>
                  </xsl:when>
                  <xsl:otherwise>
                    <td>
                      <xsl:text>  </xsl:text>
                    </td>
                  </xsl:otherwise>
                </xsl:choose>
              </tr>
            </table>
            <xsl:if test="descr">
              <div align="justify">
                <xsl:apply-templates select="descr"/>
              </div>
            </xsl:if>
          </div>
        </xsl:for-each>
      </div>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="footer">
    <div class="footdiv">
      <div class="foothd">
        <hr />
      </div>

      <div align="center">
        <xsl:for-each select="txline">
          <xsl:choose>
            <xsl:when test=". !=''">
              <xsl:value-of select="."/><br/>
            </xsl:when>
            <xsl:otherwise>
              <div style="padding-bottom: .75em"></div>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
