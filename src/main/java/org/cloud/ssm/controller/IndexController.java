package org.cloud.ssm.controller;

import org.cloud.ssm.common.Result;
import org.cloud.ssm.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {
    
    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    IUserService userService;

    /**
     * 首页
     * @param model
     * @return
     */
    @GetMapping(value = { "/", "/index" })
    public String getIndexPage(Model model) {
        
        return "index";
    }
    
    @GetMapping("/userList")
    public String getUsersPage(Model model) {
        //model.addAttribute("users", userService.getAllUsers());
        return "users";
    }
    
    @GetMapping(value = { "/home" })
    @ResponseBody
    public Result getHomePage(Model model) {
        Result rMessage = new Result();
        rMessage.setMsg("sdfsadf");
        return rMessage;
    }
    
}
