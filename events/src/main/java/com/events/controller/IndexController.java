package com.events.controller;

import com.events.model.User;
import com.events.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class IndexController {

  @Autowired
  private UserService userService;

  @GetMapping("/")
  public String loadPage(Model model)
  {
    User user = new User();
    model.addAttribute("user", user);

    return "index";
  }

  @PostMapping("/")
  public String login(@ModelAttribute("user") User user){

    String page = "index";
    if(user != null){
      User userFounded = userService.findUser(user);
      if(user.getEmail().equals(userFounded.getEmail())){
        if(user.getPassword().equals(userFounded.getPassword())){
          user.setFirstName(userFounded.getFirstName());
          user.setLastName(userFounded.getLastName());
          user.setConfirmPassword(userFounded.getPassword());
          page = "perfilUsuario";
        }
      }
    }
    return page;
  }
}
