package com.events.controller;

import com.events.model.User;
import com.events.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

  @Autowired
  private UserService userService;

  @GetMapping("/cadastro")
  public String cadastro(Model model){
    User user = new User();

    model.addAttribute("user", user);

    return "cadastrarUsuario";
  }

  @PostMapping("/cadastro")
  public String salvarCadastro(@ModelAttribute ("user") User user){

    String page;
    if(user.getPassword().equals(user.getConfirmPassword())){
      userService.createUser(user);
       page = "perfilUsuario";
    }
    else{
      user.setPassword(null);
      user.setConfirmPassword(null);
      page = "cadastrarUsuario";
    }

    return page;
  }
}
