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
	<form action="./alunoControle">
		<table>
			<tr>
				<div>
					<th style="text-align: left"><label for="alunoID">ID:</label></th>
					<th><input type="text" id="alunoID" /></th>
				</div>
			</tr>
			<tr>
				<div>
					<th style="text-align: left"><label for="alunoRA">RA:</label></th>
					<th><input type="text" id="alunoRA" /></th>
				</div>
			</tr>
			<tr>
				<div>
					<th style="text-align: left"><label for="alunoNome">Nome:</label></th>
					<th><input type="text" id="alunoNome" /></th>
				</div>
			</tr>
			<tr>
				<div>
					<th style="text-align: left"><label for="alunoNasc">Nascimento:</label></th>
					<th><input type="date" id="alunoNasc" /></th>
				</div>
			</tr>
			<tr>
				<div>
					<th style="text-align: left"><button type="submit">Adcionar</button></th>
				</div>
			</tr>
		</table>
	</form>
</body>
</html>