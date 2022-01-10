<%@ include file = "Header.jsp" %>
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
		String Service = request.getParameter("service");
		String Details = request.getParameter("details");
		int max = 10000;
		int min = 100;
		int range = max;
		
		int random = (int)(Math.random()*range)+min;
		out.println(random);
		
		String date = new java.util.Date().toLocaleString();
		String comp_date = date.toString();
		
		Class.forName(dname);
		Connection conn = DriverManager.getConnection(url, uname, pass);
		
		PreparedStatement ps=conn.prepareStatement("Insert into SERVICE_DETAILS values(?,?,?,?,?)");
			
		ps.setInt(1, random);
		ps.setString(2,Service);
		ps.setString(3,Details);
		ps.setInt(4,Id);
		ps.setString(5, comp_date);
			
		ps.executeUpdate();
	%>
		<div class="container">
			<div class="alert alert-success">
	    		<strong>Success!</strong> Your complaint has been saved.
	  		</div>
	  	</div>
	<%
		response.sendRedirect("ServiceDetails.jsp");
	}
	catch(Exception ex)
	{
	%>
		<div class="container">
			<div class="alert alert-danger">
	    		<strong>Problem!</strong> Your complaint hasn't been stored. Please fill the form properly and try again.
	  		</div>
		</div>
	<%
		response.sendRedirect("ServiceDetails.jsp");
	}
%>
</body>
</html>