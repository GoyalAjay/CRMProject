<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE HTML>
<html>
<head></head>
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
		
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");
		String Subject = request.getParameter("subject");
		String Details = request.getParameter("details");
		
		int max = 10000;
		int min = 100;
		int range = max;
		
		int random = (int)(Math.random()*range)+min;
		out.println(random);
		
		Class.forName(dname);
		Connection conn = DriverManager.getConnection(url, uname, pass);	//connecting to database
		
		PreparedStatement ps=conn.prepareStatement("Insert into CONTACT values(?,?,?,?,?)");
			
		ps.setInt(1, random);
		ps.setString(2,Name);
		ps.setString(3,Email);
		ps.setString(4,Details);
		ps.setString(5,Subject);

		ps.executeUpdate();
		response.sendRedirect("Index.jsp");
	}
	catch(Exception ex)
	{
		response.sendRedirect("Index.jsp");
	}
	 %>

</body>
</html>