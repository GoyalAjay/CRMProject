
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
		
		String id = (String)session.getAttribute("reg_no");
		int Id = Integer.parseInt(id);
		
		//String stid=(String)session.getAttribute("stid");
		String userName = request.getParameter("usrname");
		String Email = request.getParameter("email");
		String Fname = request.getParameter("fname");
		String Lname = request.getParameter("lname");
		String Address = request.getParameter("address");
		String City = request.getParameter("city");
		String State = request.getParameter("state");
		String Country = request.getParameter("country");
		int Zip = Integer.parseInt(request.getParameter("zip"));
		int Phone = Integer.parseInt(request.getParameter("phone"));
		
		Class.forName(dname);
		Connection conn = DriverManager.getConnection(url, uname, pass);
	
			
			PreparedStatement ps=conn.prepareStatement("update USERS set username=?, email=?, firstname=?, lastname=?, address=?, city=?, state=?, country=?, zip=?, phone=? where reg_no = ?");
			
			
			ps.setString(1,userName);
			ps.setString(2, Email);
			ps.setString(3, Fname);
			ps.setString(4, Lname);
			ps.setString(5, Address);
			ps.setString(6, City);
			ps.setString(7, State);
			ps.setString(8, Country);
			ps.setInt(9, Zip);
			ps.setInt(10, Phone);
			ps.setInt(11, Id);
			
			ps.executeUpdate();
			
			System.out.println("saved successfully");	
			response.sendRedirect("Home.jsp");
	}
	catch(Exception ex)
	{
		System.out.println("Couldn't save");
		out.println(ex);
		
	}
%>