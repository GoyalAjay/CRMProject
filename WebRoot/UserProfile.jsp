<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>
<!DOCTYPE HTML>
<html>
	<head>
		<link rel="stylesheet" href="ProfileCard.css">
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
		%>	
		<div class="Image">
		<div class="card" style="width:100%;">
			<img src= "img/Userimage.png" alt="John" style="width:50%; height: 50%;"/>
			<table cellpadding="-5">
				<tr>
					<th colspan="2" style="background-color: #e8e9ef;"><h3 style="text-align:center;color: black;font-family: Algerian;" class="name"><%= rs.getString(5) %><%= rs.getString(6) %></h3></th>
				</tr>
				<tr>
					<th colspan="2"><h3 style="text-align: center; font-family: comic sans MS;"><%= rs.getString(12) %></h3></th>
				</tr>
				<tr>
					<td><p class="content"><b>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</b></p></td>
					<td><p style="text-align:justify;"><%= rs.getString(7) %>,&nbsp;<%= rs.getString(8) %>,&nbsp;<%= rs.getString(9) %>,&nbsp;<%= rs.getString(10) %></p></td>
				</tr>
				<tr>
					<td style="width: 10px;"><p class="content"><b>Zip&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b></p></td>
					<td><p><%= rs.getString(11) %></p></td>
				</tr>
				<tr>
					<td colspan="2" style="background-color: rgb(0, 242, 0);"><p class="phone">+91<%= rs.getString(13) %></p></td>
				</tr>
			</table>
  		</div>
		
		<%
		 		}
		 	}
		 	catch(Exception ex)
		 	{
		 		out.println(ex);
		 	}
		%>
		</div>
	</body>
</html>