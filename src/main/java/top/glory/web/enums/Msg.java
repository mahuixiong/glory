package top.glory.web.enums;

import java.util.HashMap;

public class Msg {
	 //成功：200  失败：100
    private int code;

    //提示信息
    private String msg;

    //跳转的url
    private String url;

    //用户返回浏览器的数据
    private HashMap<String, Object> extend = new HashMap<String, Object>();

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public HashMap<String, Object> getExtend() {
        return extend;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setExtend(HashMap<String, Object> extend) {
        this.extend = extend;
    }
    
    public static Msg success(){
        Msg msg = new Msg();
        msg.setCode(200);
        msg.setMsg("成功");
        return msg;
    }
    
    public static Msg success(String a){
        Msg msg = new Msg();
        msg.setCode(200);
        msg.setMsg(a);
        return msg;
    }
    
    public static Msg updatefail(){
        Msg msg = new Msg();
    	msg.setCode(250);
        msg.setMsg("失败");
        return msg;
    }
    public static Msg fail(){
        Msg msg = new Msg();
    	msg.setCode(100);
        msg.setMsg("失败");
        return msg;
    }
    public static Msg update(String prompt){
        Msg msg = new Msg();
    	msg.setCode(667);
        msg.setMsg(prompt);
        return msg;
    }

    public static Msg custom(int code, String prompt, String... url){
        Msg msg = new Msg();
        msg.setCode(code);
        msg.setMsg(prompt);
        if (url!=null){
            msg.setUrl(url[0]);
        }
        return msg;
    }

    public Msg add(String key, Object value){
        this.getExtend().put(key, value);
        return this;
    }

    public Msg add(HashMap<String, Object> extend){
        this.setExtend(extend);
        return this;
    }
}
