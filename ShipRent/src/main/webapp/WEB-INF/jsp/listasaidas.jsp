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
<style>
body {
	background-image: linear-gradient(to right, lightblue , aqua);
}

input[type=text], select {
	width: 50%;
	padding:12px 20px;
	margin:	8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing:border-box;
}

input[type=number], select {
	width: 50%;
	padding:12px 20px;
	margin:	8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing:border-box;
}

input[type=radio], select {
	width: 50%;
	padding:12px 20px;
	margin:	8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing:border-box;
}

input[type=submit] { 
	background-color: #555555;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input [type=submit]:hover {
	background-color: #555555;
}
#tabelas {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#tabelas td, #tabelas th {
    border: 1px solid #333;
    padding: 8px;
}

</style>
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
				Id Saída:<br><input type="number" name="id"> <br>
				Quantidade de vagas:<br><input type="number" name="qtd"> <br>
				CPF:<br><input type="text" name="cpf"> <br>
				<input type="submit" name="action" value="Reservar" />
			</form>
		</div>
		<br>
		<form name="voltar" action="/">
			<input type="submit" name="action" value="Voltar" />
		</form>
</body>
</html>