<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0" xmlns:xalan="http://xml.apache.org/xslt"
	xmlns:Q1="http://www.praxis.org/planoDeTestes"
	xmlns:fn="http://www.w3.org/2005/02/xpath-functions">

	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="/">
		<html>
			<head>
				<title>
					Plano de Testes do Produto
					<xsl:value-of
						select="/Q1:planoDeTestes/título" />
				</title>
			</head>
			<body>
				<h1 align="center">
					Plano de Testes do Produto
					<xsl:value-of
						select="/Q1:planoDeTestes/título" />
				</h1>

				<br />
				<h2>Introdução</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Item</th>
						<th>Descrição</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDeTestes/itensDaIntrodução/item">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td style="font-weight: bold;" align="left" width="15%">
								<xsl:value-of select="nome" />
							</td>
							<td width="75%">
								<xsl:value-of select="descrição" />
							</td>
						</tr>
					</xsl:for-each>
				</table>

				<br />
				<h2>Referências</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Tipo do material</th>
						<th>Referência bibliográfica</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDeTestes/referências/itemDeReferência">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="center" width="15%">
								<xsl:value-of select="tipo" />
							</td>
							<td width="75%">
								<xsl:value-of select="referência/ref1" />
								<span style="font-style: italic;" >
								  <xsl:value-of select="referência/ref2" />
								  </span>
								<xsl:value-of select="referência/ref3" />
							</td>
						</tr>
					</xsl:for-each>
				</table>

				<br />

				<br />
				<h2>Itens a testar</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Nome</th>
						<th>Descrição</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDeTestes/itensATestar/itemATestar">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="center" width="20%">
								<xsl:value-of select="nome" />
							</td>
							<td width="70%">
								<xsl:value-of select="descrição" />
							</td>
						</tr>
					</xsl:for-each>
				</table>


				<br />
				<h2>Aspectos a testar</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Aspecto</th>
						<th>Especificação</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDeTestes/aspectosATestar/aspectoATestar">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="left" width="50%">
								<xsl:value-of select="aspecto" />
							</td>
							<td width="40%">
								<xsl:value-of select="especificação" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<br />


				<br />
				<h2>Aspectos que não serão testados</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Aspecto</th>
						<th>Motivo</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDeTestes/aspectosQueNãoSerãoTestados/aspectoQueNãoSeráTestado">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="left" width="30%">
								<xsl:value-of select="aspecto" />
							</td>
							<td width="60%">
								<xsl:value-of select="motivo" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<br />

				<br />
				<h2>Abordagens</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Abordagem</th>
						<th>Detalhes</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDeTestes/abordagens/abordagem">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="left" width="20%">
								<xsl:value-of select="nome" />
							</td>
							<td width="70%">
								<xsl:value-of select="detalhes" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<br />

				<br />
				<h2>Critérios</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Tipo</th>
						<th>Critério</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDeTestes/critérios/critério">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="left" width="15%">
								<xsl:value-of select="tipo" />
							</td>
							<td width="75%">
								<xsl:value-of select="descrição" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<br />


				<br />
				<h2>Agenda</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Aspecto</th>
						<th>Tipo de teste</th>
						<th>Iteração</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDeTestes/agenda/entrada">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="left" width="60%">
								<xsl:value-of select="aspecto" />
							</td>
							<td align="center" width="15%">
								<xsl:value-of select="tipo" />
							</td>
							<td align="center" width="15%">
								<xsl:value-of select="iteração" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<br />

				<br />
				<h2>Ambiente</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Natureza</th>
						<th>Descrição</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDeTestes/ambiente/itemDeAmbiente">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="left" width="30%">
								<xsl:value-of select="natureza" />
							</td>
							<td align="left" width="70%">
								<xsl:value-of select="descrição" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<br />

				<br />
				<h2>Responsabilidades</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Papel</th>
						<th>Responsabilidades</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDeTestes/responsabilidades/responsabilidade">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="left" width="25%">
								<xsl:value-of select="papel" />
							</td>
							<td align="left" width="75%">
								<xsl:value-of select="descrição" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<br />

				<br />
				<h2>Riscos</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Natureza</th>
						<th>Gravidade</th>
						<th>Probabilidade</th>
						<th>Impacto</th>
						<th>Contramedidas</th>
					</tr>
					<xsl:for-each
						select="/Q1:planoDeTestes/riscos/risco">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td align="left" width="20%">
								<xsl:value-of select="natureza" />
							</td>
							<td align="center" width="10%">
								<xsl:value-of select="gravidade" />
							</td>
							<td align="center" width="10%">
								<xsl:value-of select="probabilidade" />
							</td>
							<td align="left" width="25%">
								<xsl:value-of select="impacto" />
							</td>
							<td align="left" width="25%">
								<xsl:value-of select="contramedidas" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<br />

			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
