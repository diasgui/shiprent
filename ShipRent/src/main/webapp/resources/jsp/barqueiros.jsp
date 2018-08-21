<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />

<title>Barqueiros Cadastro</title>
</head>
<body>

	<form id="barqueiros" action="/barqueiros/save" method="POST">
		
		<label>Come<br><input name="nome" type="text" required></label><br />
		<label>CPF<br><input name="cpf" type="text" required></label><br />
		<label>Telefone<br><input name="telefone" type="text" required></label><br />
		<label>Celular<br><input name="celular" type="text" required></label><br />
		<label>Email<br><input name="email" type="text" required></label><br />

		<input type="submit" name="action" value="Enviar" />
	</form>
</body>
</html>
