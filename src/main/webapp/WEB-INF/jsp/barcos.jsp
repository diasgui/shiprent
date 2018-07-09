<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />

<title>Barcos Cadastro</title>
</head>
<body>

	<form id="barcos" action="/barcos/save" method="POST">
		<label>tipo:<input name="tipo" type="textinput" required></label><br />
		<label>capacidade:<input name="capacidade" type="textinput" required></label><br />
		<label>nome:<input name="nome" type="textinput" required></label><br /> 
		<input type="submit" name="action" value="Enviar" />
	</form>

</body>
</html>