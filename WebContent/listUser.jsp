<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="css/bootstrap.css" rel="stylesheet"> 
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="WebContent/js/bootstrap.min.js" type="text/javascript"></script>
<script src="WebContent/css/bootstrap.min.css" type="text/javascript"></script>

<title>Lista de Usuarios</title>
</head>
<body>
    <table border=1>
        <thead>
        	<br /> 
            
            <tr class="info">    
                <th>&nbsp;&nbsp;Login&nbsp;&nbsp;</th>
                <th>&nbsp;&nbsp;Senha&nbsp;&nbsp;</th>
                <th>&nbsp;&nbsp;CPF&nbsp;&nbsp;</th>
                <th>&nbsp;&nbsp;Data de Nascimento&nbsp;&nbsp;</th>
                <th>&nbsp;&nbsp;Email&nbsp;&nbsp;</th>
                <th colspan=2>&nbsp;&nbsp;A豫o&nbsp;&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>                    
                    <td><c:out value="${user.login}" /></td>
                    <td><c:out value="${user.senha}" /></td>
                    <td><c:out value="${user.CPF}"   /></td>
                    <td><fmt:formatDate pattern="yyyy-MMM-dd" value="${user.dataNascimento}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><a href="UserController?action=edit&userId=<c:out value="${user.userid}"/>">Atualizar</a></td>
                    <td><a href="UserController?action=delete&userId=<c:out value="${user.userid}"/>">Remover</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="UserController?action=insert">Novo Usuario</a></p>
</body>
</html>