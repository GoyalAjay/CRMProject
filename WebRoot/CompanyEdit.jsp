
<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" href="css/Edit.css">
	<link rel="stylesheet" href="css/EditPage.css">
</head>
<body>
	<div class="form-style-10">
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
		
			int id=Integer.parseInt(request.getParameter("id"));
			Connection conn = DriverManager.getConnection(url, uname, pass);
			PreparedStatement ps = conn.prepareStatement("select * from COMPANY where com_id = "+ id);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				session.setAttribute("c_id",String.valueOf(rs.getInt(1)));
		%>	
				<form name="f2" action="CompanyUpdate.jsp">
    			<div class="section"><span>1</span>Name</div>
    			<div class="inner-wrap">
        			<label>Full Name <input type="text" name="c_name" value = "<%= rs.getString(2) %>"/></label>
        			
    			</div>

    			<div class="section"><span>2</span>Address & Phone</div>
    			<div class="inner-wrap">
    				<label>Address <input type="text" name="c_address" value = "<%= rs.getString(3) %>"></input></label>
        			
        			<label>Phone Number <input type="text" name="c_phone" value = "<%= rs.getString(4) %>"/></label>
    			</div>
    			
    			<div class="button-section">
     				<input type="submit" value="Update" />

    			</div>
			</form>		
		</div>	
			<%
			}
		}
		catch(Exception ex)
		{
			out.println(ex);
		}
	%>
</body>
</html>
