<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
<style>
	body {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		background-color: white;
	}

	.form-card {
		width: 400px;
		height: auto;
		display: flex;
		flex-direction: column;
		align-items: center;
		border-radius: 5px;
		margin: 60px auto;
		padding-bottom: 20px;
		box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
	}

	form {
		justify-content: center;
	}

	label {
		color: rgb(255, 20, 60);
		display: flex;
		margin-top: 10px;
		flex-direction: column;
		font-size: 15px;
		font-family: sans-serif;
		font-style: normal;
		font-weight: bolder;
	}

	input, textarea {
		border-style: hidden hidden groove hidden;
		font-style: italic;
		border-color: black;
		font-weight: bolder;
		font-size: medium;
		outline: none;
		border-radius: 2px;
		margin-top: 10px;
		width: 330px;
		color: black;
	}

	textarea {
		resize: none;
		height: 80px;
	}

	h2 {
		font-family: sans-serif;
		font-weight: bolder;
		font-size: x-large;
		color: rgb(230, 3, 3);
		margin-top: 20px;
		margin-bottom: 10px;
	}

	.login-btn {
		width: 335px;
		height: 40px;
		border-radius: 5px;
		background-color: #e60023;
		font-size: medium;
		font-weight: bolder;
		font-family: sans-serif;
		font-style: normal;
		color: white;
		margin-top: 20px;
		border-color: red;
		box-shadow: 5px 10px 20px black;
		cursor: pointer;
	}

	.login-btn:hover {
		background-color: black;
		color: red;
		border-color: black;
		box-shadow: 10px 5px 10px red;
	}

	.logo3 {
		width: 50%;
		height: auto;
		margin-bottom: -20px;
		margin-top: -30px;
		margin-right: 15px;
	}
</style>
</head>
<body>

	<form action="OperationServlet" method="get" class="form-card">
		<img class="logo3" src="images/logo3.png" alt="logo">
		<h2>Add New Book</h2>

		<label for="book_name">Book Name</label>
		<input type="text" id="book_name" name="book_name" placeholder="Enter Book Name" required>

		<label for="author">Author</label>
		<input type="text" id="author" name="author" placeholder="Enter Author Name" required>

		<label for="description">Description</label>
		<textarea id="description" name="description" placeholder="Enter Book Description" required></textarea>

		<label for="book_type">Book Type</label>
		<input type="text" id="book_type" name="book_type" placeholder="e.g., Story Book / Academic" required>

		<label for="price">Price (₹)</label>
		<input type="number" id="price" name="price" placeholder="Enter Price" required>
		
		<form>
			<input type="hidden" name ="action" value="addbook">
			<button class="login-btn" type="submit">Add Book</button>
		</form>
		
	</form>

</body>
</html>
