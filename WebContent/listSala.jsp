<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Lista de Salas</title>
</head>
<body>
    <table border=1>
        <thead>
            <tr>                
                <th>Nome</th>
                <th>Capacidade</th>                
                <th colspan=2>A豫o</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${salas}" var="sala">
                <tr>                    
                    <td><c:out value="${sala.nome}" /></td>
                    <td><c:out value="${sala.capacidade}" /></td>                    
                    <td><a href="SalaController?action=edit&salaId=<c:out value="${sala.salaId}"/>">Atualizar</a></td>
                    <td><a href="SalaController?action=delete&salaId=<c:out value="${sala.salaId}"/>">Remover</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="SalaController?action=insert">Novo Sala</a></p>
</body>
</html>