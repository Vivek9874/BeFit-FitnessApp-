package Fitness;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

public class MailUtil {

    public static void sendEmail(String senderEmail, String recipientEmail, String subject, String messageContent) throws MessagingException {

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.port", "587");

        Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
//                String username = System.getenv("tonymone1234@gmail.com");
//                String password = System.getenv("vwqcyyjwpvadjszf");
                return new PasswordAuthentication("tonymone1234@gmail.com", "vwqcyyjwpvadjszf");
            }
        });

        // Create and send the email message
        MimeMessage message = createMimeMessage(mailSession, senderEmail, recipientEmail, subject, messageContent);
        Transport.send(message);
    }

    private static MimeMessage createMimeMessage(Session mailSession, String senderEmail, String recipientEmail, String subject, String messageContent) throws MessagingException {
        MimeMessage message = new MimeMessage(mailSession);

        // Set the sender's email address
        message.setFrom(new InternetAddress(senderEmail));

        // Set the recipient's email address
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));

        // Set the email subject
        message.setSubject(subject);

        // Set the email content (plain text)
        message.setContent(messageContent, "text/plain; charset=UTF-8");

        return message;
    }
}
