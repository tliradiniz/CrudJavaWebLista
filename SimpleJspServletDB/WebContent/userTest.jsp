<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
        $(function() {
            $('input[name=expiration]').datepicker();
        });
    </script>

    
		<div class="container register-form">
		<div class="table-wrapper">
            <div class="form">
            
            <div class="note">
            <div class="table-title">
                    <h2>Adição de <b>Usuários</b></h2>
                    </div>
                </div>
               <div class="form-content">
               <form method="POST" action="UserController">
                    <div class="row">
                    <input type="hidden" readonly="readonly" name="userid" value="<c:out value="${user.userid}" />" /> <br />
                        <div class="col-md-6">                        
                            <div class="form-group">
                                <input type="text" class="form-control" name="name" placeholder="Seu nome *" value="${user.name}" /> <br /> 
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="address" placeholder="Endereço *" value="${user.address}" /> <br /> 
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="expiration" placeholder="Validade *" value="${user.date}" /> <br /> 
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="credit" placeholder="Crédito *" value="${user.credit}" /> <br /> 
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btnSubmit">Submit</button>
                    </form>
                </div>
            </div>
            </div>
        </div>

</body>
</html>