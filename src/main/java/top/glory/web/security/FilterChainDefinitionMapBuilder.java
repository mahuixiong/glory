package top.glory.web.security;

import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/*
 *把applivationContext-shiro.xml的设置全都转到代码中
 * 用HashMap LinkedHashMap都可以
 * 注意事项：filterChainDefinitionMap，filterChainDefinitions谁写在后面按谁的执行 连个不是叠加 是各自的访问权限
 */
@Component("filterChainDefinitionMapBuilder")
public class FilterChainDefinitionMapBuilder {
    public LinkedHashMap<String,String> buildFilterChainDefinitionMap(){
        LinkedHashMap<String,String> linkedHashMap=new LinkedHashMap<>();
        linkedHashMap.put("/app/**","anon");
        linkedHashMap.put("/assets/** ","anon");
        linkedHashMap.put("/rest/user/login","anon");
        linkedHashMap.put("/rest/page/register","anon");
        linkedHashMap.put("/rest/user/register","anon");
        linkedHashMap.put("/rest/user/judge","anon");
        linkedHashMap.put("/rest/page/forgetpwd","anon");
        linkedHashMap.put("/rest/user/forgetpwd","anon");
        linkedHashMap.put("/rest/user/selectupdate","anon");
        linkedHashMap.put("/**","authc");
        return linkedHashMap;
    }
//    测试map,HashMap可不可以  是可以的
//    public Map<String,String> buildFilterChainDefinitionMap(){
//        Map<String,String> linkedHashMap=new HashMap<>();
//        linkedHashMap.put("/app/**","anon");
//        linkedHashMap.put("/assets/** ","anon");
//        linkedHashMap.put("/rest/user/login","anon");
//        linkedHashMap.put("/rest/page/register","anon");
//        linkedHashMap.put("/rest/user/register","anon");
//        linkedHashMap.put("/rest/user/judge","anon");
//        linkedHashMap.put("/rest/page/forgetpwd","anon");
//        linkedHashMap.put("/rest/user/forgetpwd","anon");
//        linkedHashMap.put("/rest/user/selectupdate","anon");
//        linkedHashMap.put("/**","authc");
//        return linkedHashMap;
//    }
}
