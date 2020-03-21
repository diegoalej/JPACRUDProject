<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
<title>Update Successful</title>
</head>
<body>
	<!-- NAVIGATION -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Garden App</a>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="home.do">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href=""
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Search by </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Id</a> <a class="dropdown-item"
							href="#">Name</a> <a class="dropdown-item" href="#">Description
							keyword</a>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="#">GardenBox
						Tool</a></li>
			</ul>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>
	<!-- MAIN BODY -->
	<div class="container">
		<div class="row">
			<h1>Your plant was found</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<h3>${plant.name}</h3>
		</div>
		<div class="row">
			<div class="col-sm">One of three columns</div>
			<div class="col-sm">One of three columns</div>
			<div class="col-sm">One of three columns</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table>
				<tr>
					<th>Plant Name</th>
					<th>Description</th>
					<c:choose>
						<c:when test="${empty plant.storageUse}">
						</c:when>
						<c:otherwise>
							<th>Storage/Use</th>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr>
					<td>${plant.name}</td>
					<td>${plant.description}</td>
					<c:choose>
						<c:when test="${empty plant.storageUse}">
						</c:when>
						<c:otherwise>
							<td>${plant.storageUse}</td>
						</c:otherwise>
					</c:choose>
				</tr>
			</table>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<p>

				<button class="btn btn-primary" type="button" data-toggle="collapse"
					data-target="#collapsePlant" aria-expanded="false"
					aria-controls="collapsePlant">Update Plant</button>
			</p>
		</div>
		<div class="collapse" id="collapsePlant">
			<div class="row">
				<div class="col-lg-12">
					<form:form class="form-horizontal" action="updatePlant.do"
						method="POST">
						<div class="form-group">
						<label> Plant name </label>
						<input class="form-control" type="text" name="name"
							value="${plant.name}" />
						<br>
						<label> Plant description </label>
						<input class="form-control" type="text" name="description"
							value="${plant.description}" />
						<br>
						<label> Optimal sun </label>
						<input class="form-control" type="text" name="optimalSun"
							value="${plant.optimalSun}" />
						<br>
						<label> Optimal soil </label>
						<input class="form-control" type="text" name="optimalSoil"
							value="${plant.optimalSoil}" />
						<br>
						<label> Planting Considerations </label>
						<input class="form-control" type="text"
							name="plantingConsiderations"
							value="${plant.plantingConsiderations}" />
						<br>
						<label> When to plant </label>
						<input class="form-control" type="text" name="whenToPlant"
							value="${plant.whenToPlant}" />
						<br>
						<label> Growing from seed </label>
						<input class="form-control" type="text" name="growingFromSeed"
							value="${plant.growingFromSeed}" />
						<br>
						<label> Transplanting </label>
						<input class="form-control" type="text" name="transplanting"
							value="${plant.transplanting}" />
						<br>
						<label> Spacing </label>
						<input class="form-control" type="text" name="spacing"
							value="${plant.spacing}" />
						<br>
						<label> Watering </label>
						<input class="form-control" type="text" name="watering"
							value="${plant.watering}" />
						<br>
						<label> Feeding </label>
						<input class="form-control" type="text" name="feeding"
							value="${plant.feeding}" />
						<br>
						<label> Other care </label>
						<input class="form-control" type="text" name="otherCare"
							value="${plant.otherCare}" />
						<br>
						<label> Diseases </label>
						<input class="form-control" type="text" name="diseases"
							value="${plant.diseases}" />
						<br>
						<label> Pests </label>
						<input class="form-control" type="text" name="pests"
							value="${plant.pests}" />
						<br>
						<label> Harvesting </label>
						<input class="form-control" type="text" name="harvesting"
							value="${plant.harvesting}" />
						<br>
						<label> Storage/use </label>
						<input class="form-control" type="text" name="storageUse"
							value="${plant.storageUse}" />
						<br>
						<input class="form-control" type="hidden" name="id"
							value="${plant.id}" />
						<br>
						<input type="submit" value="Update Plant" />
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>

	<!-- BOOTSTRAP JS FILES -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>