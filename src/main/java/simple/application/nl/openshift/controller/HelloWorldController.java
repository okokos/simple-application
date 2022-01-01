package simple.application.nl.openshift.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;

@RestController
public class HelloWorldController {
    @RequestMapping("/")
    public String hello() {
        String host = "";
        try {
            host = InetAddress.getLocalHost().getHostName();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return "Hello javaTpoint" +"I am running on server "+host+" Version 1.0 \n";
    }
}