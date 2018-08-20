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
	    $("#linkCadastro").click(function(event){
	    	event.preventDefault();
	       $('#modalBody').load('/resources/usuarioCadastro.html');
	    });
 	});
	
	$(document).ready(function() {
    	$("#linkEntrar").click(function(event){
		   event.preventDefault();
	       $('#modalBody').load('/resources/usuarioLogin.html');
	    });
	 });
	
/* 	$(document).ready(function() {
    	$("#linkAluguel").click(function(event){
		   event.preventDefault();
	       $('#div1').load('/resources/jsp/listasaidas.jsp');
	    });
	 }); */
	
	$(document).ready(function() {
    	$("#linkSobre").click(function(event){
		   event.preventDefault();
	       $('#div1').load('/resources/about.html');
	    });
	 });
	
</script> 
</head>
<body>
	<div class="header">
	  <h1>ShipRent</h1>
	  <p>O maior portal de anúncios e alocação de embarcações do Brasil!</p>
	</div>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
	    <span class="navbar-toggler-icon"></span>
	  </button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a href="/" id="linkPrincipal" class="nav-link active">Home</a>
				</li>
				<li class="nav-item">
					<a href="#" id="linkInicialBarqueiros" class="nav-link active">Barqueiros</a>
				</li>
				<li class="nav-item">
					<a href="#" id="linkInicialClientes" class="nav-link active">Cliente</a>
				</li>
				<li class="nav-item">
					<a href="/inicial_clientes/listasaidas" id="linkAluguel" class="nav-link active">Locação</a>
				</li>
				<li class="nav-item">
					<a href="#" id="linkSobre" class="nav-link active">Sobre</a>
				</li>
				<li class="nav-item" style="padding-left: 1030px; padding-right: 10px">
					<button type="button" id="linkCadastro" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
					   Cadastrar-se
					</button>
				</li>
				<li class="nav-item" >
					<button type="button" id="linkEntrar" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
					   Entrar
					</button>
				</li>
			</ul>
		</div>
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
	<div class="container">
		<!-- The Modal -->
		<div class="modal" id="myModal" tabindex="-1">
		  <div class="modal-dialog">
		    <div class="modal-content">
		    
		      <!-- Modal Header -->
		     <div class="modal-header">
		       <h4 class="modal-title">Login/Cadastro</h4>
		       <button type="button" class="close" data-dismiss="modal">&times;</button>
		     </div>
		     
		     <!-- Modal body -->
		     <div class="modal-body" id="modalBody">
		       Modal body..
		     </div>
		     
		     <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		      </div>
		      
		    </div>
		  </div>
		</div>
	</div>
  
</div>
</body>
</html>
