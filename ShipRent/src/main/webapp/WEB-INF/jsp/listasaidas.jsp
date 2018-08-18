<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />

<title>Saídas de Embarcações</title>
</head>
<body>
	<form action="/inicial_clientes/novasaida">
		<table border="1">
			<thead>
				<tr>
					<th><b>Local</b></th>
					<th><b>Data</b></th>
					<th><b>Hora</b></th>
					<th><b>Vagas</b></th>
					<th><b>Tipo</b></th>
					<th><b>Duração</b></th>
					<th><b>Preço</b></th>
					<th><b>Alugar</b></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${saidas}" var="s">
					<tr>
						<td><c:out value="${s.local}"></c:out></td>
						<td><c:out value="${s.data}"></c:out></td>
						<td><c:out value="${s.hora}"></c:out></td>
						<td><c:out value="${s.vagas}"></c:out></td>
						<td><c:out value="${s.tipo}"></c:out></td>
						<td><c:out value="${s.duracao}"></c:out></td>
						<td><c:out value="${s.preco}"></c:out></td>
						<td>
							<input type="hidden" name="id" value="${s.id}">
							<input type="submit" name="action" value="Reservar" />
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
	<br>
	<a href="/inicial_clientes"> Voltar</a>
</body>
</html>