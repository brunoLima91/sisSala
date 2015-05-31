<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Lista de Usuarios</title>
</head>
<body>
    <table border=1>
        <thead>
            <tr>                
                <th>Login</th>
                <th>Senha</th>
                <th>CPF</th>
                <th>Data de Nascimento</th>
                <th>Email</th>
                <th colspan=2>A豫o</th>
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