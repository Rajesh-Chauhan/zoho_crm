<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead | Create </title>

<style>
body {
  background-color: #cf00fe;
}
</style>
</head>
<body>
 <h2 style="color:black;text-align:center;"> Lead | Create </h2> 
 <hr/> <br><br>
 
  <form action="generate"  method="post"> 
 <fieldset>
  <legend>User create  lead </legend><br><br> 
 
      First Name : <input type="text"  name="firstName"  value="${contact.firstName}" /><br><br>
      Last Name  : <input type="text"  name="lastName" value="${contact.lastName}"/><br><br>
            Email: <input type="text"  name="email" value="${contact.email }"/><br><br>
     Product Name: <input type="text"  name="productName"/><br><br>
     Amount paid : <input type="text"  name="amount"/><br><br>
          
    
       Mobile    : <input type="text"  name="mobile"  value="${contact.mobile}"/><br><br>
                   <input type="submit"  value="generate bill"/><br><br>
   </fieldset>
   </form>
</body>
</html>