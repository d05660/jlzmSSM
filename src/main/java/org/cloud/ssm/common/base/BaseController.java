package org.cloud.ssm.common.base;

import org.apache.shiro.SecurityUtils;
import org.cloud.ssm.common.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @description：基础 controller
 * @author：zhixuan.wang 
 * @date：2015/10/1 14:51
 */
public abstract class BaseController {

    // 控制器本来就是单例，这样似乎更加合理
    protected Logger logger = LoggerFactory.getLogger(getClass());

    /**
     * 获取当前登录用户对象
     * @return {ShiroUser}
     */
    public String getShiroUser() {
        return (String) SecurityUtils.getSubject().getPrincipal();
    }
    
    /**
     * redirect跳转
     * @param url 目标url
     */
    protected String redirect(String url) {
        return new StringBuilder("redirect:").append(url).toString();
    }

    /**
     * ajax失败
     * @param msg 失败的消息
     * @return {Object}
     */
    public Object renderError(String msg) {
        Result result = new Result();
        result.setMsg(msg);
        return result;
    }
    
    /**
     * ajax成功
     * @return {Object}
     */
    public Object renderSuccess() {
        Result result = new Result();
        result.setSuccess(true);
        return result;
    }
    
    /**
     * ajax成功
     * @param msg 消息
     * @return {Object}
     */
    public Object renderSuccess(String msg) {
        Result result = new Result();
        result.setSuccess(true);
        result.setMsg(msg);
        return result;
    }

    /**
     * ajax成功
     * @param obj 成功时的对象
     * @return {Object}
     */
    public Object renderSuccess(Object obj) {
        Result result = new Result();
        result.setSuccess(true);
        result.setObj(obj);
        return result;
    }
}
