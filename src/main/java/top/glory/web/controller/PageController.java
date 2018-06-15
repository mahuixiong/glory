package top.glory.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 视图控制器,返回jsp视图给前端
 * 
 * @author StarZou
 * @since 2014年5月28日 下午4:00:49
 **/
@Controller
@RequestMapping("/page")
public class PageController {

    /**
     * 登录页
     */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /**
     * dashboard页
     */
    @RequestMapping("/IM")
    public String IM() {
        return "IM";
    }
    /*
     * 
     * 
     */
    @RequestMapping("access_iam")
    public String access_iam() {
        return "access_iam";
    }
/*
 * 
 */
    @RequestMapping("introduction2")
    public String introduction2() {
        return "introduction2";
    }
    /*
     * 
     */
    @RequestMapping("usermanagementindex")
    public String usermanagementindex() {
        return "user-management-index";
    }
    /*
     * 
     */
    
    @RequestMapping("customerList")
    public String customerList() {
        return "customerList";
    }
    /*
     * 
     */
    @RequestMapping("infomanagerList")
    public String infomanagerList() {
        return "infomanagerList";
    }
    /*
     * 
     */
    @RequestMapping("categorylist")
    public String categorylist() {
        return "categorylist";
    }
    /*
     * 
     */
    @RequestMapping("toxinlist")
    public String toxinlist() {
        return "toxinlist";
    }
    /*
     * 
     */
    @RequestMapping("introduction")
    public String introduction() {
        return "introduction";
    }
    /*
     * 
     */
    @RequestMapping("personchartView")
    public String personchartView() {
        return "person_chartView";
    }
    /*
     * 
     */
    @RequestMapping("personregionalDistribution1")
    public String personregionalDistribution1() {
        return "person_regionalDistribution1";
    }
    /*
     * 
     */
    
    @RequestMapping("personBrowsingHistory1")
    public String personBrowsingHistory1() {
        return "person_BrowsingHistory1";
    }
    /*
     * 
     */
    @RequestMapping("persondownloadRecord")
    public String persondownloadRecord() {
        return "person_downloadRecord";
    }
    /*
     * 
     */
    @RequestMapping("personupdatePassword")
    public String personupdatePassword() {
        return "person_updatePassword";
    }
    /*
     * 
     */
    @RequestMapping("contant")
    public String contant() {
        return "contant";
    }
    /*
     * 
     */
    @RequestMapping("accessiam")
    public String accessiam() {
        return "access_iam";
    }
 /*
  * 
  */
    @RequestMapping("accessPM")
    public String accessPM() {
        return "access_PM";
    }
    /*
     * 
     */
    @RequestMapping("addIM")
    public String addIM() {
        return "addIM";
    }
    /*
     * 
     */
    @RequestMapping("categoryadd")
    public String categoryadd() {
        return "categoryadd";
    }
    /*
     * 
     */
    @RequestMapping("categoryedit")
    public String categoryedit() {
        return "categoryedit";
    }
    /*
     * 
     */
    @RequestMapping("customerExamine")
    public String customerExamine() {
        return "customerExamine";
    }
    /*
     * 
     */
    @RequestMapping("customermanagementexamine")
    public String customermanagementexamine() {
        return "customer-management-examine";
    }
    /*
     * 
     */
    @RequestMapping("customermanagementindex")
    public String customermanagementindex() {
        return "customer-management-index";
    }
    /*
     * 
     */
    @RequestMapping("customermanagementmodify")
    public String customermanagementmodify() {
        return "customer-management-modify";
    }
    /*
     * 
     */
    @RequestMapping("editIM")
    public String editIM() {
        return "editIM";
    }
    /*
     * 
     */
    @RequestMapping("index")
    public String index() {
        return "index";
    }
    /*
     * 
     */
    @RequestMapping("informationmanagerModify")
    public String informationmanagerModify() {
        return "informationmanagerModify";
    }
    /*
     * 
     */
    @RequestMapping("personBrowsingHistory")
    public String personBrowsingHistory() {
        return "person_BrowsingHistory";
    }
    /*
     * 
     */
    @RequestMapping("personchartView1")
    public String personchartView1() {
        return "person_chartView1";
    }
    /*
     * 
     */
    @RequestMapping("personDataBrowsing")
    public String personDataBrowsing() {
        return "person_DataBrowsing";
    }
    /*
     * 
     */
    
    @RequestMapping("personfirst2")
    public String personfirst2() {
        return "person_first2";
    }
    /*
     * 
     */
    @RequestMapping("person")
    public String person() {
        return "person";
    }
    /*
     * 
     */
    @RequestMapping("seeperson")
    public String seeperson() {
        return "seeperson";
    }
    /*
     * 
     */
    @RequestMapping("speciesadd")
    public String speciesadd() {
        return "speciesadd";
    }
    /*
     * 
     */
    @RequestMapping("speciesedit")
    public String speciesedit() {
        return "speciesedit";
    }
    /*
     * 
     */
    @RequestMapping("superadmin")
    public String superadmin() {
        return "superadmin";
    }
    /**
     * 
     */
    @RequestMapping("toxinadd")
    public String toxinadd() {
        return "toxinadd";
    }
    /**
     * 
     */
    @RequestMapping("usermanagementadd")
    public String usermanagementadd() {
        return "user-management-add";
    }
    /**
     * 
     */
    @RequestMapping("user-management-add1")
    public String usermanagementadd1() {
        return "user-management-add1";
    }
    /**
     * 
     */
    @RequestMapping("usermanagementmodify")
    public String usermanagementmodify() {
        return "user-management-modify";
    }
    /*
     * 
     */
    @RequestMapping("/404")
    public String error404() {
        return "404";
    }

    /**
     * 401页
     */
    @RequestMapping("/401")
    public String error401() {
        return "401";
    }

    /**
     * 500页
     */
    @RequestMapping("/500")
    public String error500() {
        return "500";
    }
    
}