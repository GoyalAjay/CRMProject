
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
		
		int max = 10000;
		int min = 100;
		int range = max;
		
		int random = (int)(Math.random()*range)+min;
		
		//String stid=(String)session.getAttribute("stid");
		String userName = request.getParameter("usrname");
		String Password = request.getParameter("password");
		String confPass = request.getParameter("conf_pass");
		String Email = request.getParameter("email");
		String Type = request.getParameter("type");
		Class.forName(dname);
		Connection conn = DriverManager.getConnection(url, uname, pass);
		
		if(Password.equals(confPass))
		{
			PreparedStatement ps=conn.prepareStatement("Insert into USERS (reg_no, username, password, email, user_type) values(?,?,?,?,?)");
			session.setAttribute("reg_no",String.valueOf(random));
			session.setAttribute("usrname",userName);
			ps.setInt(1, random);
			ps.setString(2,userName);
			ps.setString(3,Password);
			ps.setString(4,Email);
			ps.setString(5,Type);
			ps.executeUpdate();
			
			response.sendRedirect("ClientProfile.jsp");
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