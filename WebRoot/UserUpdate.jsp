<%@ page import = "java.sql.*" %>
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
			
			
			String id = (String)session.getAttribute("reg_no");
			int Id = Integer.parseInt(id);
			String Username = request.getParameter("usrname");
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
			int Phone = Integer.parseInt(request.getParameter("phone"));
			
			
			
			Class.forName(dname);
			Connection conn = DriverManager.getConnection(url, uname, pass);
			
			PreparedStatement ps = conn.prepareStatement("update USERS set username = ?, password = ?, email= ?, firstname = ?, lastname = ?, address = ?, city = ?, state = ?, country = ?, zip = ?, user_type = ?, phone = ? where reg_no = ? ");
			
			ps.setString(1, Username);
			ps.setString(2, Password);
			ps.setString(3, Email);
			ps.setString(4, Fname);
			ps.setString(5, Lname);
			ps.setString(6, Address);
			ps.setString(7, City);
			ps.setString(8, State);
			ps.setString(9, Country);
			ps.setInt(10, Zip);
			ps.setString(11, Type);
			ps.setInt(12, Phone);
			ps.setInt(13, Id);
			
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
