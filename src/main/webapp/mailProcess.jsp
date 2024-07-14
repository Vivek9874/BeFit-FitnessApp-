<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, javax.mail.*, javax.mail.internet.*" %>
<%@ page import="Fitness.MailUtil" %>

<!DOCTYPE html>
<html>
<head>
    <title>Form Submission Result</title>
</head>
<body>
	<div>
		<%
    		String result;

    		// Get all fields from the form
    		final String name = request.getParameter("Name");
    		final String senderEmail = request.getParameter("Email");
    		final String subject = request.getParameter("Subject");
    		final String messageContent = request.getParameter("Message");
    		final String messageContent1 = "From: " + name + "\n" + "Email: " + senderEmail + "\n" + "Message: "+messageContent;

    		// Recipient's email (where you want to receive the form submissions)
    		final String recipientEmail = "tonymone1234@gmail.com"; // Replace with your email address

    		// Set up the properties for the SMTP server
    		Properties props = new Properties();
    		props.put("mail.smtp.host", "smtp.gmail.com");
    		props.put("mail.smtp.port", "465");
    		props.put("mail.smtp.ssl.enable", "true");
    		props.put("mail.smtp.auth", "true");
    

    		try {
    		    // Create a Session object
    		    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
    		        protected PasswordAuthentication getPasswordAuthentication() {
    		            return new PasswordAuthentication("tonymone1234@gmail.com", "vwqcyyjwpvadjszf");
    		        }
    		    });
    		    
    		    if (mailSession == null) {
    		        throw new Exception("Failed to initialize mail session");
    		    }
    		    
    		    // Create a MimeMessage object
    		    MimeMessage message = new MimeMessage(mailSession);
		
    		    // Set the sender's email address
    		    message.setFrom(new InternetAddress(senderEmail));
    		   // InternetAddress me = new InternetAddress("philipthomas1968@gmail.com");
        	//	me.setPersonal("Thomas Philip");
        	//	message.setFrom(me);
    		    //message.setFrom("Ayush");
    		    // Set the "Reply-To" address to the sender's email address
				//message.setReplyTo(new InternetAddress[]{new InternetAddress(senderEmail)});
    		    
    		    // Set the recipient's email address
    		    message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));
		
    		    // Set the email subject
    		    message.setSubject(subject);
		
    		    // Set the email content
    		    message.setText(messageContent1);

    		    // Send the email
    		    Transport.send(message);

    		    result = "Mail sent successfully";
    		} catch (MessagingException mex) {
    		    mex.printStackTrace();
    		    result = "Error: unable to send the message";
    		} catch (Exception ex) {
    		    ex.printStackTrace();
    		    result = "Unexpected error occurred";
    		}

		%>
	    <h2>Form Submission Result</h2>
	    <p><%= result %></p>
	    <p><a href="/FitnessApp">Back to Home</a></p>
	</div>
</body>
</html>

