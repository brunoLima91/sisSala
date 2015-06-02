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

<title>Gerenciamento de Salas</title>
</head>
<body>

	<form class="form-inline" method="POST" action='SalaController' name="frmAddSala">
		<div class="form-group">
		    <input type="hidden" name="salaid" value="<c:out value="${sala.salaId}" />"> 
		    <div id="input" class="input-group">
		      <div class="input-group-addon">Nome</div>
		     
		      <input class="form-control" placeholder="informe o nome" 
		      			type="text" name="nome"value="<c:out value="${sala.nome}" />" /> 
		      	     
		    </div><br>
		    <div id="input" class="input-group" >
		      	<div class="input-group-addon">Capacidade</div>
		   		<input class="form-control" placeholder="Capacidade de Alunos"  
		   				Type="text" name="capacidade" value="<c:out value="${sala.capacidade}" />" />
		    </div>
		    <div id="butao">
		    	<button  type="submit" class="btn btn-primary" value="Salvar" >Salvar</button>
		    </div>
	  	</div>
	 </form>
	 
</body>
</html>