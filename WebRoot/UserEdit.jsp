<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" href="UserEdit.css"/>
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
		
			int id=Integer.parseInt(request.getParameter("id"));
			Connection conn = DriverManager.getConnection(url, uname, pass);
			PreparedStatement ps = conn.prepareStatement("select * from USERS where reg_no = "+ id);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				session.setAttribute("reg_no",String.valueOf(rs.getInt(1)));
		%>		<div class="Editform">
					<form name = "edit" action = "UserUpdate.jsp">
						<table id="table1"; cellspacing="5px" cellpadding="5%"; align="center">
							<tr>
								<td align="right" class="style1"> Reg. No.: </td>
								<td><input type=text name = "reg_no" value = "<%= rs.getString(1) %>" disabled/></td>
							</tr>
							<tr>
								<td>Username: </td>
								<td><input type=text name = "usrname" value = "<%= rs.getString(2) %>"/></td>
							</tr>
							<tr>
								<td>Password: </td>
								<td><input type=text name = "password" value = "<%= rs.getString(3) %>"/></td>
							</tr>
							<tr>
								<td>Email: </td>
								<td><input type="email"  name="email" value = "<%= rs.getString(4) %>"/></td>
							</tr>
							<tr>
								<td>First Name: </td>
								<td><input type="text"  name="fname" value = "<%= rs.getString(5) %>"/></td>
							</tr>
							<tr>
								<td>Last Name: </td>
								<td><input type="text"  name="lname" value = "<%= rs.getString(6) %>"/></td>
							</tr>
							<tr>
								<td>Address: </td>
								<td><input type="text"  name="address" value = "<%= rs.getString(7) %>"/></td>
							</tr>
							<tr>
								<td>City: </td>
								<td><input type="text"  name="city" value = "<%= rs.getString(8) %>"/></td>
							</tr>
							<tr>
								<td>State</td>
								<td><input type="text"  name="state" value = "<%= rs.getString(9) %>"/></td>
							</tr>
							<tr>
								<td>Country: </td>
								<td><input type="text"  name="country" value = "<%= rs.getString(10) %>"/></td>
							</tr>
							<tr>
								<td>Zip: </td>
								<td><input type="text"  name="zip" value = "<%= rs.getString(11) %>"/></td>
							</tr>
							<tr>
								<td>Type: </td>
								<td><input type="text"  name="type" value = "<%= rs.getString(12) %>" disabled/></td>
							</tr>
							<tr>
								<td>Phone: </td>
								<td><input type="text"  name="phone" value = "<%= rs.getInt(13) %>"/></td>
							</tr>
							<tr>
								<td><input type = "submit" value = "Update" /></td>
							</tr>
							
						</table>
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
