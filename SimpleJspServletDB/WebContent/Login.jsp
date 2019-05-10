<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>XSeed - Estágio</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
	<form action="LoginConfere.jsp" method="Post">
	<div class="container">

		<label for="login"><b>Usuario</b></label>
			<input type="text" class="form-control" placeholder="Usuario" name="login" required>
			<br>
		<label for="password"><b>Senha</b></label>
			<input type="password" class="form-control" placeholder="Senha" name="password" required>
			<br>
		<button type="reset" class="btn btn-md btn-warning">Limpar</button>
		<button type="submit" class="btn btn-md btn-primary ">Entrar</button>

	</div>	
</form>
</body>
</html>