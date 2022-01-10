<%@page import="java.sql.*" %>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

<!DOCTYPE HTML>
<html>
	<head>
	
	</head>
	
	
	<body>
		<%
			try
			{
				InputStream in = getServletContext().getResourceAsStream("Connect.properties");		//getting the values from Connect.properties file
			    Properties p = new Properties();
			    p.load(in);
			    
			    String dname = (String)p.get("Dname").toString();
			    String url = (String)p.get("URL").toString();
			    String uname = (String)p.get("Uname").toString();
			    String pass = (String)p.get("password").toString();
				
				//String stid=(String)session.getAttribute("stid");
				
				String Name = request.getParameter("c_name");
				String Address = request.getParameter("c_address");
				String Phone = request.getParameter("c_phone");
				
				int max = 10000;
				int min = 100;
				int range = max;
		
				int random = (int)(Math.random()*range)+min;
				
				Class.forName(dname);
				Connection conn = DriverManager.getConnection(url, uname, pass);
				
				
				
				PreparedStatement ps=conn.prepareStatement("Insert into COMPANY values(?,?,?,?)");
				
				ps.setInt(1,random);
				ps.setString(2,Name);
				ps.setString(3,Address);
				ps.setString(4,Phone);
				
				ps.executeUpdate();
				
				response.sendRedirect("CompanyDetails.jsp");
			}
			catch(Exception ex)
			{
				out.println(ex);
			}
		%>
	</body>
</html>
