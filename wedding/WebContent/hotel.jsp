<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>婚宴场地</title>
<link href="css/wedding-3.css" rel="stylesheet"/>
<link rel="icon" href="images/favicon.ico" />
<link href="lib/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="lib/jquery-3.3.1.min.js"></script>
<script src="lib/bootstrap/bootstrap.min.js"></script>
</head>

<body >

	<div id="public-navbar">
    	<div class="layout_center layout_clear" style="overflow:visible">
        	<div class="layout_fl">你好，欢迎来到 婚礼汇</div>
        	<ul class="layout_fr fl_li">
            	<li>
                	<div class="use-layout">
                    	<a>
                    		<span class="use-status">会员中心</span>
                        </a>
                        <div class="use-option" style="display:none">
                        	<a>会员登录</a>
                            <a>免费注册</a>
                        </div>
                        <i class="use-arrow page_icon"></i>
                    </div>
                </li>
                <li>
                	<span class="use-hr"></span>
                </li>
                <li>
                	<a>我的购物车</a>
                </li>
                <li>
                	<span class="use-hr"></span>
                </li>
                <li>
                	<div class="use-layout">
                    	<a>
                    		<span class="use-status">商户平台</span>
                        </a>
                       	<div class="use-option" style="display: none;">
                       		<a>商户登录</a>
                           	<a>免费入驻</a>
                       	</div>
                        <i class="use-arrow page_icon"></i>
                    </div>
                </li>
                <li>
                	<span class="use-hr"></span>
                </li>
                <li>
                	<a>联系我们</a>
                </li>
            </ul>
    	</div>
    </div>

    <div id="public-toolbar" class="hidden_active">
    	<div class="layout_center layout_clear">
        	<div class="page-logo layout_fl"><a><img src=images/logo.jpg></a></div>
            <div class="page-search layout_fl">
            	<div class="page-search-bar layout_clear">
                	<div class="page-search-text layout_fl">
                    	<input type="text" class="search-cover" placeholder="搜索产品或店铺">
                    </div>
                    <div class="page-search-btn layout_fl">
                    	<input type="button" value="搜索" class="search-button">
                    </div>
                </div>
                <ul class="page-search-key layout_clear fl_li" >
                    <li class="search-key-ous">大家都在搜：</li>
                    <li><a>酒店</a></li>
                    <li><a>婚纱</a></li>
                    <li><a>婚庆用车</a></li>
                    <li><a>度假</a></li>
                </ul>
            </div>
            <div class="page-release layout_fl">
            	<a>立即发布需求</a>
            </div>
            <div class="page-tels layout_fr">
            	<span class="tel-show">全国免费咨询热线</span>
                <span class="tel-pink"><strong>023-6766-4541</strong></span>
            </div>
        </div>
    </div>
    <div id="page-middle-bar">
    	<div class="layout_center layout_clear">
        	<div class="button layout_fl">全部分类</div>
            <ul class="layout_clear layout_fl fl_li">
            	<li><a>首页</a></li>
                <li><a href="field.jsp">婚宴场地</a></li>
                <li><a>婚纱摄影</a></li>
                <li><a>婚庆用车</a></li>
                <li><a>婚庆公司</a></li>
                <li><a>婚具租赁</a></li>
                <li><a>定制人员</a></li>
                <li><a>婚品商城</a></li>
                <li><a>蜜月度假</a></li>
                <li><a>视频秀</a></li>
            </ul>
        </div>
    </div>
     <div id="page-god">
    	<div class="layout_center">
        	<div class="path">
            	<span><a href="wedding.html">婚礼汇</a></span>
                <em>></em>
                <a href="field.html" class="page_cur">婚宴场地</a>
            </div>
            <div class="god-select">
            	<div class="god-select-ctrl layout_clear">
                	<div class="god-unctrl-l">
                    	<a href="" class="curl">综合</a>
                        <a href="">最新<span class="in-unctrl-up page_icon"></span></a>
                    </div>
                    <div class="god-unctrl-r layout_fr">
                       <span class="c-sort">1/11</span><span class="c-page">
                        	<span class="c-page-l page_icon" title="上一页"></span><span class="c-page-r page_icon" title="下一页"></span>
                        </span>
                        <a href="wedding.html">
                        	切换到商品展示&nbsp;<span class="show-seller page_icon" title="切换到商品展示"></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="god-gdx-wrap">

            	<ul class="god-aside-listr">
            	    <c:forEach var="hotel" items="${hotelPageContent.hotelList }">
            	      <li>
	                    	<div class="gdx-lists-wrap layout_clear">
	                        	<div class="gdx-lists-img layout_fl">
	                            	<a href="hotelDetails?hotelId=${hotel.hotel_id }"><img src="images/${hotel.hotel_img }" style="display:block"></a>
	                            </div>
	                            <div class="gdx-lists-data">
	                            	<h2>
	                                	<a href="hotelDetails?hotelId=${hotel.hotel_id }">${hotel.hotel_name }</a>
	                                </h2>
	                                <h3>
	                                 预订电话：${hotel.hotel_tel }
	                                </h3>
	                                <div class="gdx-lists-local">
	                                	<span class="page_icon in_local_icon"></span>
	                                    
	                                </div>
	                               <div class="gdx-lists-heart">
	                                	<span class="page_icon add-heart-out">
	                                    	<span class="page_icon add-heart-in" style="width:${hotel.hotel_star * 20}%"></span>
	                                    </span>
	                                    推荐指数
	                                </div>
	                                <div class="gdx-lists-info">
	                                	<div class="gdx-lists-icon">
	                                    	<a href="field.html"><i class="page_icon in-data-Icon0"></i></a><a href="field.html"><i class="page_icon in-data-Icon1"></i></a><a href="field.html"><i class="page_icon in-data-Icon2"></i></a>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </li>
            	    </c:forEach>                                        
                </ul>               
                
                <nav aria-label="..." style="margin:0 auto">
				  <ul class="pagination">
				     <c:choose>
				       <c:when test="${ hotelPageContent.pageCurrent==1}"><li class="disabled"></c:when>
				       <c:otherwise><li></c:otherwise>
				     </c:choose>				     
				      <a href="pageShowHotel?currentPage=${hotelPageContent.pageCurrent-1 }" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <c:forEach var="page" begin="1" end="${ hotelPageContent.pageTotal}" step="1">
				       <c:choose>
				         <c:when test="${ hotelPageContent.pageCurrent==page}"><li class="active"></c:when>
				         <c:otherwise><li class=""></c:otherwise>
				       </c:choose>
				       
					       <a href="pageShowHotel?currentPage=${page }">${page}</a>
					   </li>
	               </c:forEach>
				   <c:choose>
				       <c:when test="${ hotelPageContent.pageCurrent==hotelPageContent.pageTotal}"><li class="disabled"></c:when>
				       <c:otherwise><li></c:otherwise>
				   </c:choose>	
				      <a href="pageShowHotel?currentPage=${hotelPageContent.pageCurrent+1 }" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
                
                <ul class="god-aside-list1">
                	<h2 class="god-aside-tit">热门推荐</h2>
                    <li>
                    	<div class="gdx-list-wrap">
                        	<a href="field.html" target="_blank">
                            	<img src="images/Yrm54858716fa.jpg" style="width:100%; display:block">
                            </a>
                            <h4 class="gdx-list-tit"><a href="field.html">礼宴天下</a></h4>
                            <div class="gdx-list-price layout_clear"></div>
                            <div class="gdx-list-add">
                            	<a><span class="keyword-gray">礼宴天下</span></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="gdx-list-wrap">
                        	<a href="field.html" target="_blank">
                            	<img src="images/Yrm54858716fa.jpg" style="width:100%; display:block">
                            </a>
                            <h4 class="gdx-list-tit"><a href="field.html">礼宴天下</a></h4>
                            <div class="gdx-list-price layout_clear"></div>
                            <div class="gdx-list-add">
                            	<a><span class="keyword-gray">礼宴天下</span></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="gdx-list-wrap">
                        	<a href="field.html" target="_blank">
                            	<img src="images/Yrm54858716fa.jpg" style="width:100%; display:block">
                            </a>
                            <h4 class="gdx-list-tit"><a href="field.html">礼宴天下</a></h4>
                            <div class="gdx-list-price layout_clear"></div>
                            <div class="gdx-list-add">
                            	<a><span class="keyword-gray">礼宴天下</span></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="gdx-list-wrap">
                        	<a href="field.html" target="_blank">
                            	<img src="images/Yrm54858716fa.jpg" style="width:100%; display:block">
                            </a>
                            <h4 class="gdx-list-tit"><a href="field.html">礼宴天下</a></h4>
                            <div class="gdx-list-price layout_clear"></div>
                            <div class="gdx-list-add">
                            	<a><span class="keyword-gray">礼宴天下</span></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="gdx-list-wrap">
                        	<a href="field.html" target="_blank">
                            	<img src="images/Yrm54858716fa.jpg" style="width:100%; display:block">
                            </a>
                            <h4 class="gdx-list-tit"><a href="field.html">礼宴天下</a></h4>
                            <div class="gdx-list-price layout_clear"></div>
                            <div class="gdx-list-add">
                            	<a><span class="keyword-gray">礼宴天下</span></a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            
        </div>
    </div>
    <div class="page-footer">
    	<div class="layout_center">
        	<div class="footer-list">
            	<dl class="footer-item">
                	<h3>新手上路</h3>
                    <a  >
                    	<dd><b></b>如何注册</dd>
                    </a>
                    <a  >
                    	<dd><b></b>如何登录</dd>
                    </a>
                    <a  >
                    	<dd><b></b>如何预订</dd>
                    </a>
                    <a  >
                    	<dd><b></b>购物流程</dd>
                    </a>
                    <a  >
                    	<dd><b></b>预订须知</dd>
                    </a>
                </dl>
                <dl class="footer-item">
                	<h3>公司信息</h3>
                    <a  >
                    	<dd><b></b>关于我们</dd>
                    </a>
                    <a  >
                    	<dd><b></b>用户协议</dd>
                    </a>
                    <a  >
                    	<dd><b></b>隐私申明</dd>
                    </a>
                    <a  >
                    	<dd><b></b>商家入驻协议</dd>
                    </a>
                    <a  >
                    	<dd><b></b>安全须知</dd>
                    </a>
                </dl>
                <dl class="footer-item">
                	<h3>合作联系</h3>
                    <a  >
                    	<dd><b></b>联系我们</dd>
                    </a>
                    <a  >
                    	<dd><b></b>招商加盟</dd>
                    </a>
                    <a  >
                    	<dd><b></b>商户平台</dd>
                    </a>
                    <a  >
                    	<dd><b></b>招聘信息</dd>
                    </a>
                </dl>
                <dl class="footer-item">
                	<h3>帮助中心</h3>
                    <a  >
                    	<dd><b></b>忘记密码</dd>
                    </a>
                    <a  >
                    	<dd><b></b>常见问题</dd>
                    </a>
                    <a  >
                    	<dd><b></b>在线客服</dd>
                    </a>
                    <a  >
                    	<dd><b></b>如何上传产品</dd>
                    </a>
                    <a  >
                    	<dd><b></b>如何成为商家</dd>
                    </a>
                </dl>
                <div class="footer-mobile">
                	<img src="images/SVT58398773Nz.jpg">
                    <h2>官方微信</h2>
                </div>
            </div>
            <div class="footer-data0">
            	<a><i class="footer-ad0" title="可信网站身份验证"></i></a>
                <a><i class="footer-ad1" title="重庆网警备案"></i></a>
                <a><i class="footer-ad2" title="重庆工商行政管理"></i></a>
                <a><i class="footer-ad3" title="安全联盟认证"></i></a>
            </div>
            <div class="footer-data1">
            	友情链接：
            	<a href="https://www.baidu.com/" target="_blank">百度</a>
                <em>|</em>
                <a href="https://www.taobao.com/">淘宝</a>
            </div>
            <div class="footer-data2">
            	 CopyRight 2016 婚礼汇 All Rights Reserved 
                 <a href="Untitled-2.html">渝ICP备14001673号</a>
            </div>
        </div>
    </div>
    <a target="_blank" title="联系我们" href="Untitled-2.html">
    	<span id="askus">&nbsp;</span>
    </a>
    <div id="gotop" title="返回顶部" style="display:block; background:url(images/gotop.png) -70px 0px no-repeat"></div>
</body>
</html>
