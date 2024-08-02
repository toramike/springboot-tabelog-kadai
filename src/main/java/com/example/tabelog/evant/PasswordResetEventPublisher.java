package com.example.tabelog.evant;

import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Component;

import com.example.tabelog.entity.User;

@Component
public class PasswordResetEventPublisher {
	private final ApplicationEventPublisher applicationEventPublisher;

	public PasswordResetEventPublisher(ApplicationEventPublisher applicationEventPublisher) {
        this.applicationEventPublisher = applicationEventPublisher;                
    }

	public void publishSignupEvent(User user, String requestUrl) {
		applicationEventPublisher.publishEvent(new PasswordResetEvent(this, user, requestUrl));
	}

}
