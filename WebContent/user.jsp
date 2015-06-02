<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<link type="text/css" href="css/bootstrap.css" rel="stylesheet" />
<link type="text/css" href="css/style.css" rel="stylesheet" />

<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>



<title>Add new user</title>
</head>
<body>
    <script>
        $(function() {
            $('input[name=dob]').datepicker();
        });
    </script>

    <form method="POST" action='UserController' name="frmAddUser" class="form-inline" >         
		<div class="form-group" id="boxForm">
			<input type="hidden" name="userid" 
			    	value="<c:out value="${user.userid}" />">
			
			<div id="input" class="input-group" >         
				<div class="input-group-addon">Login</div>
				<input class="form-control" placeholder="Login "  
						type="text" name="login"
			    		value="<c:out value="${user.login}" />" />
			</div> <br /> 
			
			<div id="input" class="input-group" >
			<div class="input-group-addon">Senha</div>
			<input	class="form-control" placeholder="Senha" 
			    type="password" name="senha"
			    value="<c:out value="${user.senha}" />" />
		    </div><br />
		   
		    <div id="input" class="input-group" >
			<div class="input-group-addon">Cpf</div><input
			    class="form-control" placeholder="Cpf" 
			    type="text" name="cpf"
			    value="<c:out value="${user.CPF}" />" />
		    </div>  <br />
			
			<div  id="input" class="input-group" >
			
			<div  class="input-group-addon">Data de Nascimento</div> <input
			    class="form-control" placeholder="Data de nascimento " 
			    type="text" name="dataNascimento"
			    value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dataNascimento}" />" />
		    </div> <br />
		    
		    <div id="input" class="input-group" > 
			<div class="input-group-addon">Email</div>
			<input		class="form-control" placeholder="Data de nascimento "
				type="email" name="email"
			    value="<c:out value="${user.email}" />" />
		    </div>  
		    <div id="butao"> 
		   		<input  type="submit" value="Submit" class="btn btn-primary"/>
		    </div>
    	</div>
    </form>
</body>
</html>