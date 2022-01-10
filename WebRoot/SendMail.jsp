
<%@page import="java.util.Properties" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>



<%
       //String from="jeffsilva24101965@gmail.com";
       //String password="mdbi24oct65";
       String to="ajayrocks.goyal3@gmail.com";
       String sub="hello javatpoint";
       String msg="How r u?";
      //Get properties object    
          Properties props = new Properties();    
          props.put("mail.smtp.host", "smtp.gmail.com");    
          props.put("mail.smtp.socketFactory.port", "465");    
          props.put("mail.smtp.socketFactory.class",    
                    "javax.net.ssl.SSLSocketFactory");    
          props.put("mail.smtp.auth", "true");    
          props.put("mail.smtp.port", "465");    
          //get Session   
               Session sessions = Session.getDefaultInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication("jeffsilva24101965@gmail.com","mdbi24oct65");  
           }    
          });     
          //compose message    
          try {    
           MimeMessage message = new MimeMessage(sessions);    
           message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
           message.setSubject(sub);    
           message.setText(msg);    
           //send message  
           Transport.send(message);    
           out.println("message sent successfully");    
          } catch (MessagingException e) {throw new RuntimeException(e);}    
              

%>