<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="css/style.css">

	<title>Main</title>

</head>
<body>
	<div style="text-align:center">
	<h1>Menu</h1>
	
	<table>
		<tr>
			<form action="Login">
	    		<button type="submit" class="btnSubmit">Lista de Usuários</button>
			</form>
			<form action= http://localhost:8080/SimpleJspServletDB/userTest.jsp>
	    		<button type="submit" class="btnSubmit">Adicionar Usuário</button>
			</form>
			<form action="http://localhost:8080/SimpleJspServletDB/Login.jsp">
	    		<button type="submit" class="btnSubmit">Logout</button>
			</form>
		</tr>

		</table>
		</div>
</body>
</html>