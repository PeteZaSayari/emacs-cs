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
          .onecol {
            column-count: 1;
          }
          body {
            column-count: 4;
            column-gap: 10px;
            column-fill: balance;
            font-size: .75em;
            font-family: Adobe Caslon Pro;
          }
          .mini {font-size: .075em;}
          table {font-size: 1em;}
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
      <div class="onecol" align="center">
        <strong><xsl:value-of select="@title"/></strong>
        <div><p class="mini"><br/></p></div>
      </div>

      <xsl:for-each select="it">
        <div style="page-break-inside: avoid;">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <xsl:choose>
                <xsl:when test="k">
                  <td valign="top" width="50%">
                    <kbd><xsl:value-of select="k"/></kbd>
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td width="50%">
                    <xsl:text> </xsl:text>
                  </td>
                </xsl:otherwise>
              </xsl:choose>

              <xsl:choose>
                <xsl:when test="f">
                  <td valign="top">
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
          <div>
            <p class="mini"><br/></p>
          </div>
        </div>
      </xsl:for-each>

      <div>
        <p class="mini"><br/></p>
      </div>
      <div>
        <p class="mini"><br/></p>
      </div>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="footer">
    <div>
      <p class="mini"><br/></p>
    </div>

    <hr />

    <div>
      <p class="mini"><br/></p>
    </div>

    <div align="center" style="font-size: .75em">
      <xsl:for-each select="line">
          <xsl:value-of select="."/><br />
      </xsl:for-each>
    </div>
  </xsl:template>

</xsl:stylesheet>













