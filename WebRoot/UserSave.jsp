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
				
				int Id = Integer.parseInt(request.getParameter("reg_no"));
				String UserName = request.getParameter("usrname");
				String Password = request.getParameter("password");
				String Email = request.getParameter("email");
				String Fname = request.getParameter("fname");
				String Lname = request.getParameter("lname");
				String Address = request.getParameter("address");
				String City = request.getParameter("city");
				String State = request.getParameter("state");
				String Country = request.getParameter("country");
				int Zip = Integer.parseInt(request.getParameter("zip"));
				String Type = request.getParameter("type");
				int Phoneno = Integer.parseInt(request.getParameter("phone"));
				Class.forName(dname);
				Connection conn = DriverManager.getConnection(url, uname, pass);
				
				PreparedStatement ps=conn.prepareStatement("Insert into USERS values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
				
				ps.setInt(1,Id);
				ps.setString(2,UserName);
				ps.setString(3,Password);
				ps.setString(4,Email);
				ps.setString(5,Fname);
				ps.setString(6,Lname);
				ps.setString(7,Address);
				ps.setString(8,City);
				ps.setString(9,State);
				ps.setString(10,Country);
				ps.setInt(11,Zip);
				ps.setString(12,Type);
				ps.setInt(13,Phoneno);
				ps.executeUpdate();
				
				response.sendRedirect("UserDetails.jsp");
			}
			catch(Exception ex)
			{
				out.println(ex);
			}
		%>
	</body>
</html>
