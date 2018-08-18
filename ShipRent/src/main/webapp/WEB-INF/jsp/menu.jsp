<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="./resources/css/estilo.css" rel="stylesheet" type="text/css">
<title>Menu</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="./resources/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="./resources/js/jquery-3.3.1.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script> 
<script type="text/javascript">

	$(document).ready(function() {
	    $("#linkInicialBarqueiros").click(function(event){
	       $('#div1').load('/resources/inicial_barqueiro.html');
	    });
	 });
	 
	$(document).ready(function() {
	    $("#linkInicialClientes").click(function(event){
	       $('#div1').load('/resources/inicial_cliente.html');
	    });
	 });
	
	$(document).ready(function() {
		$('#form1').submit(function(event){
			event.preventDefault();
			
			var firstname = $('#email').val();
            var lastname = $('#password').val();                
            var data = 'email='
                    + encodeURIComponent(firstname)
                    + '&password='
                    + encodeURIComponent(lastname);
			
			$.ajax({
				url: "/login" ,
				data: data,
				type: "GET",
				success: function(response){
					alert(response);
				},
				error : function(xhr, status, error) {
                    alert(xhr.responseText);
                }
			});
			return false;
		});
	});
	
</script> 
</head>
<body>
	<div class="header">
	  <h1>ShipRent</h1>
	  <p>O maior portal de anúncios e alocação de embarcações do Brasil!</p>
	</div>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
	    <span class="navbar-toggler-icon"></span>
	  </button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a href="/" id="linkPrincipal" class="nav-link active">Home</a>
				</li>
				<li class="nav-item">
					<a href="#" id="linkInicialBarqueiros" class="nav-link active">Tela inicial Barqueiros</a>
				</li>
				<li class="nav-item">
					<a href="#" id="linkInicialClientes" class="nav-link active">Tela inicial Cliente</a>
				</li>
				<li class="nav-item">
					<a href="#" id="linkAluguel" class="nav-link active">Aluguel de barcos</a>
				</li>
				<li class="nav-item">
					<a href="#" id="linkEvento" class="nav-link active">Eventos</a>
				</li>
				<li class="nav-item">
					<a href="#" id="linkSobre" class="nav-link active">Sobre</a>
				</li>
			</ul>
		</div>
		<form class="form-inline" id="form1" method="POST">   
		  <div class="form-group" id="divLogin">  
		    <label id="lbl1" for="exampleInputEmail1" style="color:white; padding-top:5px; padding-right:5px">Email address</label>  
		    <input type="email" class="form-control-sm" id="email" placeholder="Digite o seu e-mail">
		    
		    <label for="exampleInputPassword1" style="color:white; padding:5px">Password</label>
		    <input type="password" class="form-control-sm" id="password" placeholder="Digite a sua senha" style="padding-right:5x">
		    
		    <button type=submit id="buttonLogin" class="btn btn-sm">Login</button>     
		  </div>  
		</form>
	</nav>
	<div>
		<div class="row">
			<div class="column">
				<div id="div1">
					<div id="principal">
						<h1 class="display">Bem vindo ao ShipRent!</h1>
						 <p class="lead">
						   O maior portal de anúncios e alocação de embarcações do Brasil!
						 </p>
					 </div>
				 </div>
			</div>
			<div class="column" >
			</div>
			<div class="column" id="div2">
			</div>
		</div>
	</div>
</body>
</html>
