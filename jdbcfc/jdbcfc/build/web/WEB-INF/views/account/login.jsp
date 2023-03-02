<%-- 
    Document   : login
    Created on : Feb 23, 2023, 2:08:54 PM
    Author     : PHT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2>Login Form</h2>
<hr/>
<div class="row">
    <div class="col">
        <form action="<c:url value="/account/login_handler.do" />" method="post">
            <div class="mb-3 mt-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Your email" value="">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" class="form-control" id="password" placeholder="Your password" name="password" value="">
            </div>            
            <button type="submit" class="btn btn-outline-success" name="op" value="login"><i class="bi bi-check-lg"></i> Login</button>
            <button type="submit" class="btn btn-outline-danger" name="op" value="cancel"><i class="bi bi-x-lg"></i> Cancel</button>
        </form>
        <i style="color:red;">${message}</i>
    </div>
    <div class="col">
        <img src="<c:url value="/images/mickey.gif" />" alt=""/>
    </div>
</div>
