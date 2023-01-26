package com.project.chat.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;


@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {
    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        registry.addEndpoint("/stomp/chat") // 연결될 엔드 포인트
                .setAllowedOrigins("http://localhost:8070")
                .withSockJS(); // SocketJS 를 연결한다는 설정
    }
    @Override
    public void configureMessageBroker(MessageBrokerRegistry registry) {
         // 메세지 받을때
        registry.enableSimpleBroker("/sub");

        // 메세지 보낼때
        registry.setApplicationDestinationPrefixes("/pub");
    }

}
