<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--  <link href="./resources/css/estilo.css" rel="stylesheet" type="text/css">-->
<title>Lista de Embarcações</title>
</head>
<body>
<div class="column middle">
	<div class="form">
		<table id="tabelas">
			<thead>
				<tr>
					<th><b>Id</b></th>
					<th><b>Tipo</b></th>
					<th><b>Capacidade</b></th>
					<th><b>Nome</b></th>
					<th><b>Fechada</b></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${b}" var="barcos">
					<tr>
						<td align="center"><c:out value="${barcos.id}"></c:out></td>
						<td align="center"><c:out value="${barcos.tipo}"></c:out></td>
						<td align="center"><c:out value="${barcos.capacidade}"></c:out></td>
						<td align="center"><c:out value="${barcos.nome}"></c:out></td>
						<td align="center"><c:out value="${barcos.fechada}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<form name="voltar" action="/">
		<input type="submit" name="action" value="Voltar" />
	</form>
</div>
</body>
</html>
