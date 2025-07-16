<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.Book.Model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BookStore</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: cursive;
        background-color: white;
        color: #333;
        line-height: 1.6;
    }

    .navbar {
        background-color: black;
        padding: 5px 15px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    }

    .navbar .logo img {
        height: 80px;
    }

    .navbar-links {
        display: flex;
        margin-right: 100px;
        gap: 30px;
        align-items: center;
    }

    .navbar-links a {
        color: white;
        text-decoration: none;
        font-family: sans-serif;
        font-size: 16px;
        font-weight: bold;
        position: relative;
    }

    .navbar-links a:hover {
        text-decoration: underline;
    }

    .dropdown {
        position: relative;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        top: 25px;
        background-color: white;
        min-width: 160px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        z-index: 1;
        border-radius: 4px;
    }

    .dropdown-content a {
        color: black;
        padding: 10px 16px;
        text-decoration: none;
        display: block;
        font-size: 14px;
    }

    .dropdown-content a:hover {
        background-color: #f1f1f1;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    h1 {
        padding: 20px 40px;
        text-align: center;
        color: red;
    }

    .book-container {
        margin: 20px 90px;
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
    }

    .book-card {
        width: 430px;
        height:150px;
        display: flex;
        flex-direction: row;
        border-radius: 10px;
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
        background-color: white;
        padding: 10px;
        overflow: hidden;
    }

    .book-img {
        width: 80%;
        max-height: 200px;
        display: flex;
        align-items: left;
        justify-content: left;
        overflow: hidden;
        margin-left:-10px;
        margin-top:-10px;
    }

    .book-img img {
        max-width: 100%;
        max-height: 100%;
        object-fit: contain;
    }

    .card-right {
        width: 60%;
        padding-left: 10px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .card-content {
        font-size: 13px;
        word-wrap: break-word;
        color:black;
        overflow-wrap: break-word;
        font-style: italic;
    }

    .book-name {
        font-family: cursive;
        font-size: 14px;
        font-variant: small-caps;
        text-align: left;
        margin-bottom: 5px;
        margin-left:-50px;
        color:red;
        text-shadow: 5px 5px 10px black;
    }

    .buy-now-btn {
        color: white;
        width: 45px;
        height: 100px;
        margin-top:-100px;
        margin-left:201px;
        border: 1px solid red;
        border-radius: 10px 0px 10px 10px;
        background-color: red;
        cursor: pointer;
        box-sizing:border-box;
        box-shadow:-5px 10px 20px black;
        font-family: sans-serif;
        font-weight: bolder;
    }

    .buy-now-btn:hover {
        background-color: black;
        color: red;
        box-shadow:-5px 10px 20px red;
        border: 1px solid black;
    }
</style>
</head>

<body>

<%
    String name = (String) session.getAttribute("name");
    List<Books> bookList = (List<Books>) session.getAttribute("bookList");
%>

<!-- Navbar -->
<div class="navbar">
    <div class="logo">
        <img src="images/logo3.png" alt="Logo">
    </div>
    <div class="navbar-links">
        <a href="Home.jsp">Books</a>
        <a href="User.jsp">User</a>
        <div class="dropdown">
            <a href="#">Sort ▾</a>
            <div class="dropdown-content">
                <a href="SortServlet?action=type">Book Type</a>
                <a href="SortServlet?action=price_low">Low to High</a>
                <a href="SortServlet?action=price_high">High to Low</a>
            </div>
        </div>
    </div>
</div>

<!-- Welcome Message -->
<div>
    <h1>Welcome back <span class="typing"><%= name != null ? name : "Guest" %>..!!</span></h1>
</div>

<!-- Book Cards -->
<div class="book-container">
<%
    if (bookList != null && !bookList.isEmpty()) {
        for (Books book : bookList) {
%>
    <div class="book-card">
        <div class="book-img">
            <img src="images/<%= book.getBookName() + ".jpg" %>" alt="<%= book.getBookName() %>">
        </div>
        <div class="card-right">
            <p class="book-name"><%= book.getBookName() %></p>
            <div class="card-content">
                <p><strong>Author:</strong> <%= book.getAuthor() %></p>
                <p><strong>Type:</strong> <%= book.getBookType() %></p>
                <p><strong>Price:</strong> ₹<%= book.getPrice() %></p>
            </div>
            <form action="CartServlet" method="get">
                <input type="hidden" name="book_id" value="<%= book.getBook_id() %>">
                <input type="hidden" name="quandity" value="1">
                <input type="hidden" name="action" value="add">
                <button class="buy-now-btn" type="submit">Buy Now</button>
            </form>
        </div>
    </div>
<%
        }
    } else {
%>
    <p style="color: black; text-align: center;">No books available to display.</p>
<%
    }
%>
</div>

</body>
</html>
