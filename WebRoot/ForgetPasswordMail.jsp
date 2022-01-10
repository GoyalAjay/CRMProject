<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.util.Properties" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>

<!DOCTYPE HTML>
<html>
<head></head>
<body>
	<%
		try
		{
			String usrname = request.getParameter("user");
			
			
			InputStream in = getServletContext().getResourceAsStream("Connect.properties");
			Properties p = new Properties();
			p.load(in);
			    
			String dname = (String)p.get("Dname").toString();
			String url = (String)p.get("URL").toString();
			String uname = (String)p.get("Uname").toString();
			String pass = (String)p.get("password").toString();
							
				
			Class.forName(dname);
			Connection conn = DriverManager.getConnection(url, uname, pass);
				
			PreparedStatement ps = conn.prepareStatement("Select * from USERS where username ='"+ usrname + "'");
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				session.setAttribute("user", rs.getString(2));
				String to= rs.getString(4);
				String sub="Forget Password";
				String msg="Dear user, Click on this Link to reset your password. http://localhost:8081/CRM_Project/ResetPassword.jsp?username="+rs.getString(2)+".";
	      		//Get properties object    
				Properties props = new Properties();    
	        	props.put("mail.smtp.host", "smtp.gmail.com");    
	        	props.put("mail.smtp.socketFactory.port", "465");    
	        	props.put("mail.smtp.socketFactory.class",    
	                    "javax.net.ssl.SSLSocketFactory");    
	        	props.put("mail.smtp.auth", "true");    
	        	props.put("mail.smtp.port", "465");    
	      
	      		//get Session   
	        	Session sessions = Session.getDefaultInstance(props, new javax.mail.Authenticator() 
	        	{    
	        		protected PasswordAuthentication getPasswordAuthentication()
	        		{    
	           			return new PasswordAuthentication("jeffsilva24101965@gmail.com","mdbi24oct65");  
	         		}    
	          	});     
	      		//compose message    
	       		try 
	       		{    
	        		MimeMessage message = new MimeMessage(sessions);    
	            	message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
	            	message.setSubject(sub);    
	            	message.setText(msg);
	           
	           		//send message  
	           		Transport.send(message);    
	           		System.out.println("Password sent successfully");    
	           		response.sendRedirect("Login_Signup.jsp");
				}
	        	catch (MessagingException e)
	        	{
	        		System.out.println("Password not sent");
	        		throw new RuntimeException(e);
	       		}
			}
		}
		catch (Exception ex)
	    {
	    	out.println(ex);
	   	} 	
	%>
</body>
</html>