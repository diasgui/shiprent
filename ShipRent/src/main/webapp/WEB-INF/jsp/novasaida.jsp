<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />

<title>Barcos Cadastro</title>
</head>
<body>

	<form id="saidda" action="/inicial_barqueiros/save" method="POST">
		<label>Local:<input name="local" type="text" required></label><br />
		<label>Data:<input name="data" type="date" required></label><br />
		<label>Hora:<input name="hora" type="time" required></label><br />
		<label>Vagas:<input name="vagas" type="number" required></label><br />
		<label>Tipo:
			<select name="tipo" required>
				<option value="turismo">Turismo</option>
				<option value="pesca">Pesca</option>
			</select>
		</label><br />
		<label>Duração:<input name="duracao" type="number" required>horas</label><br />
		<label>Preço:<input name="preco" type="number" step="0.01" required></label><br />
		<label>Fechada:<input name="fechada" type="text" required></label><br />
		<input type="submit" name="action" value="Enviar" />
	</form>
	
	<br>
	<a href="/inicial_barqueiros">Voltar</a>
</body>
</html>