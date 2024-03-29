<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head th:replace="layout/base::head('Mis partida','estilos')">

</head>
<body>
	<header th:replace="layout/base::header('Mis partida')"></header>

	<div class="wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">

					<div class="row">
						<div class="col-md-6 mx-auto">
							<div class="card border-secondary">
								<div class="card-header">
									<h3 class="mb-0 my-2">Mis partidas</h3>
								</div>
								<div class="card-body">
								 	
								 	<p><a th:href="@{/crear-partida}" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">Crear Partida</a></p>
								 	<div th:switch="${mispartidas}">
								 	<h2 th:case="null">No se han creado partidas</h2>
								 	 <div th:case="*">
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">Partida</th>
													<th scope="col">Deporte</th>
													<th scope="col">Ciudad</th>
													<th scope="col">Fecha</th>
													<th scope="col">Hora comienzo</th>
													<th scope="col">Participantes</th>
													<th scope="col">Acci&oacute;n</th>
												</tr>
											</thead>
											<tbody>
												 <tr th:each="partida : ${mispartidas}">
												 	<td th:text="${partida.id}"></td>
												 	<td th:text="${partida.deporte}"></td>
												 	<td th:text="${partida.ciudad}"></td>
												 	<td th:text="${partida.fecha}"></td>
												 	<td th:text="${partida.horaComienzo}"></td>
												 	<td><span class="badge badge-pill badge-warning" th:text="${#sets.size(partida.usuariosParticipantes)+'/'+partida.participantes}"></span></td>
												 	<!-- https://github.com/waylau/thymeleaf-tutorial/blob/master/docs/expression-utility-objects.md -->
												 	 <td><a th:href="@{/eliminar-partida/{id}(id=${partida.id})}"  class="btn btn-danger btn-sm active" role="button" aria-pressed="true">Eliminar</a></td>
												 </tr>
											</tbody>
										</table>
									</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--/row-->

				</div>
				<!--/col-->
			</div>
			<!--/row-->
		</div>
		<!--/container-->




	</div>
	<div class="wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">

					<div class="row">
						<div class="col-md-6 mx-auto">
							<div class="card border-secondary">
								<div class="card-header">
									<h3 class="mb-0 my-2">Partidas a las que me he unido</h3>
								</div>
								<div class="card-body">
								 	
								 
								 	<div th:switch="${partuni}">
								 	<h2 th:case="null">No tienes partidas</h2>
								 	 <div th:case="*">
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">creador</th>
													<th scope="col">Deporte</th>
													<th scope="col">Ciudad</th>
													<th scope="col">Fecha</th>
													<th scope="col">Hora comienzo</th>
													<th scope="col">Participantes</th>
													<th scope="col">abandonar</th>
													<th scope="col">informacion</th>
												</tr>
											</thead>
											<tbody>
												 <tr th:each="partuni : ${partuni}">
												 	<td th:text="${partuni.creador}"></td>
												 	<td th:text="${partuni.deporte}"></td>
												 	<td th:text="${partuni.ciudad}"></td>
												 	<td th:text="${partuni.fecha}"></td>
												 	<td th:text="${partuni.horaComienzo}"></td>
												 	<td><span class="badge badge-pill badge-warning" th:text="${#sets.size(partuni.usuariosParticipantes)+'/'+partuni.participantes}"></span></td>
												 	<!-- https://github.com/waylau/thymeleaf-tutorial/blob/master/docs/expression-utility-objects.md -->
												 	<td><a th:href="@{/abandonar-partida/{id}(id=${partuni.id})}"  class="btn btn-primary btn-sm active" role="button" aria-pressed="true">abandonar</a></td>
												 	<td><a th:href="@{/info-partida/{id}(id=${partuni.id})}"  class="btn btn-warning btn-sm active" role="button" aria-pressed="true">+info</a></td>
												 </tr>
											</tbody>
										</table>
									</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--/row-->

				</div>
				<!--/col-->
			</div>
			<!--/row-->
		</div>
		<!--/container-->

	</div>

	<footer th:replace="layout/base::footer()"></footer>
</body>
</html>