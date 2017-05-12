 <%@page import="bean.logindao"%>  
<jsp:useBean id="obj" class="bean.loginbean"/>

 <%@page import="java.sql.Connection"%>  

<jsp:setProperty property="*" name="obj"/>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
     <%  
         System.out.println(obj)
                 ;
String name=logindao.validate(obj);  
//login if status=true and set session
    if(name != ""){
        session.setAttribute("logstatus","true");
    out.println("<center><h1>Welcome back "+ name +" </h1></center>");
//    session.setAttribute("session",request.getParameter("email"));
   %>
       <center>
      <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="window.location.href='index.jsp'">home</button>
       </center>
    <%
    }
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="login.jsp"></jsp:include>  
<%  
}
    %>
    

