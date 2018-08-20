<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />

<title>Barqueiros Cadastro</title>
</head>
<body>

	<form id="barqueiros" action="/barqueiros/save" method="POST">
		
		<label>nome:<input name="nome" type="text" required></label><br />
		<label>cpf:<input name="cpf" type="text" required></label><br />
		<label>telefone:<input name="telefone" type="text" required></label><br />
		<label>celular:<input name="celular" type="text" required></label><br />
		<label>email:<input name="email" type="text" required></label><br />

		<input type="submit" name="action" value="Enviar" />
	</form>
</body>
</html>
