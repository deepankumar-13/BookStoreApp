<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
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
		margin-top:-15px;
		margin-bottom:10px;
		margin-right: -40px;
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
		margin-top:4px;
		margin-bottom:4px;
		width: 400px;
		color:black;
	}
	
	.register-form{
		margin-top:-250px;
	}
	
	.logo2{
		width:25%;
		height:auto;
		margin-bottom:-40px;
		margin-top: 30px;
		margin-left:335px;
	}
	
	h2{
		font-family: sans-serif;
		font-weight: bolder;
		font-size:xx-large;
		color:	rgb(230, 3, 3);
		margin-bottom:70px;
		margin-top:-10px;
		margin-left:300px;
	}
	
	h4{
		font-family: sans-serif;
		font-weight: 700;
		font-size:small;
		margin-bottom:300px;
		color:	rgb(230, 3, 3);
		margin-left:340px;
		margin-top:-50px;
	}
	
	.register-btn{
		width:405px;
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
		margin-left:275px;
		
	}
	
	.register-btn:hover{
		background-color:black;
		color:red;
		border-color: black;
		box-shadow:10px 5px 10px red;
	}
	
	.identy{
		display:flex;
		flex-direction: row;
		margin:20px 40px;
	}
	
	.verification{
		display:flex;
		flex-direction: row;
		margin-top:30px;
		margin-left:115px;
	}
	.verification input{
		margin-right:45px;
		margin-left:-75px;
	}
	
	.protection{
		display:flex;
		flex-direction: row;
		margin-top:25px;
		margin-left:-10px;
	}
	
	.contact label{
		margin-left: -75px;
	}
	.username input{
		margin-left:-10px;
	}
	
	.username label{
		margin-left:-10px;
	}
	
	.email input{
		margin-left:35px;
		width:398px;
	}
	
	.email label{
		margin-left:35px;
	}
	
	.password label{
		margin-left:50px;
	}
	
	.password input{
		margin-left:50px;
	}
	
	.confirmPassword label{
		margin-left:35px;
	}
	
	.confirmPassword input{
		margin-left:35px;
		width:403px;
	}
	
	.details{
		margin-left:40px;
		margin-top:20px;
	}
	.details input{
		margin-right:-40px;
		margin-top:5px;
		width:845px;
	}
	
</style>
</head>
<body>
	<form action="registerUser" method="post" class="form-card">
		
		<div class="card-content">
			<img class="logo2" src="images/logo3.png" alt="logo">
			<h2>Create Your Account</h2>
			<h4>Already have an Account?<a class="sign-in"href="login.jsp">SIGN IN</a> </h4>
			<div class="register-form">
				<div class="identy">
					<div class="name">
						<label for="name">Name *</label>
						<input type="text" name="name" placeholder="Name" required><br><br>
					</div>
				
					<div class="email">
						<label for="email">Email *</label>
						<input type="email" name="email" placeholder="Email Id" required><br><br>
					</div>
				</div>	
				
				<div class="verification">
				
					<div class="contact">
						<label for="mobile">Contact Number *</label>
						<input type="number" name="mobile" placeholder="Mobile number" required><br><br>
					</div>
					
					<div class="username">
						<label for="username">UserName *</label>
						<input type="text" name="username" placeholder="Username" required><br><br>
					</div>
				</div>
				
				<div class="protection">
				
					<div class="password">
						<label for="password">Password *</label>
						<input type="password" name="password" placeholder="Password" required><br><br>
					</div>
					
					<div class="confirmPassword">
						<label for="confirmPassword">ConfirmPassword *</label>
						<input type="password" name="confirmPassword" placeholder="ConfirmPassword" required><br><br>
					</div>
					
				</div>
				<div class="details">
					<label for="address">Location *</label>
					<input type="text" name="address" placeholder="Address" required><br><br>
				</div>
			</div>
			<button type="submit" class="register-btn">Sign Up</button>
		</div>

	</form>

</body>
</html>