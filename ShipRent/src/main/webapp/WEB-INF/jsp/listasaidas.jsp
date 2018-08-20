<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pt-BR">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="./resources/css/estilo.css" rel="stylesheet" type="text/css">
<title>Saídas de Embarcações</title>
</head>
<body>
<div class="column middle">
	<div class="form">
		<table id="tabelas">
			<thead>
				<tr>
					<th><b>Id</b></th>
					<th><b>Local</b></th>
					<th><b>Data</b></th>
					<th><b>Hora</b></th>
					<th><b>Vagas</b></th>
					<th><b>Tipo</b></th>
					<th><b>Duração (h)</b></th>
					<th><b>Preço (R$)</b></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${saidas}" var="s">
					<tr>
						<td align="center"><c:out value="${s.id}"></c:out></td>
						<td align="center"><c:out value="${s.local}"></c:out></td>
						<td align="center"><c:out value="${s.data}"></c:out></td>
						<td align="center"><c:out value="${s.hora}"></c:out></td>
						<td align="center"><c:out value="${s.vagas}"></c:out></td>
						<td align="center"><c:out value="${s.tipo}"></c:out></td>
						<td align="center"><c:out value="${s.duracao}"></c:out></td>
						<td align="center"><c:out value="${s.preco}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>	
		<br>
		<h3>Alugar Embarcação</h3>
		<div class="form">
			<form name="form" action="/inicial_clientes/novasaida" method="post">
				Id Saída:				<input type="number" name="id"> <br>
				Quantidade de vagas: 	<input type="number" name="qtd"> <br>
				CPF:					<input type="text" name="cpf"> <br>
				<input type="submit" name="action" value="Reservar" />
			</form>
		</div>
		<br>
		<form name="voltar" action="/">
			<input type="submit" name="action" value="Voltar" />
		</form>
</body>
</html>