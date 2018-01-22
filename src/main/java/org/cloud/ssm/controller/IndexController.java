package org.cloud.ssm.controller;

import java.util.HashMap;
import java.util.Map;

import org.cloud.ssm.domain.Emp;
import org.cloud.ssm.service.IEmpService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    IEmpService empService;

    /**
     * 首页
     * 
     * @param model
     * @return
     */
    @GetMapping(value = { "/", "/index" })
    public String getIndexPage(Model model) {

        return "index";
    }

    @GetMapping("/userList")
    public String getUsersPage(Model model) {
        // model.addAttribute("users", userService.getAllUsers());
        return "users";
    }

    /**
     * 查询
     */
    @GetMapping("/emp")
    @ResponseBody
    public Map<String, Object> listArticle(@RequestParam String draw, @RequestParam int startIndex,
            @RequestParam int pageSize,
            @RequestParam(value = "orderColumn", required = false, defaultValue = "id") String orderColumn,
            @RequestParam(value = "orderDir", required = false, defaultValue = "desc") String orderDir) {
        Map<String, Object> info = new HashMap<>();
        info.put("pageData", empService.getAllByOrder(orderColumn, orderDir, startIndex, pageSize));
        info.put("total", empService.getCount(new Emp()));
        info.put("draw", draw);
        return info;
    }

}
