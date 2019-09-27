<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head th:replace="layout/base::head('Informacion de la portida','estilos')">

</head>
<body>
	<header th:replace="layout/base::header('infopartida')"></header>

	<div class="wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">

					<div class="row">
						<div class="col-md-6 mx-auto">
							<div class="card border-secondary">
								<div class="card-header">
									<h3 class="mb-0 my-2"></h3>
								</div>
								<div class="card-body">
								 	
							
								 	<div th:switch="${mispartidas}">
							
								 	 <div th:case="*">
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">Creador</th>
													<th scope="col">Deporte</th>
													<th scope="col">Ciudad</th>
													<th scope="col">Fecha</th>
													<th scope="col">comienzo</th>
													<th scope="col">Final</th>
													<th scope="col">Participantes</th>
													<th scope="col">Suplentes</th>
												</tr>
											</thead>
											<tbody>
												 <tr th:each="infopart : ${infopart}">
												 	<td th:text="${infopart.id}"></td>
												 	<td th:text="${infopart.deporte}"></td>
												 	<td th:text="${infopart.ciudad}"></td>
												 	<td th:text="${infopart.fecha}"></td>
												 	<td th:text="${infopart.horaComienzo}"></td>
												 	<td th:text="${infopart.horaFin}"></td>
												 	<td><span class="badge badge-pill badge-warning" th:text="${#sets.size(infopart.usuariosParticipantes)+'/'+infopart.participantes}"></span></td>
												 	<!-- https://github.com/waylau/thymeleaf-tutorial/blob/master/docs/expression-utility-objects.md -->
												 	<td><span class="badge badge-pill badge-warning" th:text="${infopart.participantes}"></span></td>
												 	
												 	
												 	
												 </tr>
											</tbody>
											
										</table>
										
										<table class="table table-striped">
										<thead>
												<tr>
													<th scope="col">Comentarios</th>
												</tr>
											</thead>
										<tbody>	
										<td><textarea th:text="${infopart.descripcion}" class="form-control" rows="3"></textarea>
										</td>
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