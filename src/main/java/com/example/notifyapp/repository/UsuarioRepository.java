package com.example.notifyapp.repository;

import com.example.notifyapp.domain.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, UUID> {

    Usuario findByUuid(UUID uuid);

    Usuario findByEmail(String email);
}
