<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0" xmlns:xalan="http://xml.apache.org/xslt"
	xmlns:Q1="http://www.praxis.org/mensagensAosUsuários"
      xmlns:fn="http://www.w3.org/TR/xslt">

	<xsl:template match="/">
		<html>
			<body>
				<xsl:value-of select="fn:replace('ghi', 'gh', 'xx') "/>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
