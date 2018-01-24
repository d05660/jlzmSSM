package org.cloud.ssm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cloud.ssm.common.Result;
import org.cloud.ssm.domain.Emp;
import org.cloud.ssm.service.IEmpService;
import org.cloud.ssm.utils.ExcelUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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

    @GetMapping("/empList")
    public String getEmpPage(Model model) {
        return "emps";
    }
    
    @GetMapping("/partmentList")
    public String getPartmentPage(Model model) {
        return "partment";
    }
    
    @GetMapping("/usersList")
    public String getUsersPage(Model model) {
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
     * 导入
     * @param request
     * @param response
     * @param session
     * @return
     * @throws Exception
     */
    @PostMapping("/importEmp")
    @ResponseBody
    public Result importCalendarFromExcel(HttpServletRequest request, HttpServletResponse response, HttpSession session)
            throws Exception {
        Result result = new Result();
        result.setSuccess(false);
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        MultipartFile file = multipartRequest.getFile("uploadExcel");
        String[] titleColumn = {"userid", "username", "password", "partment", "tel", "email" };
        List<Emp> list = ExcelUtils.getObjectListFromExcel(file, 1, titleColumn, Emp.class);
        long count = empService.saveBatch(list);
        if (count > 0) {
            result.setSuccess(true);
        }
        return result;
    }
}
