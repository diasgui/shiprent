<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>Lista de Embarcações</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th><b>Tipo</b></th>
				<th><b>Capacidade</b></th>
				<th><b>Nome</b></th>
				<th><b>Fechada</b></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${b}" var="barcos">
				<tr>
					<td><c:out value="${barcos.tipo}"></c:out></td>
					<td><c:out value="${barcos.capacidade}"></c:out></td>
					<td><c:out value="${barcos.nome}"></c:out></td>
					<td><c:out value="${barcos.fechada}"></c:out></td>
<%-- 					<td><a href="/editar/${cc.id}">
							<button type="submit">Editar</button>
					</a></td>
					<td> <a href="/remover/${cc.id}">
						<button type="submit">Remover</button>
					</a> --%>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<a href = "/inicial_barqueiros"> 
	<button type="submit"> Voltar</button>
	</a>
</body>
</html>
