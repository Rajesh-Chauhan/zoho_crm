<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="menu.jsp"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list of Contacts</title>
</head>
<body>
    
    <h2>List Of Contacts </h2>
  <table border=1>
     <tr>
          <th>Id</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Lead</th>
          <th>Mobile</th>
          <th>Billing</th>
          
          
          <c:forEach items="${contacts}" var="contact">
          <tr>
              <td>${contact.id} </td>              
              <td><a href="getContactById?id=${lead.id}">${contact.firstName}</a></td>
              <td>${contact.lastName}</td>
              <td>${contact.email}</td>
              <td>${contact.leadSource}</td>              
              <td>${contact.mobile}</td>    
               <td><a href="getContactById?id=${contact.id}">Generate Bill</a></td>
                  
              
          </tr>          
           </c:forEach>				                   
        								                   	
     </tr>
  </table>
    
</body>
</html>