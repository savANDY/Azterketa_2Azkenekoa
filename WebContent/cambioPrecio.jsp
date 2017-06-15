<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cambio Precio</title>
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
	<%@ page import="java.util.ArrayList"%>

	<%
		ControladorFiesta controladorFiesta = new ControladorFiesta();
		ControladorGrupo controladorGrupo = new ControladorGrupo();

		ArrayList<Fiesta> fiestas = new ArrayList<Fiesta>();
		fiestas = controladorFiesta.seleccionarTodos();

		ArrayList<Grupo> grupos = new ArrayList<Grupo>();
		grupos = controladorGrupo.seleccionarTodos();
	%>

	<div class="container">
		<form action="precioCambiado.jsp">
			<div class="row">
				<div class="col-md-6">
					<!-- Combo de pueblos -->
					<br>
					<p class="bg-primary">Seleccionar pueblo</p>
					<select name="pueblo" class="form-control">
						<%
							for (Fiesta fies : fiestas) {
						%>
						<option value="<%=fies.getId()%>"><%=fies.getPueblo()%> -
							<%=fies.getNombre()%></option>
						<%
							}
						%>
					</select>
				</div>
				<div class="col-md-6">
					<br>
					<p class="bg-primary">Seleccionar grupo</p>
					<!-- combo de grupos -->
					<select name="grupo" class="form-control">
						<%
							for (Grupo gru : grupos) {
						%>
						<option value="<%=gru.getId()%>"><%=gru.getNombre()%></option>
						<%
							}
						%>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<!-- input de precio nuevo -->
					<h3>Introduce el precio nuevo:</h3>
					<br> <input type="text" name="precio" class="form-control" />
					<br> <input type="submit" class="btn btn-default"
						name="cambiar" value="cambiar" />
				</div>
		</form>
	</div>
	</div>
</body>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</html>