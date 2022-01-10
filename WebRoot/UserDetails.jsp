<%@ include file="Header.jsp" %>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/bootstrap(1).min.css">
	<link rel="stylesheet" href="js/jquery.min(2).js">
	<link rel="stylesheet" href="js/bootstrap.min(1).js">
	<style type="text/css">
	.container
	{
		margin-left:7%;
		margin-top:3%;
	}
	
	table
	{
		margin-top:3%;
	}
	
	#theModal, .modal-dialog
	{
		padding:0;
	}
	
	.modal-content
	{
		padding:100px;
		margin-left: 10%;
	}
	
	</style>
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
	    
			Class.forName(dname);
			Connection conn = DriverManager.getConnection(url, uname, pass);
	
			PreparedStatement ps = conn.prepareStatement("select * from USERS");
		
			ResultSet rs = ps.executeQuery();
			
				
	%>			
				
				<div class = container>
					<br></br>	
					<div class=Users>
						<h3 style="font-family: LuloCleanOne-bold">Users</h3>
					</div>
					<div class="table-responsive">
					<table class = "table">
							<thead>
								<tr>
									<th>REG. NO.</th><th>USERNAME</th><th>PASSWORD</th><th>EMAIL</th><th><a style="float:right;" data-toggle="tooltip" title="Add New" data-placement="top" href = "UserAdd.jsp"><img alt="Edit" src="img/new.png" width="30px" height="30px"></a></th>
								</tr>
							</thead>
							

						<%
							while(rs.next())
							{
						 %>
						 	<tbody>
					 			<tr>
								 	<td id="myUL"><%= rs.getInt(1) %></td>
								 	<td id="myUL"><a href="UserProfile.jsp?id=<%= rs.getInt(1) %>" data-toggle="modal" data-target="#theModal"><%= rs.getString(2) %></a></td>
								 	<td id="myUL"><%= rs.getString(3) %></td>
								 	<td id="myUL"><%= rs.getString(4) %></td>
								 	<td>
								 		
								 		<a data-toggle="tooltip" data-placement="top" title="Edit" href = "UserEdit.jsp?id=<%= rs.getInt(1) %>"><img alt="Edit" src="img/edit.png" width="30px" height="30px" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
								 		<a data-toggle="tooltip" data-placement="top" title="Delete" href = "UserDelete.jsp?id=<%= rs.getInt(1) %>"><img alt="Delete" src="img/remove.png" width="30px" height="30px" /></a>
								 	</td>
								</tr>
							</tbody>
				 	<%
		 				}
		 	}
		 	catch(Exception ex)
		 	{
		 		out.println(ex);
		 	}
		%>
				</table>
			</div>
			<div id="theModal" class="modal fade text-center">
    			<div class="modal-dialog">
      				<div class="modal-content">
      				</div>
    			</div>
  			</div>		
		
	</div>
	<script>
		$(document).ready(function()
		{
  			$('[data-toggle="tooltip"]').tooltip();   
		});
	</script>
</body>
</html>