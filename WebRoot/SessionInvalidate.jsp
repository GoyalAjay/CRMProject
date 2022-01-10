<%@page import="java.sql.*" %>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>
<%
	try
	{
		InputStream in = getServletContext().getResourceAsStream("Connect.properties");
	    Properties p = new Properties();
	    p.load(in);
	    
	    String dname = (String)p.get("Dname").toString();
	    String url = (String)p.get("URL").toString();
	    String uname = (String)p.get("Uname").toString();
	    String pass = (String)p.get("password").toString();
		
		Class.forName(dname);
		Connection conn = DriverManager.getConnection(url, uname, pass);
		
		
		
		session.invalidate();

      	System.out.println("session deleted ");
      	response.sendRedirect("Index.jsp");

	}
	catch(Exception ex)
	{
		out.println(ex);
		System.out.println("Can't delete the session!!!");	
	}
%>