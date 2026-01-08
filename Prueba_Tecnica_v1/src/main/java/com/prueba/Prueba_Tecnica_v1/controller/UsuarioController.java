package com.prueba.Prueba_Tecnica_v1.controller;

import com.prueba.Prueba_Tecnica_v1.exception.ErrorMessages;
import com.prueba.Prueba_Tecnica_v1.model.Usuario;
import com.prueba.Prueba_Tecnica_v1.repository.UsuarioRepository;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDateTime;
import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/users")
public class UsuarioController {

    private final UsuarioRepository repo;
    private final PasswordEncoder passwordEncoder;

    public UsuarioController(UsuarioRepository repo,
                             PasswordEncoder passwordEncoder) {
        this.repo = repo;
        this.passwordEncoder = passwordEncoder;
    }

    @PostMapping
    public Usuario crear(@RequestBody Usuario u) {
        if (repo.existsByEmail(u.getEmail())) {
            throw new ResponseStatusException(
                    HttpStatus.CONFLICT,
                    ErrorMessages.EMAIL_ALREADY_EXISTS
            );
        }
        u.setPassword(passwordEncoder.encode(u.getPassword()));
        if (u.getEstado() == null) {
            u.setEstado(true);
        }
        u.setFechaCreacion(LocalDateTime.now());
        return repo.save(u);
    }

    @GetMapping
    public List<Usuario> listar() {
        return repo.findAll();
    }

    @GetMapping("/{id}")
    public Usuario obtener(@PathVariable Long id) {
        return repo.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, ErrorMessages.USER_NOT_FOUND));
    }

    @PutMapping("/{id}")
    public Usuario editar(@PathVariable Long id, @RequestBody Usuario u) {
        Usuario db = repo.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, ErrorMessages.USER_NOT_FOUND));
        db.setEmail(u.getEmail());
        db.setEstado(u.getEstado());
        return repo.save(db);
    }

    @DeleteMapping("/{id}")
    public void eliminar(@PathVariable Long id) {
        if (!repo.existsById(id)) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, ErrorMessages.USER_NOT_FOUND);
        }
        repo.deleteById(id);
    }
}