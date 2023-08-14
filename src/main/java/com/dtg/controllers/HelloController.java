package com.dtg.controllers;

import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Produces;

@Controller("/test")
public class HelloController {
    
    @Get
    @Produces(MediaType.TEXT_PLAIN)
    public String helloControllerString(){
        return "Hello World!";
    }

}
