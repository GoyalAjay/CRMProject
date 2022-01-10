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
			
			
			String id = (String)session.getAttribute("c_id");
			int Id = Integer.parseInt(id);
			String Name = request.getParameter("c_name");
			String Address = request.getParameter("c_address");
			String Phone = request.getParameter("c_phone");
			
			
			Class.forName(dname);
			Connection conn = DriverManager.getConnection(url, uname, pass);
			
			PreparedStatement ps = conn.prepareStatement("update COMPANY set com_name = ?, com_address = ?, com_phone = ?  where com_id = ? ");
			
			ps.setString(1, Name);
			ps.setString(2, Address);
			ps.setString(3, Phone);
			ps.setInt(4, Id);
			
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
