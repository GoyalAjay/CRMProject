<%@ page import = "java.sql.*"%>
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

		String username=request.getParameter("user");
		String passwd=request.getParameter("pass");
	
		Class.forName(dname);
		Connection conn = DriverManager.getConnection(url, uname, pass);
		PreparedStatement ps = conn.prepareStatement("select * from USERS where username = '"+ username+"' and password = '" + passwd+"'");
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next())
		{
			session.setAttribute("reg_no",String.valueOf(rs.getInt(1)));	//creating a session of registration number
			session.setAttribute("usrname", rs.getString(2));				//creating a session of username
			session.setAttribute("email", rs.getString(4));					//creating a session of email

			//this IF statement will login in the admin panel. Not the best way, I know. There are better ways to do it. 
			if(username.equals("ADMIN_USERNAME") && passwd.equals("ADMIN_PASSWORD"))
			{
				response.sendRedirect("Admin_Home.jsp");
			}
			else
			{
				response.sendRedirect("ClientProfile.jsp");
			}
		}
		else
		{
			response.sendRedirect("LoginInvalid.jsp");
		}
	}
	catch(Exception ex)
	{
		out.println(ex);
	}
	 %>
