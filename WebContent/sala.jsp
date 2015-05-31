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
<title>Manunte豫o de Salas</title>
</head>
<body>
    

    <form method="POST" action='SalaController' name="frmAddSala">         
        
            <input type="hidden" name="salaid" value="<c:out value="${sala.salaId}" />">         
        Nome : <input
            type="text" name="nome"
            value="<c:out value="${sala.nome}" />" /> <br /> 
        Capacidade de Alunos : <input
            type="text" name="capacidade"
            value="<c:out value="${sala.capacidade}" />" /> <br />
         <input
            type="submit" value="Salvar" />
    </form>
</body>
</html>