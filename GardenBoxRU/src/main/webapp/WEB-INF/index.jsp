<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Garden home page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

</head>
<body>
	<div class="fluid-container">
		<div class="d-flex justify-content-center">
			<h1>Garden Box App</h1>
		</div>	
		<div class="d-flex justify-content-center">
			<table>
				<tr>
					<th>Plant Name</th>
					<th>Id</th>
				</tr>
				<c:forEach var="x" items="${plant}">
					<tr>
						<td>${x.name}</td>
						<td>${x.description}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

</body>
</html>