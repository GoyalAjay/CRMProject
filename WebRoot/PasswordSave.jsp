
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
		
		//String stid=(String)session.getAttribute("stid");
		
		String id = (String)session.getAttribute("reg_no");
		int Id = Integer.parseInt(id);
		
		String Password = request.getParameter("password");
		
		String confPass = request.getParameter("conf_pass");
		
		Class.forName(dname);
		Connection conn = DriverManager.getConnection(url, uname, pass);
			
		if(Password.equals(confPass))
		{
				
			PreparedStatement ps=conn.prepareStatement("update USERS set password=? where reg_no = ?");
				
			ps.setString(1, Password);
			ps.setInt(2, Id);	
			ps.executeUpdate();
				
			response.sendRedirect("Home.jsp");
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