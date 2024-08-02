package com.example.tabelog.evant;
import java.util.UUID;

import org.springframework.context.event.EventListener;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.example.tabelog.entity.User;
import com.example.tabelog.service.VerificationTokenService;

@Component
public class PasswordResetEventListener {
	private final VerificationTokenService verificationTokenService;    
    private final JavaMailSender javaMailSender;
    
    public PasswordResetEventListener(VerificationTokenService verificationTokenService, JavaMailSender mailSender) {
        this.verificationTokenService = verificationTokenService;        
        this.javaMailSender = mailSender;
    }
    @EventListener
    public void onPasswordResetEvent(PasswordResetEvent passwordResetEvent) {
    	User user =passwordResetEvent.getUser();
    	String token = UUID.randomUUID().toString();
    	verificationTokenService.update(user, token);
    	
    
    	String recipientAddress = user.getEmail();
    	String subject = "パスワード再設定";
    	String confirmationUrl = passwordResetEvent.getRequestUrl() + "/password-reset?token=" + token;
    	String message = "以下のリンクをクリックしてパスワードを再設定してください。";
    	
    	SimpleMailMessage mailMessage = new SimpleMailMessage();
    	mailMessage.setTo(recipientAddress);
        mailMessage.setSubject(subject);
        mailMessage.setText(message + "\n" + confirmationUrl);
        javaMailSender.send(mailMessage);
    }


}
