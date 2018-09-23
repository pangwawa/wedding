<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>会员注册</title>
    <meta name="keywords" content="婚礼汇,119婚庆网,办婚礼,重庆婚礼酒店,重庆婚庆,婚礼租车"/>
    <meta name="description"
          content="婚礼汇（原119婚庆网）是一家专业的婚礼服务平台，为消费者提供最具影响力的婚礼服务：婚礼公司、婚礼酒店、婚礼摄像、婚礼策划、婚礼跟妆、婚礼租车等婚礼行业信息，实用的婚礼攻略与经验交流尽在婚礼汇。"/>
    <link rel="Bookmark" type="image/x-icon" href="favicon.ico"/>
    <link rel="icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="apple-touch-icon" href="favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="images/style.css"/>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="images/hlh.js"></script>
</head>
<body>
<!-- —————————————————————— 顶部内容 —————————————————————— -->
<div id="public-toolbar">
    <div class="layout_center layout_clear">
        <div class="page-logo layout_fl">
            <a href="#">
                <img src="images/logo.jpg"></a>
        </div>
        <div class="page-tels layout_fr">
            <span class="tel-show">全国免费咨询热线</span>
            <span class="tel-pink">
        <strong>400-666-888</strong></span>
        </div>
    </div>
</div>
<!-- —————————————————————— 顶部结束 —————————————————————— -->
<div class="user-form" data-img-url="http://img.119hqw.com/img/WebsiteImg/JQK51845110Xc.jpg" style="background: url(images/JQK51845110Xc.jpg);">
    <div class="layout_center">
        <div class="user-form-wrap">
            <div class="user-form-wraps">
                <div class="user-form-item">
                    <strong class="user-form-title">会员注册</strong></div>
                <form data-form="userlogin" action="register" method="post">
                <p id="user_tel_msg"></p>                 
                    <div class="user-form-item">
                        <input class="user-input" name="user_tel" id="user_tel" type="text" max="15" maxlength="15" placeholder="手机号" onblur="changeTel()" ></div>
                    <div class="user-form-item">
                        <input class="user-input" name="password" type="password" max="15" maxlength="15" placeholder="密码"></div>
                    <div class="user-form-item">
                        <input class="user-input" name="user_realname" type="text" max="15" maxlength="15" placeholder="真实姓名"></div>
                    <div class="user-form-item">
                        <input class="user-input" name="user_city" type="text" max="15" maxlength="15" placeholder="住址"></div>
                    <span style="color:red;">${errorMess}</span>
                    <div class="user-form-item">
                        <input class="user-input user-input-adjust" name="vcode" type="text" max="4" placeholder="验证码"><img class="qrcode" src="DrawCode" id="prove" title="换一张" alt="加载中" onclick="change()" style="cursor:pointer;"></div>
                    
                    <script type="text/javascript">
                        	function change(){
                        		var img = document.getElementById("prove");
                        		img.src = "DrawCode?x="+Math.random();
                        	}
                    </script> 
                    <span style="color:red;">${codeMess}</span>
                    <div class="user-form-item">
                        <label>
                            <input class="user-check" name="aggree" type="checkbox" checked="false" value="yes">&nbsp;
                            <span class="cos_span">注册即表示同意
                <a href="javascript:;" class="keyword-blue-pale">《119婚庆网用户协议》</a></span>
                        </label>
                    </div>
                    <input type="hidden" name="url" value="<%=request.getHeader("Referer") %>">
                <div class="user-form-item">
                    <input class="user-form-button" type="submit" value="注&nbsp;&nbsp;册" id="user-login" style="font-weight: bold;width: 330px">
                    <div class="msg">
						<!--
						<%=request.getAttribute("msg") == null ? "" : request.getAttribute("msg") %>
						-->						
					</div>
                </div>
                </form>
                
                <div class="user-form-item us_text_right">
          <span class="cos_span">
            <!-- <a href="">忘记密码?</a> --></span>&nbsp;&nbsp;
                    <span class="cos_span_empty">
            <!-- <a href="">注册账号</a> --></span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- —————————————————————— JS功能 —————————————————————— -->
<script type="text/javascript">
	function changeCode(obj){
		obj.src = "vcode.do?id=" + Math.random();
	}
</script>
<!-- —————————————————————— 底部内容 —————————————————————— -->
<div class="page-footer">
    <div class="layout_center">
        <div class="footer-list">
            <dl class="footer-item">
                <h3>新手上路</h3>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>如何注册
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>如何登录
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>如何预订
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>购物流程
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>预订须知
                    </dd>
                </a>
            </dl>
            <dl class="footer-item">
                <h3>公司信息</h3>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>关于我们
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>用户协议
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>隐私声明
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>商家入驻协议
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>安全需知
                    </dd>
                </a>
            </dl>
            <dl class="footer-item">
                <h3>合作联系</h3>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>联系我们
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>招商加盟
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>商户平台
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>招聘信息
                    </dd>
                </a>
            </dl>
            <dl class="footer-item">
                <h3>帮助中心</h3>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>忘记密码
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>常见问题
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>在线客服
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>如何上传产品
                    </dd>
                </a>
                <a href="#" target="_blank">
                    <dd>
                        <b></b>如何成为商家
                    </dd>
                </a>
            </dl>
            <div class="footer-mobile">
                <img src="images/QRcode.jpg"/>
                <h2>官方微信</h2>
            </div>
        </div>
        <div class="footer-data0" oncontextmenu="return false;">
            <a href="javascript:;"><i class="footer-ad0" title="可信网站身份验证"></i></a>
            <a href="javascript:;"><i class="footer-ad1" title="重庆网警备案"></i></a>
            <a href="javascript:;"><i class="footer-ad2" title="重庆工商行政管理"></i></a>
            <a href="javascript:;"><i class="footer-ad3" title="安全联盟认证"></i></a>
        </div>
        <div class="footer-data1">
            友情链接：
            <a href="https://www.baidu.com/" target="\&quot;_blank\&quot;">百度</a>
            <em>|</em>
            <a href="https://www.taobao.com/" target="\&quot;_blank\&quot;">淘宝</a>
        </div>
        <div class="footer-data2">
            版权归朝蓬商贸公司所有 &nbsp;&nbsp;
            <a href="http://www.miitbeian.gov.cn" target="_blank">渝ICP备14001673号</a>
        </div>
    </div>
</div>
<script type="text/javascript">
function checkTel(){
	  $.post(checkTelIsExit,{user_tel:$("#user_tel_msg")},function(text){
		  if("false" == text){
				$("#user_tel_msg").text("该手机号可以使用").css("color","green");
			}else{
				$("#user_tel_msg").text("该手机号已经存在").css("color","red");
				}
		  })
}
	
</script>
</body>
</html>