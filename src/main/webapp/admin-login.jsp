<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Admin</title>
<style>
	body {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		background-color: white;
		font-family: sans-serif;
	}

	.form-card {
		width: 400px;
		height: auto;
		display: flex;
		flex-direction: column;
		align-items: center;
		border-radius: 5px;
		margin: 60px auto;
		box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
		padding: 30px 20px;
	}

	.logo3 {
		width: 60%;
		height: auto;
		margin-bottom: -60px;
		margin-top: -20px;
	}

	.wel {
		color: red;
		font-size: x-large;
		font-weight: bold;
		margin-bottom: 20px;
		text-align: center;
	}

	form {
		width: 100%;
		display: flex;
		flex-direction: column;
		align-items: center;
	}

	label {
		color: rgb(255, 20, 60);
		display: flex;
		flex-direction: column;
		font-size: 15px;
		font-weight: bold;
		width: 100%;
		margin-top: 15px;
	}

	input {
		border-style: hidden hidden groove hidden;
		font-style: italic;
		border-color: black;
		font-weight: bold;
		font-size: medium;
		outline: none;
		border-radius: 2px;
		margin-top: 10px;
		width: 100%;
		color: black;
		padding: 8px;
	}

	.login-btn {
		width: 100%;
		height: 40px;
		border-radius: 5px;
		background-color: #e60023;
		font-size: medium;
		font-weight: bold;
		color: white;
		margin-top: 25px;
		border: none;
		box-shadow: 5px 10px 20px black;
		cursor: pointer;
	}

	.login-btn:hover {
		background-color: black;
		color: red;
		box-shadow: 10px 5px 10px red;
	}

	.pwd-cng {
		font-size: smaller;
		margin-top: 15px;
		color: black;
		text-decoration: underline;
		cursor: pointer;
	}

	.pwd-cng:hover {
		color: navy;
	}
</style>
</head>
<body>

	<div class="form-card">
		<img class="logo3" src="images/logo3.png" alt="logo">
		<h2 class="wel">Welcome Admin..!!</h2>

		<form action="admin" method="post">
			<label for="username">Username</label>
			<input type="text" id="username" name="username" placeholder="Username" required>

			<label for="password">Password</label>
			<input type="password" id="password" name="password" placeholder="Password" required>

			<button class="login-btn" type="submit">Sign In</button>

			<a class="pwd-cng" href="#">Forgot Password?</a>
		</form>
	</div>

</body>
</html>
