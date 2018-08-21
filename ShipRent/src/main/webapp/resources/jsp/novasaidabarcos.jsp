<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />

<title>Barcos Cadastro</title>
</head>
<body>
	<form id="saida" action="/inicial_barqueiros/save" method="POST">
		<label>Local<br><input name="local" type="text" required></label><br />
		<label>Data<br><input name="data" type="date" required></label><br />
		<label>Hora<br><input name="hora" type="time" required></label><br />
		<label>Vagas<br><input name="vagas" type="number" required></label><br />
		<label>Tipo<br>
			<select name="tipo" required>
				<option value="turismo">Turismo</option>
				<option value="pesca">Pesca</option>
			</select>
		</label><br />
		<label>Duração<br><input name="duracao" type="number" required> horas</label><br />
		<label>Preço<br><input name="preco" type="number" step="0.01" required> reais</label><br />
		<label>Fechada<br><input name="fechada" type="text" required></label><br />
		<label>Id do Barco<br> <input name="barcoid" type="number" required></label><br>
		<input type="submit" name="action" value="Enviar" />
	</form>
</body>
</html>