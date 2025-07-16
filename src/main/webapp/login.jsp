<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login User</title>
<style>
	body{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		background-color: white;
	}
	.form-card{
		width: 400px;
		height: 500px;
		display:flex;
		flex-direction:column;
		align-items:center;
		border-radius: 5px;
		margin:60px 550px;
	}	
	
	form{	
		justify-content: center;
	}
	

	
	label{
		color:rgb(255,20,60);
		display: flex;
		margin-top:10px 0px;
		flex-direction: column;
		font-size: 15px;
		font-family:sans-serif;
		font-style:normal;
		font-weight:bolder;
		
	}
	
	input{
		border-style: hidden hidden groove hidden;
		font-style:italic;
		border-color: black;
		font-weight:bolder;
		font-size:medium;
		outline:none;
		border-radius:2px;
		margin-top:10px;
		width: 330px;
		color:black;
	}
	
	h2{
		font-family: sans-serif;
		font-weight: bolder;
		font-size:x-large;
		color:	rgb(230, 3, 3);
		margin-bottom:-5px;
	}
	
	h4{
		font-family: sans-serif;
		font-weight: 700;
		font-size:small;
		margin-bottom:220px;
		color:	rgb(230, 3, 3);
	}
	
	.login-btn{
		width:335px;
		height:40px;
		border-radius:5px;
		background-color: #e60023;
		font-size: medium;
		font-weight:bolder;
		font-family: sans-serif;
		font-style:normal;
		color:white;
		margin-top:10px;
		border-color: red;
		box-shadow:5px 10px 20px black;
		cursor: pointer;  
		
	}
	
	.login-btn:hover{
		background-color:black;
		color:red;
		border-color: black;
		box-shadow:10px 5px 10px red;
	}
	
	
	.pwd-cng{
		font-family: sans-serif;
		font-weight:600;
		font-size:smaller;
		margin-top:20px;
		color:black;
		text-decoration: underline;
	}
	
	.pwd-cng:hover{
		color:navy;
	}
	
	.sign-up{
		color:black;
	}
	
	.sign-up:hover{
		color:navy;
	}
	
	.email{
		margin-top: 20px;
	}
	
	.password{
		margin-top: 30px;
		visibility: visible;
	}
	
	.logo3{
		width:50%;
		height:auto;
		margin-bottom:-60px;
		margin-top: -50px;
		margin-right:15px;
	}
	.login-form{
		margin-top:-220px;
	}
	
</style>
</head>
<body>
	<form action="login" method="post" class="form-card">
		<img class="logo3" src="images/logo3.png" alt="logo">
		<h2>Sign in to Purchase</h2>
		<h4>Don't have account?<a class="sign-up"href="register.jsp">SIGN UP</a> </h4>
		<div class="login-form">
			<div class="email">
				<label for="email">Email</label>
				<input type="email" id="email" name="email" placeholder="Email" required><br><br>
			</div>
			<div class="password">
				<label for="password">Password</label>
				<input type="password" id="password" name="password" placeholder="Password" required><br><br>
			</div>	
		</div>
		<button class="login-btn"type="submit">Sign In</button>
		<a class= "pwd-cng" href="">Forgot Password?</a>
	</form>
</body>
</html>