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

	<%
		ModeloActuacion modeloActuacion = new ModeloActuacion();

		String puebloString = request.getParameter("pueblo");
		String grupoString = request.getParameter("grupo");
		String precioString = request.getParameter("precio");

		if ((puebloString != null) && (grupoString != null) && (precioString != null) && (precioString != "")) {
			int pueblo = Integer.parseInt(request.getParameter("pueblo"));
			int grupo = Integer.parseInt(request.getParameter("grupo"));
			int precio = Integer.parseInt(request.getParameter("precio"));

			boolean modificado = false;

			try {
				modeloActuacion.modificarPrecio(pueblo, grupo, precio);
				modificado = true;
			} catch (Exception e) {
				e.getStackTrace();
	%>

	<div class="container">

		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<h3>NO SE HA PODIDO CAMBIAR EL PRECIO, QUIZAS EL PUEBLO Y EL
					GRUPO NO COINCIDEN</h3>
			</div>

		</div>
	</div>
	<%
		}

			if (modificado) {
	%>

	<div class="container">

		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<h3>¡Precio cambiado!</h3>
			</div>

		</div>
	</div>
	<%
		}
		} else {
	%>

	<div class="container">

		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<h3>¡No se ha podido cambiar el precio, Valores mal
					introducidos o faltan!</h3>
			</div>

		</div>
	</div>

	<%
		}
	%>
</body>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</html>