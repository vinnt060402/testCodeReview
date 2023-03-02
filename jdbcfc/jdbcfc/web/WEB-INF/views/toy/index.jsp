<%-- 
    Document   : index
    Created on : Feb 13, 2023, 1:03:05 PM
    Author     : PHT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2>Toy CRUD</h2>
<hr/>
<a href="<c:url value="/toy/create.do" />"><i class="bi bi-pencil-square"></i> Create</a>
<table class="table table-striped">
    <tr>
        <th>No.</th>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Expired Date</th>
        <th>Brand Id</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="toy" items="${list}" varStatus="loop">
        <tr>
            <td>${loop.count}</td>
            <td>${toy.id}</td>
            <td>${toy.name}</td>
            <td>${toy.price}</td>
            <td>${toy.expDate}</td>
            <td>${toy.brandId}</td>
            <td>
                <a href="<c:url value="/toy/edit.do?id=${toy.id}" />"><i class="bi bi-pencil-square"></i> Edit</a> | 
                <a href="<c:url value="/toy/delete.do?id=${toy.id}" />"><i class="bi bi-trash3"></i> Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
