package mybabthis.service;

import org.springframework.mail.MailSender;

public interface MailService {

	public void setMailSender(MailSender mailSender) ;
 
	 void sendMail(String from, String to, String subject, String msg);
}
