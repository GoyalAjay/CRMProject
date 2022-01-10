
<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

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
		
			int id=Integer.parseInt(request.getParameter("id"));
			Class.forName(dname);
			Connection conn = DriverManager.getConnection(url, uname, pass);
			PreparedStatement ps = conn.prepareStatement("select * from SERVICE_DETAILS where service_id = "+ id);
			
			String name = new String();
			String email =new String();
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				session.setAttribute("id",String.valueOf(rs.getInt(1)));
				int Id= rs.getInt(4);
				
				PreparedStatement ps1 = conn.prepareStatement("select * from USERS where reg_no = "+ Id);
				ResultSet rs1 = ps.executeQuery();
				
				if(rs1.next())
				{
	
				
		%>	
				<form name = "edit" action = "CustomerUpdate.jsp">
					
					Name: <input name = "name" type=text value = "<%= rs1.getString(5) %>">
					Email: <input type="email"  name="email" value = "<%= rs1.getString(1)  %>"><br>
					
					<label for="sel1">Service Category:</label>
					<select name="service" class="form-control" id="sel1" required>
	        			<option value="">-----</option>
	        			<option value="Software Service">Software Service</option>
	        			<option value="Analysis Service">Analysis Service</option>
	        			<option value="Telesales Service">Telesales Service</option>
						<option value="Service4">Service 4</option>
      				</select>
					Specifications: <textarea name="details" value="<%= rs.getString(5) %>"></textarea><br>
					
					
					
					<input type = "submit" value = "Update" />
				</form>
			<%
				}
			}
		}
		catch(Exception ex)
		{
			out.println(ex);
		}
	%>
</body>
</html>
