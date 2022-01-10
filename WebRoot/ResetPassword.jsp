<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <link href="css/font-awesome.min.css" rel="stylesheet" media="all">
    
    <link href="css/css.css" rel="stylesheet">
    
    <link href="css/main.css" rel="stylesheet" media="all">
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
			
			String usrname = (String)session.getAttribute("user");			

			Connection conn = DriverManager.getConnection(url, uname, pass);
			PreparedStatement ps = conn.prepareStatement("select * from USERS where username = '"+ usrname +"'");
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				
	%>

				    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
				        <div class="wrapper wrapper--w790">
				            <div class="card card-5">
				                <div class="card-heading">
				                    <h2 class="title">CHANGE PASSWORD</h2>
				                </div>
				                <div class="card-body">
				                    <form method="POST" action="ResetPasswordSave.jsp">
				                        <div class="form-row m-b-55">
				                        	
				                            <div class="name">Password</div>
				                            <div class="value">
				                               	<div class="input-group">
				                                    <input  class="input--style-5" type="password" name="password"/><br>
				                                </div>
				                            </div>
				                        	
				                            <div class="name">Confirm Password</div>
				                            <div class="value">
				                                <div class="input-group">
				                                    <input style="margin-top: 15px;" class="input--style-5" type="password" name="conf_pass"/>
				                                </div>
				                            </div>
				                        	<br>
				                        </div>
				                        <div>
				                            <button style="margin-top: 20px;" class="btn btn--radius-2 btn--red" type="submit">Save</button><button style="margin-left:52%;" class="btn btn--radius-2 btn--red" type="button" onclick="history.go(-1)">Cancel</button>
				                        </div>
				                    </form>
				                </div>
				            </div>
				        </div>
				    </div>
   
    	<script src="jquery.min.js"></script>
    
    	<script src="global.js"></script>
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