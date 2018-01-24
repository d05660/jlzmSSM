package org.cloud.ssm.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cloud.ssm.domain.Emp;
import org.cloud.ssm.service.IEmpService;
import org.cloud.ssm.utils.ExcelUtils;
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
        LOGGER.debug("salf login");
        return "index";
    }

    @GetMapping("/userList")
    public String getUsersPage(Model model) {
        // model.addAttribute("users", userService.getAllUsers());
        return "users";
    }
    
    /**
     * 导出emp
     * @param request
     * @param response
     * @throws IOException 
     */
    @GetMapping("/exportEmp")  
    public void exportBooks(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String excelFileName = "図書一覧";
        String[] titles = { "编号", "用户名", "密码" , "部门", "电话", "邮箱"};
        String[] columns = {"userid", "username", "password", "partment", "tel", "email" };
        List<Emp> list = empService.getAll();
        ExcelUtils.export(columns, titles, list, excelFileName, response);
    }

    /**
     * 页面查询
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
