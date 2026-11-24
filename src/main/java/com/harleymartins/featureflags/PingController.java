package com.harleymartins.featureflags;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController  // diz que "esta classe responde requisições HTTP"
public class PingController {
    @GetMapping("/ping") // "quando chegar um GET em /ping, executa esse método
    public String ping(){
        return "pong";
    }
}
