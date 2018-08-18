<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Menu</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="./resources/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="./resources/js/jquery-3.3.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script> 
<script type="text/javascript">

	$(document).ready(function() {
	    $("#buttonInicialBarqueiros").click(function(event){
	       $('#div1').load('/resources/inicial_barqueiro.html');
	    });
	 });
	 
	$(document).ready(function() {
	    $("#buttonInicialClientes").click(function(event){
	       $('#div1').load('/resources/inicial_cliente.html');
	    });
	 });
	
	$('#buttonLogin').click(function(){
		$.ajax({
			url: '%<Url.Action("ValidaUsuario", "ClientesController")?param1='+$('#email').value+' &param2='+$('#password').value+' %>'),
			success: function(data){
				alert("Bem vindo!" + data);
			}
		});
	});
	
</script> 
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid" style="padding:5px; background-color:black;">
		<div class="row">
			<div class="col-md-auto" style=" padding-top:5px"><button id="buttonInicialBarqueiros" class="btn btn-sm btn-success active navbar-left">Tela inicial Barqueiros</button></div>
			<div class="col-md-auto" style=" padding-top:5px"><button id="buttonInicialClientes" class="btn btn-sm btn-success active navbar-left">Tela inicial Cliente</button></div>
			<form class="form-inline" role="form" style="width:300px">   
			  <div class="form-group" id="divLogin">  
			    <label for="exampleInputEmail1" style="color:white; padding-left:900px; padding-top:5px; padding-right:5px">Email address</label>  
			    <input type="email" class="form-control" id="email" placeholder="Email">
			    
			    <label for="exampleInputPassword1" style="color:white; padding:5px">Password</label>
			    <input type="password" class="form-control" id="password" placeholder="Password" style="padding-right:5x">
			    
			    <button id="buttonLogin" class="btn btn-default">Login</button>     
			  </div>  
			  <div class="form-group"></div>  
			</form>
		</div>
	</div>

	<div class="container text-center" id="div1">
		  <h1 class="display-3 m-5">Bem vindo ao ShipRent!</h1>
		  <p class="lead">
		    O maior portal de anúncios e alocação de embarcações do Brasil!
		  </p>
		</div>

</div>	
</body>
</html>
