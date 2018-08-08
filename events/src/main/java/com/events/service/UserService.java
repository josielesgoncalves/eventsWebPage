package com.events.service;

import com.events.model.User;
import com.events.repository.UserJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service()
public class UserService {

  @Autowired
  private UserJpaRepository userJpaRepository;

  @Transactional
  public User createUser(User user){
    return userJpaRepository.saveAndFlush(user);
  }

  @Transactional
  public User findUser(User user){
    return userJpaRepository.findByEmail(user.getEmail());
  }


}
