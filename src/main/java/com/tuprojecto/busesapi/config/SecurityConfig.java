package com.tuprojecto.busesapi.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        return http
            .csrf(csrf -> csrf.disable()) // Desactiva CSRF (para desarrollo)
            .authorizeHttpRequests(auth -> auth
                .requestMatchers("/bus/**").permitAll() // Permite acceso libre a tus endpoints de bus
                .anyRequest().authenticated()           // Requiere autenticación para lo demás
            )
            .httpBasic(Customizer.withDefaults())       // Autenticación básica
            .build();
    }
}
