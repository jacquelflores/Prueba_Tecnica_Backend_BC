package com.prueba.Prueba_Tecnica_v1.service;

import org.springframework.stereotype.Service;

@Service
public class JwtService {
    public String generateToken(String username) {
        return "TOKEN GENERADO : " + username;
    }
}
