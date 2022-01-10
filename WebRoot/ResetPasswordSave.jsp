<%@ page import="java.sql.*" %>
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
		
		//String stid=(String)session.getAttribute("stid");
		
		String usrname = (String)session.getAttribute("user");
		
		String Password = request.getParameter("password");
		
		String confPass = request.getParameter("conf_pass");
		
		Class.forName(dname);
		Connection conn = DriverManager.getConnection(url, uname, pass);
			
		if(Password.equals(confPass))
		{
				
			PreparedStatement ps=conn.prepareStatement("update USERS set password=? where username = ?");
				
			ps.setString(1, Password);
			ps.setString(2, usrname);	
			ps.executeUpdate();
				
			response.sendRedirect("Login_Signup.jsp");
		}
		else
		{
			out.println("Incorrect password!!!");
		}
	}
	catch(Exception ex)
	{
		out.println(ex);
	}
%>