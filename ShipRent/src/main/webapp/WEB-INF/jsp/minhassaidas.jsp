<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="./resources/css/estilo.css" rel="stylesheet" type="text/css">
<title>Saídas de Embarcações</title>
</head>
<div class="column middle"> 
	<div class="form"> 
		<table id="tabelas">
			<thead>
				<tr>
					<th><b>Nome</b></th>
					<th><b>Local</b></th>
					<th><b>Data</b></th>
					<th><b>Hora</b></th>
					<th><b>Vagas</b></th>
					<th><b>Tipo</b></th>
					<th><b>Duração</b></th>
					<th><b>Preço</b></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${saidascli}" var="sc">
					<tr>
						<td align="center><c:out value="${sc.cliente.nome}"></c:out></td>
						<td align="center><c:out value="${sc.saidabarco.local}"></c:out></td>
						<td align="center><c:out value="${sc.saidabarco.data}"></c:out></td>
						<td align="center><c:out value="${sc.saidabarco.hora}"></c:out></td>
						<td align="center><c:out value="${sc.saidabarco.vagas}"></c:out></td>
						<td align="center><c:out value="${sc.saidabarco.tipo}"></c:out></td>
						<td align="center><c:out value="${sc.saidabarco.duracao}"></c:out></td>
						<td align="center><c:out value="${sc.saidabarco.preco}"></c:out></td>
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