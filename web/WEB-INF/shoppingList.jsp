<%-- 
    Document   : shoppingList
    Created on : 13-Oct-2022, 8:20:23 AM
    Author     : porte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${username}! <a href="ShoppingListServlet?action=logout">Logout</a></p>
        
        <h2>List</h2>
        <form action="ShoppingListServlet" method="post">
            
            Add Item: <input type="text" name="addItem">
            <input type="submit" value="Add">
            
            <input type="hidden" name="action" value="add">
        </form>
        
        <!--show list of items -->
        <c:forEach items="${itemList}" var="item">
            <p>${item}</p>
        </c:forEach>
        
    </body>
</html>
