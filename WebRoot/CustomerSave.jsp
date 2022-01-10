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
				InputStream in = getServletContext().getResourceAsStream("Connect.properties");
			    Properties p = new Properties();
			    p.load(in);
			    
			    String dname = (String)p.get("Dname").toString();
			    String url = (String)p.get("URL").toString();
			    String uname = (String)p.get("Uname").toString();
			    String pass = (String)p.get("password").toString();
				
				//String stid=(String)session.getAttribute("stid");
				
				int Id = Integer.parseInt(request.getParameter("id"));
				String Name = request.getParameter("name");
				String Address = request.getParameter("address");
				String Phone = request.getParameter("phone");
				String Email = request.getParameter("email");
				String Type = request.getParameter("type");
				
				Class.forName(dname);
				Connection conn = DriverManager.getConnection(url, uname, pass);
				
				PreparedStatement ps=conn.prepareStatement("Insert into CUSTOMER values(?,?,?,?,?,?)");
				
				ps.setInt(1,Id);
				ps.setString(2,Name);
				ps.setString(3,Address);
				ps.setString(4,Phone);
				ps.setString(5,Email);
				ps.setString(6,Type);
				
				ps.executeUpdate();
				
				response.sendRedirect("CustomerDetails.jsp");
			}
			catch(Exception ex)
			{
				out.println(ex);
			}
		%>
	</body>
</html>
