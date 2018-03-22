<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gestão de Alunos</title>
</head>
<body>
	<h1>Gestão de Alunos</h1>
	<form action="./alunoControle" method="post">
		<table>
			<tr>
				<th style="text-align: left"><label for="alunoID">ID:</label></th>
				<th><input type="text" id="alunoID" name="txtID" /></th>
			</tr>
			<tr>
				<th style="text-align: left"><label for="alunoRA">RA:</label></th>
				<th><input type="text" id="alunoRA" name="txtRA"/></th>
			</tr>
			<tr>
				<th style="text-align: left"><label for="alunoNome">Nome:</label></th>
				<th><input type="text" id="alunoNome" name="txtNome"  /></th>
			</tr>
			<tr>
				<th style="text-align: left"><label for="alunoNasc">Nascimento:</label></th>
				<th><input type="date" id="alunoNasc" name="txtNasc"  /></th>
			</tr>
			<tr>
				<th style="text-align: left"><button type="submit">Adcionar</button></th>
			</tr>
		</table>
	</form>
</body>
</html>