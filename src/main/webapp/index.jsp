<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BookStore - Home</title>
<style>
	body {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		background-color: white;
		font-family: sans-serif;
		display: flex;
		margin-top:-150px;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		height: 100vh;
	}

	.logo {
		width: 250px;
		height: auto;
		margin-bottom: -80px;
	}

	.button-container {
		display: flex;
		gap: 30px;
	}

	.role-btn {
		width: 150px;
		height: 50px;
		border-radius: 5px;
		background-color: #e60023;
		font-size: medium;
		font-weight: bolder;
		color: white;
		border: none;
		box-shadow: 5px 10px 20px black;
		cursor: pointer;
		transition: all 0.3s ease;
	}

	.role-btn:hover {
		background-color: black;
		color: red;
		box-shadow: 10px 5px 10px red;
	}
	h2{
		color:red;
	}
</style>
</head>
<body>
	<img class="logo" src="images/logo3.png" alt="Logo">
	<h2>Welcome to Bookie App..!!</h2>
	<div class="button-container">
		<form action="admin-login.jsp" method="get">
			<button type="submit" class="role-btn">Admin</button>
		</form>
		
		<form action="login.jsp" method="get">
			<button type="submit" class="role-btn">User</button>
		</form>
	</div>

</body>
</html>
