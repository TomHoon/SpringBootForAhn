package com.example.demo.board.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.tags.Param;

@RestController
public class HomeController {
	
	@PostMapping("/test")
    public Param post(@RequestBody Param param) {
        Param param1 = new Param();
        param1.setName(param.getName());
        return param1;
    }

}
