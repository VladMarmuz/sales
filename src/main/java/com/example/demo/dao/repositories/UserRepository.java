package com.example.demo.dao.repositories;

import com.example.demo.dao.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
    User findByEmail(String email);

}
