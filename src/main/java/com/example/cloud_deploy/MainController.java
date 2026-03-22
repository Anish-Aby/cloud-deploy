package com.example.cloud_deploy;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class MainController {
    @GetMapping("/hello")
    public String sayHello() {
        return "Hello from Docker!";
    }

    @GetMapping("/health")
    public String getHealth() {
        return "OK";
    }

    @GetMapping("/version")
    public String getVersion() {
        return "0.1";
    }
}
