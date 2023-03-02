<%-- 
    Document   : main
    Created on : Feb 2, 2023, 12:51:25 PM
    Author     : PHT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC Demo</title>
        <!-- Latest compiled and minified CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Latest compiled JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
        <link href="<c:url value="/css/site.css" />" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <!--header-->
            <div class="row header">
                <div class="col">
                    <h1 class="title">JDBC Demo</h1>
                    <a href="<c:url value="/" />">Home</a> | 
                    <a href="<c:url value="/home/aboutus.do" />">About Us</a> | 
                    <c:if test="${account != null and account.role =='ADMIN'}">
                    <a href="<c:url value="/toy/index.do" />">Toy</a> | 
                    </c:if>
                    <c:if test="${account == null}">
                        <!--Neu user chua login-->
                        <span style="float:right;">
                            <a href="<c:url value="/account/login.do" />">Login</a> | 
                        </span>
                    </c:if>
                    <c:if test="${account != null}">
                        <!--Neu user da login-->
<!--                        <a href="<c:url value="/data/update.do" />">Update</a> | 
                        <a href="<c:url value="/data/delete.do" />">Delete</a> | -->
                        <span style="float:right;">
                            Welcome ${account.fullname} | 
                            <a href="<c:url value="/account/logout.do" />">Logout</a> |
                        </span>
                    </c:if>
                </div>
            </div>
            <!--view-->
            <div class="row content">
                <div class="col">
                    <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp" />
                </div>
            </div>
            <!--footer-->
            <div class="row footer">
                <div class="col">
                    Copyright &copy; by FPT Students
                </div>
            </div>            
        </div>
    </body>
</html>
