<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>visualizar tarefa</title>
	<link href="resources/css/jquery.css" rel="stylesheet" />
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/jquery-ui.js"></script>		
</head>
<body>
	<h3>Alterar Tarefa</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}" /> Descricao: <br />
		<textarea rows="5" cols="100" name="descricao">${tarefa.descricao}</textarea> <br /> 
		Finalizado? 
		<input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked' : '' } /> <br />
		 Data de finalizacao: <br /> 
		<input type="text" name="dataFinalizacao"
			value='<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>' /> <br />
		<input type="submit" value="Alterar" />
	</form>
</body>
</html>