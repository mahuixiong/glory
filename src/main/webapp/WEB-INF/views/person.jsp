<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    	<link rel="stylesheet" type="text/css" href="../../static/css/reset1.css"/>
		<link rel="stylesheet" type="text/css" href="../../static/css/calendar.css"/>
		<script src="../../static/js/jquery.js"></script>
		<script src="../../static/js/calendar.js"></script>
		<script src="../../static/js/addIM.js"></script>
    <style>
        *{
            font-family: "微软雅黑";
            font-size: 16px;
            color:#9b9b9b;
        }
        .biaodan .feikong{
            position: relative;
        }
        .biaodan .feikong>div{
            display: none;
        }
        .biaodan{
            width: 910px;
            height:850px;
            margin:0 auto
        }
        .biaodan>form>div{
            display: inline-block;
        }
        .biaodan div:nth-child(2){
            margin-bottom: 40px ;
        }
        .biaodan input{
            height: 31px;
            width: 250px;
            padding-left: 14px;
       
            border: 1px solid #ccc;
            color:#3c3c3c;
            
        }
        .biaodan tr>td:first-child{
            text-align: right;
            padding-right: 5px;
        }
        .biaodan>form>div>table>tbody>tr{
            margin-top: 5px;
        }
        .biaodan .sex1{
            line-height: 34px;
        }
        .biaodan .sex>input{
            width: 20px;
            height: 13px;
            margin-right: 10px ;
            margin-left: 30px ;
            vertical-align: -1px;
        }
        .biaodan .txdz{
            margin-left: 30px;
            margin-bottom: 1px;
        }
        .biaodan .txdz>input{
            width: 688px;
            height: 31px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-left:5px;
        }
        .biaodan>form>div:nth-child(1){
            margin-left: 12px;
        }
        .biaodan>form>div:nth-child(2){
            margin-left: 3px;
        }
        .biaodan>form>div:nth-child(4){
            margin-left: 29px;
        }
        .biaodan>form>div:nth-child(5){
            margin-left: 29px;
            margin-bottom: 40px ;
        }
        .biaodan>form>div:nth-child(6){
            margin-left: 10px;
        }
        .biaodan .pzh>input{
            width: 212px;
            margin-left: 6px;
        }
        .biaodan .pzh>input:nth-child(1){
            margin-left: 0;
        }
        .biaodan div:last-child>button{
            height: 34px;
            width: 98px;
            border: 1px ;
            color: white;
          
            margin-left: 280px;
            margin-top: 46px;
        }
        .biaodan div:last-child>button:nth-child(1){
          background-color:#4898ff;
        }
        .biaodan div:last-child>button:nth-child(2){
          background-color:#e95048;
          margin-left: 50px;
        }

        
        .biaodan select{
            height: 35px;
            width: 265px;
            border: 1px solid #ccc;
            color:#3c3c3c;
            padding-left: 14px;
        }
        .biaodan>form>div span{
            color: red;
        }
        .dd1{
        	top:36px !important;
        	left:2px !important;
        }
        .tou{
        	margin:0 auto;
        	width: 90%;
        	height: 35px;
        	line-height:35px;
        	background-color: #579FFD;
        	color: #fff;
        	padding-left:5%;
        }
    </style>
</head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-47" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/person.jsp" style="height: 310px; width: 1126px;">

<div class="biaodan" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-47" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/person.jsp">
    <form action="updatePersonalMsg" id="fm1">
        <div>
        
        	
            <table>
                <tbody><tr>
                    <td>姓名</td>
                    <td><input type="text" name="username" value="超级管理"></td>
                </tr>
                <tr>
                    <td>出生日期</td>
                    <td class="feikong">
						<input class="dd1" type="text" name="birthday" id="dt" value="2018-05-08" readonly="readonly" placeholder="选择日期">
						<i id="dd" style="top: 78px; left: 180px; width: 280px; height: 330px; z-index: 999; display: none;" class="calendar calendar-modal calendar-d"><div class="calendar-inner" style="width: 280px;"><div class="calendar-views"><div class="view view-date" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-date="" class="calendar-display">2018/<span class="m">4</span></a><div class="calendar-arrow"><span class="prev" title="上一月" data-calendar-arrow-date="">&lt;</span><span class="next" title="下一月" data-calendar-arrow-date="">&gt;</span></div></div><div class="calendar-ct" style="width: 280px; height: 280px;"><ol class="week"><li style="width:40px;height:40px;line-height:40px">日</li><li style="width:40px;height:40px;line-height:40px">一</li><li style="width:40px;height:40px;line-height:40px">二</li><li style="width:40px;height:40px;line-height:40px">三</li><li style="width:40px;height:40px;line-height:40px">四</li><li style="width:40px;height:40px;line-height:40px">五</li><li style="width:40px;height:40px;line-height:40px">六</li></ol><ul class="date-items"><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class=" now" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">9</li></ol></li></ul></div></div><div class="view view-month" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-month="" class="calendar-display">2018</a><div class="calendar-arrow"><span class="prev" title="上一年" data-calendar-arrow-month="">&lt;</span><span class="next" title="下一年" data-calendar-arrow-month="">&gt;</span></div></div><ol class="calendar-ct month-items" style="width: 280px; height: 280px;"><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">1月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">2月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">3月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="" class="now">4月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">5月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">6月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">7月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">8月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">9月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">10月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">11月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">12月</li></ol></div></div></div><div class="calendar-label"><p>HelloWorld</p><i></i></div></i><span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>证件号码</td>
                    <td class="feikong">
                        <input type="text" name="idcard" value="123123123213">
                        <div style="color: red; position: absolute;top:7px;left: 10px;">*内容不能为空*</div>
                    <span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>国别或地区</td>
                    <td class="feikong">
                        <input type="text" name="country" value="中国">
                        <div style="color: red; position: absolute;top:7px;left: 10px;">*内容不能为空*</div>
                   <span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>所在院系所</td>
                    <td><input type="text" name="depart" value="农作"></td>
                </tr>
                <tr>
                    <td>行政职务</td>
                    <td>
                        <select name="post">
                            <option value="1" selected="selected">院长</option>
                            <option value="2">副院长</option>
                            <option value="3">Opel</option>
                            <option value="4">Audi</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>城市</td>
                    <td><input type="text" name="city" value="太原"></td>
                </tr>
            </tbody></table>
        </div>
        <div>
            <table>
                <tbody><tr class="sex1">
                    <td>性别</td>
                    
                    
	                    <td class="sex">
	                        <input type="radio" value="0" name="sex">女
	                        <input type="radio" value="1" name="sex" checked="checked">男
	                    </td>
                    
                </tr>
                <tr>
                    <td>证件类型</td>
                    <td>
                        <select name="certificatetype">
                            <option value="1" selected="selected">身份证</option>
                            <option value="2">护照</option>
                            <option value="3">Opel</option>
                            <option value="4">Audi</option>
                        </select>
                   <span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>民族</td>
                    <td class="feikong">
                        <input type="text" name="nation" value="汉">
                        <div style="color: red; position: absolute;top:7px;left: 10px;">*内容不能为空*</div>
                    <span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>所在单位</td>
                    <td><input type="text" name="company" value="公司"> <span>*</span></td>
                </tr>
                <tr>
                    <td>职称</td>
                    <td>
                        <select name="jobtitle">
                            <option value="1" selected="selected">教授</option>
                            <option value="2">副教授</option>
                            <option value="3">Opel</option>
                            <option value="4">Audi</option>
                        </select>
                    <span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>省、自治区、直辖市</td>
                    <td><input type="text" name="province" value="山西啊啊"></td>
                </tr>
            </tbody></table>
        </div>
        <div class=" feikong txdz">
           通讯地址 
            
            <input type="text" name="address" value="迎泽区"> <span>*</span>
            <div style="color: red; position: absolute;top:7px;left: 90px;">*内容不能为空*</div>

        </div>
        <div>
            <table>
                <tbody><tr>
                    <td>邮政编码</td>
                    <td><input type="text" name="zipcode" value="102500"></td>
                </tr>
                <tr>
                    <td class="feikong">最高学位</td>
                    <td>
                        <select name="educational">
                            <option value="1" selected="selected">博士</option>
                            <option value="2">硕士</option>
                            <option value="3">Opel</option>
                            <option value="4">Audi</option>
                        </select>
                    <span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>授予年份</td>
                    <td class="feikong">
                        <input type="text" name="grantyear" value="2017">
                        <div style="color: red; position: absolute;top:7px;left: 10px;">*内容不能为空*</div>
                    <span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>院士</td>
                    <td><input type="text" name="academician" value="张三"></td>
                </tr>
                <tr>
                    <td>电子邮箱</td>
                    <td class="feikong">
                        <input type="text" name="email" value="6545@qq.com">
                        <div style="color: red; position: absolute;top:7px;left: 10px;">*内容不能为空*</div>
                   <span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>手机号码</td>
                    <td class="feikong">
                        <input type="text" name="phone" value="15735800000">
                        <div style="color: red; position: absolute;top:7px;left: 10px;">*内容不能为空*</div>
                   <span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>家庭电话</td>
                    <td><input type="text" name="homephone" value="1231231231"></td>
                </tr>
                <tr>
                    <td>个人网页</td>
                    <td><input type="text" name="personalweb" value="www.qweq.com"></td>
                </tr>
            </tbody></table>
        </div>
        <div>
            <table>
                <tbody><tr>
                    <td>毕业学校</td>
                    <td><input type="text" name="graduatedschool" value="清华大学"></td>
                </tr>
                <tr>
                    <td>授予国别及地区</td>
                    <td class="feikong">
                        <input type="text" name="grantarea" value="中国">
                        <div style="color: red; position: absolute;top:7px;left: 10px;">*内容不能为空*</div>
                    <span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>授予学校</td>
                    <td><input type="text" name="grantschool" value="北大"></td>
                </tr>
                <tr>
                    <td>导师名称</td>
                    <td><input type="text" name="tutor" value="李四"></td>
                </tr>
                <tr>
                    <td>备用电子邮箱</td>
                    <td><input type="text" name="spareemail" value="asdad@163.com"></td>
                </tr>
                <tr>
                    <td>办公电话</td>
                    <td class="feikong">
                        <input type="text" name="officephone" value="12312312312">
                        <div style="color: red; position: absolute;top:7px;left: 10px;">*内容不能为空*</div>
                    <span>*</span>
                    </td>
                </tr>
                <tr>
                    <td>传真</td>
                    <td><input type="text" name="fax" value="3212312312"></td>
                </tr>
            </tbody></table>
        </div>
        <div class="pzh">
            在项目批准号 <input type="text" name="approvalnumber1" value="123123"><input type="text" name="approvalnumber2" value="123123"><input type="text" name="approvalnumber3" value="123">
        </div>
        <div style="margin-bottom: 50px;">
            <button>保存</button>
            <button onclick="history.go(-1)">返回</button>
        </div>
    </form>
</div>



<script>
    $(function () {

        $('.feikong > input').blur(function () {
            var alc = $(this).val()
            if(alc == null || alc ==""){
                $(this).next().show()
            }else {
                false;
            }
        });
        $('.feikong > input').focus(function () {
            $(this).next('div').hide()
        })
    
    
    
    function sub(){
    	$('.feikong > input').blur(function () {
            var alc = $(this).val()
            if(alc == null || alc ==""){
                $(this).next().show()
            }else {
                false;
            }
        });
        $('.feikong > input').focus(function () {
            $(this).next('div').hide()
        })
    	$("#fm1").submit();
    }
    
    
    $('.dd1').click(function(){
    	$('#dd').addClass("dd1")
    })
    
    
    })
</script>

</html>