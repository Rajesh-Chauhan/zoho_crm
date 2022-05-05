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
 
  <form action="saveLead"  method="post"> 
 <fieldset>
  <legend>User create  lead </legend><br><br> 
 
      First Name : <input type="text"  name="firstName"/><br><br>
      Last Name  : <input type="text"  name="lastName"/><br><br>
      Email      : <input type="text"  name="email"/><br><br>
     Lead Source :            
                  <select name="leadSource">
					  <option value="tv commercial">TV Commercial</option>
					  <option value="radio">radio</option>
					  <option value="news paper">news paper</option>
					  <option value="online">online</option>
                  </select><br><br>
      
       Mobile    : <input type="text"  name="mobile"/><br><br>
                   <input type="submit"  name="save"/><br><br>
   </fieldset>
   </form>
</body>
</html>