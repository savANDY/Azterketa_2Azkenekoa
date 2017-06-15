<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar agenda</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
</head>
<body>

	<%@ page import="eus.agenda.modelo.*"%>
	<%@ page import="eus.agenda.controlador.*"%>

	<%
	
		ControladorFiesta controladorFiesta = new ControladorFiesta();

		String pueblo = request.getParameter("pueblo");
		boolean comprobarExiste = false;
		if (pueblo != null) {

			comprobarExiste = controladorFiesta.comprobarFiesta(pueblo);

		}
	%>


	<div class="container">

		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<!-- formualrio para introducir el pueblo -->
				<br>
				<div class="jumbotron">
					<form action="consultar.jsp">
						<h3>Introduce el nombre del pueblo:</h3>
						<br> <input type="text" name="pueblo" class="form-control" />
						<br> <input type="submit" class="btn btn-default"
							name="consultar" value="consultar" />

					</form>
				</div>
			</div>
		</div>

		<%
			if (comprobarExiste) {
				Fiesta fiesta = new Fiesta();
				fiesta = controladorFiesta.seleccionarPorPueblo(pueblo);
		%>

		<div class="row">

			<div class="col-md-4">
				<!-- datos del pueblo -->
				<p class="bg-primary">Info del pueblo</p>
				<table class="table">
					<tr>
						<th>Pueblo</th>
						<td><%=fiesta.getPueblo()%></td>
					</tr>
					<tr>
						<th>Nombre de fiestas</th>
						<td><%=fiesta.getNombre()%></td>
					</tr>
					<tr>
						<th>Mes</th>
						<td><%=fiesta.getMes()%></td>
					</tr>
				</table>

			</div>
			<div class="col-md-8">
				<!-- datos de actuaciones -->
				<p class="bg-primary">Conciertos</p>
				<table class="table">
					<tr>
						<th>id_grupo</th>
						<th>precio</th>
					</tr>
					<tr>
						<td>1</td>
						<td>2300</td>
					</tr>
					<tr>
						<td>2</td>
						<td>2000</td>
					</tr>
					<tr>
						<td>3</td>
						<td>2100</td>
					</tr>
				</table>
			</div>

		</div>

		<%
			}
		%>

	</div>
</body>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</html>