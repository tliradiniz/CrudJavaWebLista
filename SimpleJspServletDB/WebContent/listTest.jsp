<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap CRUD Data Table for Database with Modal Form</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/styleList.css">

</head>
<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Listar <b>Usuários</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="http://localhost:8080/SimpleJspServletDB/userTest.jsp" class="btn btn-success"><i class="material-icons">&#xE147;</i> <span>Adicionar novo Usuário</span></a>					
					</div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
						<th>
							
						</th>
                        <th>ID</th>
                        <th>Nome</th>
						<th>Endereço</th>
                        <th>Validade</th>
                        <th>Crédito</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
						<td>
							
						<td><c:out value="${user.userid}" /></td>
                    	<td><c:out value="${user.name}" /></td>
                   		<td><c:out value="${user.address}" /></td>
                  	 	<td><fmt:formatDate pattern="yyyy-MMM-dd" value="${user.date}" /></td>
                  		<td><c:out value="R$ ${user.credit}" /></td>
                  		<td>
                        	<a href="UserController?action=edit&userId=<c:out value="${user.userid}"/>" class="edit" ><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                        	<a href="UserController?action=delete&userId=<c:out value="${user.userid}"/>" class="delete" data-toggle="modal" class="delete"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                    </c:forEach>
                 </tbody>
            </table>

        </div>
    </div>
</body>
</html>               