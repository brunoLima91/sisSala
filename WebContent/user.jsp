<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
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

    <form method="POST" action='UserController' name="frmAddUser">         
        
            <input type="hidden" name="userid" value="<c:out value="${user.userid}" />">         
        Login : <input
            type="text" name="login"
            value="<c:out value="${user.login}" />" /> <br /> 
        Senha : <input
            type="password" name="senha"
            value="<c:out value="${user.senha}" />" /> <br />
        CPF : <input
            type="text" name="cpf"
            value="<c:out value="${user.cpf}" />" /> <br /> 
        Data de Nascimento : <input
            type="text" name="dataNascimento"
            value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dataNascimento}" />" /> <br /> 
        Email : <input type="email" name="email"
            value="<c:out value="${user.email}" />" /> <br /> <input
            type="submit" value="Submit" />
    </form>
</body>
</html>