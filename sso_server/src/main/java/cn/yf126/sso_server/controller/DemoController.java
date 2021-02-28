package cn.yf126.sso_server.controller;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @GetMapping("aaa")
    public String aaa(){
        return "123";
    }

    @PostMapping("bbb")
    public String bbb(@AuthenticationPrincipal UserDetails user){
        return user.getAuthorities().stream().findFirst().orElseThrow().getAuthority();
    }
}
