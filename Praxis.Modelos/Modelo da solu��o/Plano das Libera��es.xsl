<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0" xmlns:xalan="http://xml.apache.org/xslt"
	xmlns:Q1="http://www.praxis.org/planoDasLiberações"
	xmlns:fn="http://www.w3.org/2005/02/xpath-functions">

	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="/">
		<html>
			<head>
				<title>
					Plano das Liberações do Produto
					<xsl:value-of
						select="/Q1:planoDasLiberações/título" />
				</title>
			</head>
			<body>
				<h1 align="center">
					Plano das Liberações do Produto
					<xsl:value-of
						select="/Q1:planoDasLiberações/título" />
				</h1>

				<br />
				<h2>Lista das liberações</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Iteração</th>
						<th>Objetivos</th>
						<th>Requisitos a serem atendidos</th>
						<th>Observações</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDasLiberações/liberações/liberação">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="center" width="10%">
								<xsl:value-of select="iteração" />
							</td>
							<td width="25%">
								<xsl:value-of select="objetivos" />
							</td>
							<td width="25%">
								<xsl:value-of select="requisitos" />
							</td>
							<td width="30%">
								<xsl:value-of select="observações" />
							</td>
						</tr>
					</xsl:for-each>
				</table>

				<br />


			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
