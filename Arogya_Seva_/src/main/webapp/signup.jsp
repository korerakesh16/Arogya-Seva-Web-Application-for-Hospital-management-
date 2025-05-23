<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<%@ include file="component/allcss.jsp"%>
<style type="text/css">
body {
	background: linear-gradient(to right, #74ebd5, #9face6);
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	animation: fadeIn 1s ease-in-out;
	background-color: white;
	border-radius: 10px;
}

@keyframes fadeIn {
	from {
		opacity: 0;
		transform: translateY(-20px);
	}
	to {
		opacity: 1;
		transform: translateY(0);
	}
}
</style>
</head>
<body>
<%@ include file="component/navbar.jsp"%>

<div class="container p-5">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card paint-card">
				<div class="card-body">
					<p class="fs-4 text-center">User Register</p>

					<c:if test="${not empty sucMsg }">
						<p class="text-center text-success fs-3">${sucMsg}</p>
						<c:remove var="sucMsg" scope="session" />
					</c:if>

					<c:if test="${not empty errorMsg }">
						<p class="text-center text-danger fs-3">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>

					<form action="user_register" method="post">
						<div class="mb-3">
							<label class="form-label">Full Name</label>
							<input required name="fullname" type="text" class="form-control" placeholder="Enter your full name">
						</div>
						<div class="mb-3">
							<label class="form-label">Email address</label>
							<input required name="email" type="email" class="form-control" placeholder="Enter your email">
						</div>
						<div class="mb-3">
							<label class="form-label">Password</label>
							<input required name="password" type="password" class="form-control" placeholder="Create a password">
						</div>
						<button type="submit" class="btn bg-success text-white col-md-12">Register</button>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>
