<%@page import="java.sql.*" %>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>
<!DOCTYPE HTML>
<html>
<head></head>
<body>
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
			int Id=Integer.parseInt(request.getParameter("id"));
			
			Class.forName(dname);
			Connection conn = DriverManager.getConnection(url, uname, pass);
			
			PreparedStatement ps=conn.prepareStatement("delete from SERVICE_DETAILS where service_id=?");
			ps.setInt(1,Id);
			
			ps.executeUpdate();
			
			response.sendRedirect("ServiceDetails.jsp");
		}
		catch(Exception ex)
		{
			out.println(ex);
		}
	%>
</body>
</html>