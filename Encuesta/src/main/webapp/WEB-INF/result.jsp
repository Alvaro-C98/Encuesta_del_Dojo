<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>
	
	<div class="container p-4 m-4 border border-dark" style="width:500px">
		<h5><u>Submitted info</u></h5>
		
		<div class="row">
			<div class="col-sm-5 mt-2">
				<p>Name:</p>
			</div>
			<div class="col mt-2">
				<c:out value="${name}"/>
			</div>
		</div>
		
		<div class="row">
			<div class="col-sm-5">
				<p>Dojo Location:</p>
			</div>
			<div class="col">
				<c:out value="${dojo}"/>
			</div>
		</div>
		
		<div class="row">
			<div class="col-sm-5">
				<p>Favorite Language:</p>
			</div>
			<div class="col">
				<c:out value="${language}"/>
			</div>
		</div>
		
		<div class="row">
			<div class="col-sm-5">
				<p>Comment:</p>
			</div>
			<div class="col">
				<c:out value="${comment}"/>
			</div>
		</div>
		
		<div class="row mt-4">
			<div class="col text-right">
				<a href="/reset"><button>Go Back</button></a>
			</div>
		</div>
	</div>

</body>
</html>