<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="menu.jsp"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list of lead</title>
</head>
<body>
    
    <a href="view">Create New Lead </a>
    <h2>List Of Locations </h2>
  <table border=1>
     <tr>
          <th>Id</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Lead</th>
          <th>Mobile</th>
          
          
          <c:forEach items="${leads}" var="lead">
          <tr>
              <td>${lead.id} </td>              
               <td><a href="getLeadById?id=${lead.id}">${lead.firstName}</a></td>
              <td>${lead.lastName}</td>
              <td>${lead.email}</td>
              <td>${lead.leadSource}</td>              
              <td>${lead.mobile}</td>    
                  
              
          </tr>          
           </c:forEach>				                   
        								                   	
     </tr>
  </table>
    
</body>
</html>