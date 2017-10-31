<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:template match="cheatsheet">
    <html>
      <head>
        <title>Testing XML Example</title>
        <style>
          @font-face {
            font-family: 'Adobe Caslon Pro';
            src: url('fonts/ACaslonPro-Regular.otf')
                 format('opentype');
            font-weight: normal;
            font-style: normal;
            }
          @font-face {
            font-family: 'Adobe Caslon Pro';
            src: url('fonts/ACaslonPro-Bold.otf')
                 format('opentype');
            font-weight: bold;
            font-style: normal;
            }
          @font-face {
            font-family: 'Adobe Caslon Pro';
            src: url('fonts/ACaslonPro-Italic.otf')
                 format('opentype');
            font-weight: normal;
            font-style: italic;
            }
          @page {
            size: 297mm 210mm;
            margin: 10mm;
            orphans:2;
            widows:2;
          }
          .onecol {
            column-count: 1;
          }
          .solid {
            page-break-inside: avoid;
          }
          body {
            column-count: 4;
            column-gap: 10px;
            column-fill: balance;
            font-size: .75em;
            font-family: Adobe Caslon Pro;
          }
          table {
            font-size: 1em;
            border: 0;
            border-spacing: 0;
            width: 100%;
          }
          td {
            text-indent: 0;
            vertical-align: top;
            padding: 0;
            width: 50%;
          }
        </style>
      </head>

      <body>

      <xsl:apply-templates select="header"/>

      <xsl:apply-templates select="body"/>

      <xsl:apply-templates select="footer"/>

      </body>
    </html>
  </xsl:template>

  <xsl:template match="header">
    <p align="center" style="font-size: 1em">
      <strong style="font-size: 1.25em">
        <xsl:value-of select="title"/></strong><br />
      <strong style="font-size: .75em">
        <xsl:value-of select="subtitle"/></strong>
    </p>
  </xsl:template>

  <xsl:template match="body">
    <xsl:for-each select="chapter">
      <div style="padding-bottom: .5em;">
      <div class="onecol" align="center"  style="padding-bottom: .125em;">
        <strong><xsl:value-of select="@title"/></strong>
      </div>

      <xsl:for-each select="it">
        <div class="solid" style="padding-bottom: .125em;">
          <table>
            <tr>
              <xsl:choose>
                <xsl:when test="k">
                  <td>
                    <kbd><xsl:value-of select="k"/></kbd>
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td>
                    <xsl:text> </xsl:text>
                  </td>
                </xsl:otherwise>
              </xsl:choose>

              <xsl:choose>
                <xsl:when test="f">
                  <td>
                    <em><xsl:value-of select="f"/></em>
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
          <xsl:if test="d">
            <div class="onecol" align="justify">
              <xsl:value-of select="d"/>
            </div>
          </xsl:if>
        </div>
      </xsl:for-each>
      </div>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="footer">
    <div style="page-break-inside: avoid;">
      <div style="padding-top: .3em; padding-bottom: .3em;">
        <hr />
      </div>
      <div align="center" style="font-size: .75em">
        <xsl:for-each select="line">
            <xsl:value-of select="."/><br />
        </xsl:for-each>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>













