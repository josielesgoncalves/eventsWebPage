package com.events.repository;

import com.events.model.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserJpaRepository extends JpaRepository<User, Long> {

  User findByEmail(String email);
}
