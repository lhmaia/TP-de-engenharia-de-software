<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0" xmlns:xalan="http://xml.apache.org/xslt"
	xmlns:Q1="http://www.praxis.org/especificaçãoDeTeste"
	xmlns:fn="http://www.w3.org/2005/02/xpath-functions">

	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="/">
		<html>
			<head>
				<title>
					Especificação do Teste da
					<xsl:value-of
						select="/Q1:especificaçãoDeTeste/título" />
				</title>
			</head>
			<body>
				<h1 align="center">
					Especificação do Teste da
					<xsl:value-of
						select="/Q1:especificaçãoDeTeste/título" />
				</h1>

				<br />
				<h2>Aspectos a testar</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Requisito</th>
						<th>Comentários</th>
					</tr>
					<xsl:for-each
						select="/Q1:especificaçãoDeTeste/aspectosATestar/aspectoATestar">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td width="30%">
								<xsl:value-of select="requisito" />
							</td>
							<td width="60%">
								<xsl:value-of select="comentário" />
							</td>
						</tr>
					</xsl:for-each>
				</table>

				<br />
				<h2>Abordagens</h2>
				<xsl:choose>
					<xsl:when
						test="count(/Q1:especificaçãoDeTeste/abordagens/abordagem) = 0">
						<p>Não aplicável.</p>
					</xsl:when>
					<xsl:otherwise>
						<table border="1" width="100%">
							<tr align="center" valign="middle">
								<th>Número</th>
								<th>Aspecto</th>
								<th>Detalhes</th>
							</tr>
							<xsl:for-each
								select="/Q1:especificaçãoDeTeste/abordagens/abordagem">
								<tr align="left" valign="middle">
									<td align="center" width="10%">
										<xsl:value-of
											select='position()' />
									</td>
									<td width="20%">
										<xsl:value-of select="aspecto" />
									</td>
									<td width="70%">
										<xsl:value-of select="detalhes" />
									</td>
								</tr>
							</xsl:for-each>
						</table>
					</xsl:otherwise>
				</xsl:choose>

				<h2>Critérios de completeza e sucesso</h2>
				<table border="1" width="100%">
					<tr align="center" valign="middle">
						<th>Número</th>
						<th>Critério</th>
					</tr>
					<xsl:for-each
						select="/Q1:especificaçãoDeTeste/critériosDeCompletezaESucesso/critério">
						<tr align="left" valign="middle">
							<td align="center" width="10%">
								<xsl:value-of select='position()' />
							</td>
							<td width="90%">
								<xsl:value-of select="." />
							</td>
						</tr>
					</xsl:for-each>
				</table>

				<br />
				<h2>Casos de teste</h2>
				<xsl:choose>
					<xsl:when
						test="count(/Q1:especificaçãoDeTeste/casosDeTeste/casoDeTeste) = 0">
						<p>Não aplicável.</p>
					</xsl:when>
					<xsl:otherwise>
						<table border="1" width="100%">
							<tr align="center" valign="middle">
								<th>Número</th>
								<th>Identificação</th>
								<th>Descrição</th>
								<th>Gabarito</th>
								<th>Entidades de teste</th>
								<th>Entidades requeridas</th>
								<th>Entidades proibidas</th>
								<th>Mensagem esperada</th>
							</tr>
							<xsl:for-each
								select="/Q1:especificaçãoDeTeste/casosDeTeste/casoDeTeste">
								<tr align="left" valign="middle">
									<td align="center" width="7%">
										<xsl:value-of
											select='position()' />
									</td>
									<td align="center" width="10%">
										<xsl:value-of
											select="identificador" />
									</td>
									<td width="28%">
										<xsl:value-of
											select="descrição" />
									</td>
									<td align="center" width="10%">
										<xsl:value-of select="espécie" />
									</td>
									<td align="center" width="7%">
										<xsl:value-of
											select="entidadeDeTeste" />
									</td>
									<td align="center" width="7%">
										<xsl:value-of
											select="entidadesRequeridas" />
									</td>
									<td align="center" width="7%">
										<xsl:value-of
											select="entidadesProibidas" />
									</td>
									<td width="25%">
										<xsl:value-of
											select="mensagemEsperada" />
									</td>
								</tr>
							</xsl:for-each>
						</table>
					</xsl:otherwise>
				</xsl:choose>

				<br />
				<h2>Espécies de caso de teste</h2>
				<xsl:choose>
					<xsl:when
						test="count(/Q1:especificaçãoDeTeste/espéciesDeCasoDeTeste) = 0">
						<p>Não aplicável.</p>
					</xsl:when>
					<xsl:otherwise>
						<table>
							<xsl:for-each
								select="/Q1:especificaçãoDeTeste/espéciesDeCasoDeTeste/espécie">
								<tr>
									<td>
										<table border="1" align="left"
											valign="middle" width="100%">
											<tr align="center"
												valign="middle">
											</tr>
											<h3>
												<br />
												<xsl:value-of
													select="título" />
											</h3>
											<tr>
												<td width="15%">
													<b>Identificação</b>
												</td>
												<td width="85%">
													<xsl:value-of
														select="identificador" />
												</td>
											</tr>
											<tr>
												<td>
													<b>
														Aspectos a
														testar
													</b>
												</td>
												<td>
													<xsl:value-of
														select="aspectosEspecíficos" />
												</td>
											</tr>
											<tr>
												<td>
													<b>Entradas</b>
												</td>
												<td>
													<xsl:choose>
														<xsl:when
															test="count(entradas/elementoDeDado) = 0">
															<p>
																Não
																aplicável.
															</p>
														</xsl:when>
														<xsl:otherwise>
															<table
																border="1" width="100%">
																<tr
																	align="center" valign="middle">
																	<th>
																		Tela
																	</th>
																	<th>
																		Campo
																	</th>
																	<th>
																		Valor
																	</th>
																	<th>
																		Ocorrências
																	</th>
																</tr>
																<xsl:for-each
																	select="entradas/elementoDeDado">
																	<tr
																		align="left" valign="middle">
																		<td
																			width="20%">
																			<xsl:value-of
																				select="tela" />
																		</td>
																		<td
																			width="20%">
																			<xsl:value-of
																				select="campo" />
																		</td>
																		<td
																			width="30%">
																			<xsl:value-of
																				select="valor" />
																		</td>
																		<td
																			width="30%">
																			<xsl:value-of
																				select="ocorrências" />
																		</td>
																	</tr>
																</xsl:for-each>
															</table>
														</xsl:otherwise>
													</xsl:choose>
												</td>
											</tr>
											<tr>
												<td>
													<b>
														Saídas esperadas
													</b>
												</td>
												<td>
													<table border="1"
														width="100%">
														<tr
															align="center" valign="middle">
															<th>
																Tela
															</th>
															<th>
																Campo
															</th>
															<th>
																Valor
															</th>
															<th>
																Ocorrências
															</th>
														</tr>
														<xsl:for-each
															select="saídasEsperadas/elementoDeDado">
															<tr
																align="left" valign="middle">
																<td
																	width="20%">
																	<xsl:value-of
																		select="tela" />
																</td>
																<td
																	width="20%">
																	<xsl:value-of
																		select="campo" />
																</td>
																<td
																	width="30%">
																	<xsl:value-of
																		select="valor" />
																</td>
																<td
																	width="30%">
																	<xsl:value-of
																		select="ocorrências" />
																</td>
															</tr>
														</xsl:for-each>
													</table>
												</td>
											</tr>
											<tr>
												<td>
													<b>Ambiente</b>
												</td>
												<td>
													<xsl:value-of
														select="ambiente" />
												</td>
											</tr>
											<tr>
												<td>
													<b>Procedimentos</b>
												</td>
												<td>
													<xsl:value-of
														select="procedimentos" />
												</td>
											</tr>
											<tr>
												<td>
													<b>Dependências</b>
												</td>
												<td>
													<xsl:value-of
														select="dependências" />
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</xsl:for-each>
						</table>
					</xsl:otherwise>
				</xsl:choose>


			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
