<%@ include file = "Home.jsp" %>
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
		
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");
		String Problem = request.getParameter("problem");
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
		
		PreparedStatement ps=conn.prepareStatement("Insert into COMPLAIN (comp_id, comp_date, userid, comp_details, prob_head) values(?,?,?,?,?)");
			
		ps.setInt(1, random);
		ps.setString(2,date);
		ps.setInt(3,Id);
		ps.setString(4,Details);
		ps.setString(5,Problem);
			
		ps.executeUpdate();
	%>
		<div class="alert alert-success">
    		<strong>Success!</strong> Your complaint has been saved.
  		</div>
	<%
		response.sendRedirect("Home.jsp");
	}
	catch(Exception ex)
	{
	%>
		<div class="alert alert-danger">
    		<strong>Problem!</strong> Your complaint hasn't been stored. Please fill the form properly and try again.
  		</div>
		
	<%
		response.sendRedirect("Home.jsp");
	}
%>
</body>
</html>