<!-- Indian News XSLT file -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Indian News</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="style.css"/>
      </head>
      <body>
        <div class="heading">
          <h1>Indian News</h1>
        </div>
        <div class="container">
          <xsl:for-each select="news/article">
            <div class="card" style="margin-bottom: 20px;border: 1px solid #ccc;">
              <div class="card-body">
                <h2 class="card-title"><xsl:value-of select="title"/></h2>
                <p class="card-text"><strong>Author:</strong> <xsl:value-of select="author"/></p>
                <p class="card-text"><strong>Date:</strong> <xsl:value-of select="date"/></p>
                <p class="card-text"><strong>Content:</strong> <xsl:value-of select="content"/></p>
              </div>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

  