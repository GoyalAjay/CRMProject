<%@ include file="Home.jsp"%>
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
		InputStream in = getServletContext().getResourceAsStream("Connect.properties");
	    Properties p = new Properties();
	    p.load(in);
	    
	    String dname = (String)p.get("Dname").toString();
	    String url = (String)p.get("URL").toString();
	    String uname = (String)p.get("Uname").toString();
	    String pass = (String)p.get("password").toString();
		
		//String stid=(String)session.getAttribute("stid");
		
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");
		String Details = request.getParameter("details");
		String Experience = request.getParameter("Experience");
		
		System.out.println(Experience);
		
		String Response = request.getParameter("Response");
		System.out.println(Response);
		
		String Support = request.getParameter("Support");
		System.out.println(Support);
		
		String Satisfaction = request.getParameter("Satisfaction");
		System.out.println(Satisfaction);
		
		String Services  = request.getParameter("Services");
		
		int max = 10000;
		int min = 100;
		int range = max;
		
		int random = (int)(Math.random()*range)+min;
		out.println(random);
		
		Class.forName(dname);
		Connection conn = DriverManager.getConnection(url, uname, pass);
		
		PreparedStatement ps=conn.prepareStatement("Insert into FEEDBACK values(?,?,?,?,?,?,?,?)");
			
		ps.setInt(1, random);
		ps.setInt(2,Id);
		ps.setString(3,Details);
		ps.setString(4,Experience);
		ps.setString(5,Response);
		ps.setString(6,Support);
		ps.setString(7,Satisfaction);
		ps.setString(8,Services);
		ps.executeUpdate();
		response.sendRedirect("Home.jsp");
	}
	catch(Exception ex)
	{
		response.sendRedirect("Home.jsp");
	}
	 %>

</body>
</html>