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
			
			
			String id = (String)session.getAttribute("id");
			int Id = Integer.parseInt(id);
			String Name = request.getParameter("name");
			String Address = request.getParameter("address");
			String Phone = request.getParameter("phone");
			String Email = request.getParameter("email");
			String Type = request.getParameter("type");
			
			
			Class.forName(dname);
			Connection conn = DriverManager.getConnection(url, uname, pass);
			
			PreparedStatement ps = conn.prepareStatement("update CUSTOMER set cus_name = ?, cus_add = ?, cus_phone = ?, cus_email= ?, cus_type = ?  where cus_id = ? ");
			
			ps.setString(1, Name);
			ps.setString(2, Address);
			ps.setString(3, Phone);
			ps.setString(4, Email);
			ps.setString(5, Type);
			ps.setInt(6, Id);
			
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
