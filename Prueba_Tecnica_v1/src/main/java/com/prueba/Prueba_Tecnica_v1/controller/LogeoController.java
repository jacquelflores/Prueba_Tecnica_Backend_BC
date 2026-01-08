package com.prueba.Prueba_Tecnica_v1.controller;

import com.prueba.Prueba_Tecnica_v1.dto.LoginRequest;
import com.prueba.Prueba_Tecnica_v1.dto.LoginResponse;
import com.prueba.Prueba_Tecnica_v1.exception.ErrorMessages;
import com.prueba.Prueba_Tecnica_v1.model.Usuario;
import com.prueba.Prueba_Tecnica_v1.repository.UsuarioRepository;
import com.prueba.Prueba_Tecnica_v1.service.JwtService;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/auth")
public class LogeoController {

    private final UsuarioRepository repo;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;

    public LogeoController(UsuarioRepository repo,
                           PasswordEncoder passwordEncoder,
                           JwtService jwtService) {
        this.repo = repo;
        this.passwordEncoder = passwordEncoder;
        this.jwtService = jwtService;
    }

    @PostMapping("/login")
    public LoginResponse login(@RequestBody LoginRequest request) {

        Usuario usuario = repo.findByUsername(request.getUsername())
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, ErrorMessages.USER_NOT_FOUND));

        if (!passwordEncoder.matches(request.getPassword(), usuario.getPassword())) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, ErrorMessages.INVALID_CREDENTIALS);
        }

        String token = jwtService.generateToken(usuario.getUsername());
        return new LoginResponse(token);
    }
}