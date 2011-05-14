<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0" xmlns:xalan="http://xml.apache.org/xslt"
	xmlns:Q1="http://www.praxis.org/mensagensAosUsuários"
	xmlns:fn="http://www.w3.org/2005/02/xpath-functions">

	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="/">
		<html>
			<head>
				<title>
					Mensagens aos Usuários
					<xsl:value-of
						select="/Q1:mensagensAosUsuários/título" />
				</title>
			</head>
			<body>
				<h1 align="center">
					Mensagens aos Usuários do Produto 
					<xsl:value-of
						select="/Q1:mensagensAosUsuários/título" />
				</h1>

				<br />
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Grupo</th>
						<th>Identificação</th>
						<th>Categoria</th>
						<th>Texto</th>
					</tr>
					<xsl:for-each
						select="/Q1:mensagensAosUsuários/mensagens/mensagem">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="center" width="10%">
								<xsl:value-of select="grupo" />
							</td>
							<td width="25%">
								<xsl:value-of select="identificação" />
							</td>
							<td width="12%">
								<xsl:value-of select="categoria" />
							</td>
							<td width="43%">
								<xsl:value-of select="texto" />
							</td>
						</tr>
					</xsl:for-each>
				</table>

				<br />


			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
