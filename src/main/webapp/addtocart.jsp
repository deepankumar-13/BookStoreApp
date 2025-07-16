<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.Book.Model.*"%>
<%@ page import="com.Book.Controller.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f3f6;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            padding: 20px;
        }

        .left-section {
            width: 65%;
            background-color: #fff;
            margin-right: 20px;
            padding: 20px;
            border-radius: 8px;
        }

        .right-section {
            width: 30%;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            height: fit-content;
        }

        .address-box {
            background-color: #fff;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 6px;
            border-left: 5px solid #2874f0;
        }

        .cart-card {
            border-bottom: 1px solid #ccc;
            padding: 15px 0;
        }

        .cart-card img {
            width: 120px;
            height: 150px;
            object-fit: cover;
            border-radius: 6px;
            margin-bottom: 10px;
        }

        .cart-card h1 {
            font-size: 20px;
            color: #212121;
        }

        .cart-card h4 {
            margin: 5px 0;
            font-weight: normal;
            color: #555;
        }

        .cart-card h3 {
            color: #1a237e;
        }

        .control-btn {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 10px;
        }

        .quantity-btn {
            padding: 4px 10px;
            background-color: red;
            border: 1px solid red;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }

        .quantity-btn:hover {
            background-color: black;
            color: red;
            border: 1px solid black;
        }

        .remove-btn, .removeall-btn {
            background-color: #d32f2f;
            color: white;
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            margin-top: 10px;
            cursor: pointer;
        }
        
        .remove-btn, .removeall-btn:hover{
        	background-color: black;
            color: red;
            box-shadow: -5px 10px 20px red;
            border: 1px solid black;
        }

        .add-more-items-link {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #2874f0;
            font-weight: bold;
        }

        .value-card h2 {
            font-size: 16px;
            margin: 10px 0;
            color: #333;
        }

        .price-summary-title {
            font-size: 18px;
            font-weight: bold;
            color: #212121;
            margin-bottom: 10px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
        }

        .buy-now-btn {
            color: white;
            width: 100%;
            height: 50px;
            margin-top: 20px;
            border: 1px solid red;
            border-radius: 10px 0px 10px 10px;
            background-color: red;
            cursor: pointer;
            box-sizing: border-box;
            box-shadow: -5px 10px 20px black;
            font-family: sans-serif;
            font-weight: bolder;
            font-size: 16px;
        }

        .buy-now-btn:hover {
            background-color: black;
            color: red;
            box-shadow: -5px 10px 20px red;
            border: 1px solid black;
        }
    </style>
</head>
<body>

<%
    String address = (String) session.getAttribute("address");
    Cart cart = (Cart) session.getAttribute("cart");
    int total = 0;
    int totalQuantity = 0;
    int delivery = 40;
%>

<div class="container">

    <div class="left-section">

        <% if(address != null && !address.isEmpty()) { %>
        <div class="address-box">
            <h3>Deliver to: <%= address %></h3>
        </div>
        <% } %>

        <% if(cart != null) {
            for(CartItems cartItem : cart.getBooks().values()) {
                int itemTotal = cartItem.getPrice() * cartItem.getQuantity();
                total += itemTotal;
                totalQuantity += cartItem.getQuantity();
        %>
        <div class="cart-card">
            <img src="images/<%= cartItem.getNovel_name() %>.jpg" alt="<%= cartItem.getNovel_name() %>">
            <h1><%= cartItem.getNovel_name() %></h1>
            <h4>Type: <%= cartItem.getNovel_type() %></h4>
            <h4>Description: <%= cartItem.getDescription() %></h4>
            <h4>Author: <%= cartItem.getNovel_author() %></h4>
            <h4>Price: ₹<%= cartItem.getPrice() %></h4>
            <h3>Total: ₹<%= itemTotal %></h3>

            <div class="control-btn">
                <form action="CartServlet" method="get">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="book_id" value="<%= cartItem.getNovel_id() %>">
                    <button type="submit" class="quantity-btn" name="quantity" value="<%= cartItem.getQuantity() - 1 %>">−</button>
                    <span><%= cartItem.getQuantity() %></span>
                    <button type="submit" class="quantity-btn" name="quantity" value="<%= cartItem.getQuantity() + 1 %>">+</button>
                </form>
            </div>

            <form action="CartServlet" method="get">
                <input type="hidden" name="action" value="remove">
                <input type="hidden" name="book_id" value="<%= cartItem.getNovel_id() %>">
                <button type="submit" class="remove-btn">Remove Book</button>
            </form>
        </div>
        <% }
        } %>

        <a href="Home.jsp" class="add-more-items-link">+ Add More Books</a>

        <form action="CartServlet" method="get">
            <input type="hidden" name="action" value="clear">
            <button type="submit" class="removeall-btn">Remove All</button>
        </form>
    </div>

    <div class="right-section">
        <div class="value-card">
            <div class="price-summary-title">PRICE DETAILS</div>
            <h2>Price (<%= totalQuantity %> items): ₹<%= total %></h2>
            <h2>Delivery Charges: ₹<%= delivery %></h2>
            <hr>
            <h2><b>Total Amount: ₹<%= total + delivery %></b></h2>
        </div>
        <button class="buy-now-btn">PLACE ORDER</button>
    </div>

</div>

</body>
</html>
