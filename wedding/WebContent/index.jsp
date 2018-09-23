<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>婚礼汇让结婚更简单（原119婚庆网）</title>
    <meta name="keywords" content="婚礼汇,119婚庆网,办婚礼,重庆婚礼酒店,重庆婚庆,婚礼租车"/>
    <meta name="description"
          content="婚礼汇（原119婚庆网）是一家专业的婚礼服务平台，为消费者提供最具影响力的婚礼服务：婚礼公司、婚礼酒店、婚礼摄像、婚礼策划、婚礼跟妆、婚礼租车等婚礼行业信息，实用的婚礼攻略与经验交流尽在婚礼汇。"/>
    <link rel="Bookmark" type="image/x-icon" href="favicon.ico"/>
    <link rel="icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="apple-touch-icon" href="favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="images/style.css"/>
    <!--Jquery 此版本幻灯片的兼容性有问题-->
    <!--<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>-->
    <script src="https://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery_lazyload/1.9.7/jquery.lazyload.min.js"></script>
    <script type="text/javascript" src="images/slides.js"></script>
    <script type="text/javascript" src="images/hlh.js"></script>

</head>
<body>
<!--顶部通长-->
<div id="public-navbar">
    <!--居中容器-->
    <div class="layout_center layout_clear" style="overflow:visible">
        <!--左对齐内容-->
        <div class="layout_fl">
            你好，欢迎来到 婚礼汇
        </div>
        <ul class="layout_fr fl_li">
            <li>
                <div class="use-layout">
                    <a href="javascript:;"><span class="use-status">会员中心</span></a>
                    <div class="use-option" style="display: none">
                        <a href="#" class="use-item" target="_parent">会员登录</a>
                        <a href="#" target="_parent">免费注册</a>
                    </div>
                    <i class="use-arrow page_icon"></i>
                </div>
            </li>
            <li><span class="use-hr"></span></li>
            <li><a href="#">我的购物车</a></li>
            <li><span class="use-hr"></span></li>
            <li>
                <div class="use-layout">
                    <a href="javascript:;"><span class="use-status">商户平台</span></a>
                    <div class="use-option" style="display: none;">
                        <a href="#" class="use-item" target="_parent">商户登录</a>
                        <a href="#" target="_parent">免费入驻</a>
                    </div>
                    <i class="use-arrow page_icon"></i>
                </div>
            </li>
            <li><span class="use-hr"></span></li>
            <li><a href="#">联系我们</a></li>
        </ul>
        <!--右对齐内容-->
    </div>
</div>
<!--顶部LOGO 搜索 发布 联系-->
<div id="public-toolbar">
    <div class="layout_center layout_clear">
        <div class="page-logo layout_fl"><a href="#"><img src="images/logo.jpg" alt="婚礼汇"></a></div>
        <div class="page-search layout_fl">
            <div class="page-search-bar layout_clear">
                <div class="page-search-text layout_fl">
                    <input type="text" class="search-cover" placeholder="搜索产品或店铺">
                </div>
                <div class="page-search-btn layout_fl">
                    <input type="button" value="搜索" class="search-button">
                </div>
            </div>
            <ul class="page-search-key layout_fl fl_li">
                <li class="search-key-ous">大家都在搜：</li>
                <li><a href="#" target="_blank">酒店</a></li>
                <li><a href="#" target="_blank">婚庆用车</a></li>
                <li><a href="#" target="_blank">度假</a></li>
                <li><a href="#" target="_blank">婚纱租赁</a></li>
            </ul>
        </div>
        <div class="page-release layout_fl"><a href="#" target="_blank">立即发布需求</a></div>
        <div class="page-tels layout_fr">
            <span class="tel-show"> 全国免费咨询热线 </span>
            <span class="tel-pink">
                <strong>400-666-888</strong>
            </span>
        </div>
    </div>
</div>
<!--顶部导航条-->
<id id="page-middle-bar">
    <div class="layout_center layout_clear">
        <div class="button layout_fl">全部分类</div>
        <ul class="layout_clear layout_fl fl_li">
            <li><a href="http://">首页</a></li>
            <li><a href="pageShowHotel?currentPage=1">婚宴场地</a></li>
            <li><a href="http://">婚纱摄影</a></li>
            <li><a href="http://">婚庆用车</a></li>
            <li><a href="http://">婚庆公司</a></li>
            <li><a href="http://">婚具租赁</a></li>
            <li><a href="http://">定制人员</a></li>
            <li><a href="http://">婚品商城</a></li>
            <li><a href="http://">蜜月度假</a></li>
        </ul>
    </div>
</id>
<!-- —————————————————————— 顶部结束 —————————————————————— -->

<!-- ——————————— 整个中间通长 ——————————— -->
<div id="page-home" class="layout page-home">
    <!-- —————————— 中间内容居中层 —————————— -->
    <div class="layout_center">
        <!-- ———— 重要部分 菜单 幻灯 跑马灯 ———— -->
        <div class="hm-import">
            <div class="hm-menu">
                <ul id="levels">
                    <li>
                        <a href="pageShowHotel?currentPage=1">
                            <div class="menu-item">
                                <i class="page_icon menu-item-fl"
                                   style="background-image:url(images/Uvi52426432fj.jpg);"></i>
                                <div class="menu-label">婚宴场地</div>
                                <i class="page_icon menu-item-fr"></i>
                            </div>
                        </a>
                        <div class="menu-child" style="display:none">
                            <dl>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">婚宴场地</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">酒店大厅</a></span>
                                        <span><a href="#">特色套餐</a></span>
                                    </div>
                                </dd>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">热门商家</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">礼宴天下</a></span>
                                        <span><a href="#">菜香源（日月光中心店）</a></span>
                                        <span><a href="#">凤凰佳居</a></span>
                                        <span><a href="#">国贸格兰维大酒店</a></span>
                                        <span><a href="#">颐之时酒楼</a></span>
                                        <span><a href="#">重庆采蝶锦廷</a></span>
                                        <span><a href="#">两江丽景饭店</a></span>
                                        <span><a href="#">礼宴天下</a></span>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <div class="menu-item">
                                <i class="page_icon menu-item-fl"
                                   style="background-image:url(images/gnt52426455dS.jpg);"></i>
                                <div class="menu-label">婚纱摄影</div>
                                <i class="page_icon menu-item-fr"></i>
                            </div>
                        </a>
                        <div class="menu-child" style="display:none">
                            <dl>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">婚纱摄影</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">婚纱照</a></span>
                                        <span><a href="#">个人写真</a></span>
                                        <span><a href="#">儿童照</a></span>
                                        <span><a href="#">全家福</a></span>
                                        <span><a href="#">孕妇照</a></span>
                                        <span><a href="#">情侣照</a></span>
                                        <span><a href="#">国外旅拍</a></span>
                                        <span><a href="#">国内旅拍</a></span>
                                        <span><a href="#">闺蜜照</a></span>
                                    </div>
                                </dd>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">热门商家</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">璧山区罗曼罗兰国际婚纱会馆</a></span>
                                        <span><a href="#">千邑像文化传媒公司</a></span>
                                        <span><a href="#">渔沐婚纱摄影工作室</a></span>
                                        <span><a href="#">旎空摄影</a></span>
                                        <span><a href="#">玛雅稀区婚纱摄影</a></span>
                                        <span><a href="#">咿豆儿童摄影</a></span>
                                        <span><a href="#">AMOR婚纱摄影体验馆</a></span>
                                        <span><a href="#">重庆阿呆影视文化传播有限责任公司</a></span>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <div class="menu-item">
                                <i class="page_icon menu-item-fl"
                                   style="background-image:url(images/xEE52426490uK.jpg);"></i>
                                <div class="menu-label">婚庆用车</div>
                                <i class="page_icon menu-item-fr"></i>
                            </div>
                        </a>
                        <div class="menu-child" style="display:none">
                            <dl>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">婚庆用车</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">豪华型</a></span>
                                        <span><a href="#">商务型</a></span>
                                        <span><a href="#">SUV</a></span>
                                        <span><a href="#">个性车</a></span>
                                        <span><a href="#">经济型</a></span>
                                        <span><a href="#">手动紧凑型</a></span>
                                        <span><a href="#">6至15座商务</a></span>
                                    </div>
                                </dd>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">热门商家</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">红色ATENZA车队</a></span>
                                        <span><a href="#">重庆重庆仟瑞汽车经纪有限公司</a></span>
                                        <span><a href="#">新蒙红色婚车队</a></span>
                                        <span><a href="#">重庆中祥租车</a></span>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <div class="menu-item">
                                <i class="page_icon menu-item-fl"
                                   style="background-image:url(images/uoi52426512ml.jpg);"></i>
                                <div class="menu-label">婚庆公司</div>
                                <i class="page_icon menu-item-fr"></i>
                            </div>
                        </a>
                        <div class="menu-child" style="display:none">
                            <dl>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">婚庆公司</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">求婚策划</a></span>
                                        <span><a href="#">中式婚礼</a></span>
                                        <span><a href="#">西式婚礼</a></span>
                                        <span><a href="#">企业庆典</a></span>
                                        <span><a href="#">生日宴</a></span>
                                        <span><a href="#">新中式婚礼</a></span>
                                        <span><a href="#">宝宝宴</a></span>
                                        <span><a href="#">寿宴</a></span>
                                    </div>
                                </dd>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">热门商家</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">重庆市皇家婚庆婚纱</a></span>
                                        <span><a href="#">木子 · 缘婚礼</a></span>
                                        <span><a href="#">爱洛丽亚婚庆</a></span>
                                        <span><a href="#">重庆禧约婚礼策划有限公司</a></span>
                                        <span><a href="#">重庆艾琳婚纱婚礼</a></span>
                                        <span><a href="#">中原婚礼</a></span>
                                        <span><a href="#">偲蕊宴会定制</a></span>
                                        <span><a href="#">深圳市莎拉拉文化传媒有限公司</a></span>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <div class="menu-item">
                                <i class="page_icon menu-item-fl"
                                   style="background-image:url(images/Hro52426532DG.jpg);"></i>
                                <div class="menu-label">婚具租赁</div>
                                <i class="page_icon menu-item-fr"></i>
                            </div>
                        </a>
                        <div class="menu-child" style="display:none">
                            <dl>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">婚具租赁</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">拱门</a></span>
                                        <span><a href="#">气柱</a></span>
                                        <span><a href="#">灯光</a></span>
                                        <span><a href="#">音响</a></span>
                                        <span><a href="#">签到台</a></span>
                                        <span><a href="#">手捧花</a></span>
                                        <span><a href="#">路引</a></span>
                                        <span><a href="#">地毯</a></span>
                                        <span><a href="#">电子礼炮</a></span>
                                        <span><a href="#">泡泡机</a></span>
                                        <span><a href="#">香槟塔</a></span>
                                        <span><a href="#">烛台</a></span>
                                        <span><a href="#">追光灯</a></span>
                                        <span><a href="#">冷焰火</a></span>
                                    </div>
                                </dd>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">热门商家</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">重庆信义文化</a></span>
                                        <span><a href="#">重庆谢中国婚礼道具</a></span>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <div class="menu-item">
                                <i class="page_icon menu-item-fl"
                                   style="background-image:url(images/woO52426552Fb.jpg);"></i>
                                <div class="menu-label">定制人员</div>
                                <i class="page_icon menu-item-fr"></i>
                            </div>
                        </a>
                        <div class="menu-child" style="display:none">
                            <dl>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">定制人员</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">主持人</a></span>
                                        <span><a href="#">化妆师</a></span>
                                        <span><a href="#">摄影师</a></span>
                                        <span><a href="#">摄像师</a></span>
                                        <span><a href="#">策划师</a></span>
                                    </div>
                                </dd>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">热门商家</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">主持人：川军</a></span>
                                        <span><a href="#">司仪曾婷</a></span>
                                        <span><a href="#">戈哥的小摄影</a></span>
                                        <span><a href="#">男化妆师骁骁</a></span>
                                        <span><a href="#">中亿文化传媒工作室</a></span>
                                        <span><a href="#">慧美影视创意文化有限公司</a></span>
                                        <span><a href="#">TF摄影摄像</a></span>
                                        <span><a href="#">祖敏</a></span>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <div class="menu-item">
                                <i class="page_icon menu-item-fl"
                                   style="background-image:url(images/NqD52426576oC.jpg);"></i>
                                <div class="menu-label">婚品商城</div>
                                <i class="page_icon menu-item-fr"></i>
                            </div>
                        </a>
                        <div class="menu-child" style="display:none">
                            <dl>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">婚品商城</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">酒水</a></span>
                                        <span><a href="#">珠宝首饰</a></span>
                                        <span><a href="#">喜糖</a></span>
                                        <span><a href="#">西服定制</a></span>
                                        <span><a href="#">请柬</a></span>
                                        <span><a href="#">婚鞋</a></span>
                                        <span><a href="#">床上用品</a></span>
                                        <span><a href="#">沙画</a></span>
                                        <span><a href="#">干果</a></span>
                                        <span><a href="#">婚纱礼服</a></span>
                                        <span><a href="#">创意礼品</a></span>
                                        <span><a href="#">甜品</a></span>
                                        <span><a href="#">签到本</a></span>
                                        <span><a href="#">婚房装饰</a></span>
                                        <span><a href="#">喜饼</a></span>
                                        <span><a href="#">鲜花</a></span>
                                        <span><a href="#">喜糖盒</a></span>
                                    </div>
                                </dd>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">热门商家</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">朝蓬商贸</a></span>
                                        <span><a href="#">朝花夕食</a></span>
                                        <span><a href="#">首美巾物高级私人定制</a></span>
                                        <span><a href="#">幸福小农冰葡萄酒旗舰店</a></span>
                                        <span><a href="#">小仙儿的喜品铺子</a></span>
                                        <span><a href="#">珍珠之家</a></span>
                                        <span><a href="#">之喜——专属你的订制喜糖</a></span>
                                        <span><a href="#">怡笙婚嫁馆</a></span>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <div class="menu-item">
                                <i class="page_icon menu-item-fl"
                                   style="background-image:url(images/Wxg52426598lo.jpg);"></i>
                                <div class="menu-label">蜜月度假</div>
                                <i class="page_icon menu-item-fr"></i>
                            </div>
                        </a>
                        <div class="menu-child" style="display:none">
                            <dl>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">蜜月度假</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">签证</a></span>
                                        <span><a href="#">机票</a></span>
                                        <span><a href="#">出境旅游</a></span>
                                        <span><a href="#">周边旅游</a></span>
                                        <span><a href="#">酒店</a></span>
                                        <span><a href="#">国内旅游</a></span>
                                        <span><a href="#">景点门票</a></span>
                                    </div>
                                </dd>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">热门商家</h1>
                                    <div class="menu-child-item">
                                        <span><a href="#">重庆中旅集团</a></span>
                                        <span><a href="#">重庆巴山旅游</a></span>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li>
                        <div class="menu-item layout_clear">
                            <div class="menu-label">敬请期待</div>
                        </div>
                        <div class="menu-child" style="display:none">
                            <dl>
                                <dd class="menu-child-item">
                                    <h1 class="menu-child-label">敬请期待</h1>
                                    <div class="menu-child-item">
                                        <span><a href="javascript:;">敬请期待</a></span>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="hm-banner" id="super-slider" data-super-slider="set">
                <div class="slider-container">
                    <div class="slider-field-item">
                        <a href="#" target="_blank"><img
                                src="images/gqh63659406pp.jpg"/></a>
                    </div>
                    <div class="slider-field-item">
                        <a href="#" target="_blank"><img
                                src="images/kQH63660936yu.jpg"/></a>
                    </div>
                    <div class="slider-field-item">
                        <a href="#" target="_blank"><img src="images/wnM59961793kx.jpg"/></a>
                    </div>
                    <div class="slider-field-item">
                        <a href="#" target="_blank"><img src="images/tfs58753019wI.jpg"/></a>
                    </div>
                    <div class="slider-field-item">
                        <a href="#" target="_blank"><img src="images/OIl61434592QN.jpg"/></a>
                    </div>
                </div>
                <div class="slider-button prev" style="display:none">
                    <span class="mask"></span>
                    <span class="page_icon icon"></span>
                </div>
                <div class="slider-button next" style="display:none">
                    <span class="mask"></span>
                    <span class="page_icon icon"></span>
                </div>
            </div>
            <script>
                $(function () {
                    $("#super-slider").slides({preload: !0, play: 5E3, pause: 2500, hoverPause: !0});
                    $("#super-slider").hover(function () {
                        $(this).children(".slider-button").show()
                    }, function () {
                        $(this).children(".slider-button").hide()
                    });
                });
            </script>
            <div class="hm-marq">
                <div class="hm-marq-text">
                    <div class="hm-marq-tit">
                        <span>婚嫁需求公告</span>
                        <a href="#">更多</a></div>
                    <div id="scroll_nav" onmouseover="clearInterval(timer)" onmouseout="timer=setInterval(mar,30)"
                         style="overflow:hidden;height:290px;width:100%;">
                        <div id="navscroll">
                            <ul id="new_list">
                                <li><a href="#" target="_blank"><span>测试文字001</span>，<span>2018-03-19</span></a></li>
                                <li><a href="#" target="_blank"><span>测试文字002</span>，<span>2018-03-19</span></a></li>
                                <li><a href="#" target="_blank"><span>测试文字003</span>，<span>2018-03-19</span></a></li>
                                <li><a href="#" target="_blank"><span>测试文字004</span>，<span>2018-03-19</span></a></li>
                                <li><a href="#" target="_blank"><span>测试文字005</span>，<span>2018-03-19</span></a></li>
                                <li><a href="#" target="_blank"><span>测试文字006</span>，<span>2018-03-19</span></a></li>
                                <li><a href="#" target="_blank"><span>测试文字007</span>，<span>2018-03-19</span></a></li>
                                <li><a href="#" target="_blank"><span>测试文字008</span>，<span>2018-03-17</span></a></li>
                                <li><a href="#" target="_blank"><span>测试文字009</span>，<span>2018-03-18</span></a></li>
                                <li><a href="#" target="_blank"><span>测试文字010</span>，<span>2018-03-16</span></a></li>
                            </ul>
                        </div>
                        <div id="navscroll2"></div>
                        <script type="text/javascript">
                            var t = getid("scroll_nav"),
                                t1 = getid("navscroll"),
                                t2 = getid("navscroll2"),
                                timer;
                            t2.innerHTML = t1.innerHTML;
                            function mar() {
                                if (t1.offsetHeight <= t.scrollTop) {
                                    t.scrollTop -= t1.offsetHeight;
                                } else {
                                    t.scrollTop++;
                                }
                            }
                            timer = setInterval(mar, 30);
                            function getid(id) {
                                return document.getElementById(id);
                            }
                        </script>
                    </div>
                </div>
                <div class="hm-marq-advert">
                    <a href="#"><img src="images/tLm56508041Fx.jpg"></a>
                </div>
            </div>
        </div>
        <!-- ———————— 中部导航 ———————— -->
        <div class="hm-major">
            <ul class="layout_clear fl_li">
                <li><a href="#" title="我们的承诺" target="_blank">
                    <div class="nav-img">
                        <img src="images/oCR49858095jM.jpg" alt="我们的承诺"/>
                    </div>
                    <div class="nav-lab">
                        <h1>我们的承诺</h1>
                        <h5>平台保障</h5>
                    </div>
                </a></li>
                <li><a href="#" target="_blank">
                    <div class="nav-img">
                        <img src="images/vHz49858102NT.jpg"
                             style="width: 90px;display: block;margin: 10px auto auto 20px;"/>
                    </div>
                    <div class="nav-lab">
                        <h1>婚前</h1>
                        <h5>平台保障</h5>
                    </div>
                </a></li>
                <li><a href="#" target="_blank">
                    <div class="nav-img">
                        <img src="images/Dgn49858107kY.jpg"/>
                    </div>
                    <div class="nav-lab">
                        <h1>婚时</h1>
                        <h5>平台保障</h5>
                    </div>
                </a></li>
                <li><a href="#" target="_blank">
                    <div class="nav-img">
                        <img src="images/iKe49858116kw.jpg"/>
                    </div>
                    <div class="nav-lab">
                        <h1>婚后</h1>
                        <h5>平台保障</h5>
                    </div>
                </a></li>
                <li><a href="#" target="_blank">
                    <div class="nav-img">
                        <img src="images/InZ49858133Ho.jpg"/>
                    </div>
                    <div class="nav-lab">
                        <h1>交流</h1>
                        <h5>平台保障</h5>
                    </div>
                </a></li>
            </ul>
        </div>
        <!-- ———————— 为你而省 ———————— -->
        <div class="hm-grid-one">
            <div class="hm-grid-hd">
                <h1 class="hm-grid-tit layout_fl">为你而省</h1>
                <span class="hm-grid-add layout_fl">只为满足您的需求，筛选最适合你的！</span>
                <a href="javascript:;" id="ChangeStore">换一批</a>
            </div>
            <div class="hm-grid-bd">
                <div class="hm-grid-list layout_clear">
                    <div class="hm-grid-cover layout_fl">
                        <div class="hm-grid-advem">
                            <a href="#" target="_blank"><img src="images/jDZ62963631uI.jpg"/></a>
                        </div>
                        <div class="hm-grid-advem" style="margin-bottom:0;">
                            <a href="#" target="_blank"><img src="images/uLB62963982aT.jpg"/></a>
                        </div>
                    </div>
                    <div style="width:820px; height:456px;position:relative;">
                        <ul class="layout_clear layout_fl fl_li" id="store-list">
                            <li data-num-page="1">
                                <div class="wrap">
                                    <a href="#" title="湘域中餐厅" target="_blank"><img class="lazy"
                                                                                   src="images/LSN54767537nb.jpg"
                                                                                   data-original="http://img.119hqw.com/img/seLogo/LSN54767537nb.jpg"/>
                                        <p class="text"><span>湘域中餐厅</span></p></a>
                                </div>
                            </li>
                            <li data-num-page="1">
                                <div class="wrap">
                                    <a href="#" title="重庆巴南区鱼洞金夫人婚纱影楼" target="_blank"><img class="lazy"
                                                                                            src="images/1453189817.jpg"
                                                                                            data-original="http://img.119hqw.com/../../UpFile/user/20160119/1453189817.jpg"/>
                                        <p class="text"><span>重庆巴南区鱼洞金夫人婚纱影楼</span></p></a>
                                </div>
                            </li>
                            <li data-num-page="1">
                                <div class="wrap">
                                    <a href="#" title="重庆南温泉丽筠酒店" target="_blank"><img class="lazy"
                                                                                       src="images/msF58469607Jg.jpg"
                                                                                       data-original="http://img.119hqw.com/img/seLogo/msF58469607Jg.jpg"/>
                                        <p class="text"><span>重庆南温泉丽筠酒店</span></p></a>
                                </div>
                            </li>
                            <li data-num-page="1">
                                <div class="wrap">
                                    <a href="#" title="重庆三毛摄影" target="_blank"><img class="lazy"
                                                                                    src="images/20160513415318.jpg"
                                                                                    data-original="http://img.119hqw.com//UpFile/user/20160513/20160513415318.jpg"/>
                                        <p class="text"><span>重庆三毛摄影</span></p></a>
                                </div>
                            </li>
                            <li data-num-page="1">
                                <div class="wrap">
                                    <a href="#" title="重庆巴山旅游" target="_blank"><img class="lazy"
                                                                                    src="images/LcH56486562uo.jpg"
                                                                                    data-original="http://img.119hqw.com/img/seLogo/LcH56486562uo.jpg"/>
                                        <p class="text"><span>重庆巴山旅游</span></p></a>
                                </div>
                            </li>
                            <li data-num-page="1">
                                <div class="wrap">
                                    <a href="#" title="重庆两江酒店" target="_blank"><img class="lazy"
                                                                                    src="images/NGG57004477ef.jpg"
                                                                                    data-original="http://img.119hqw.com/img/seLogo/NGG57004477ef.jpg"/>
                                        <p class="text"><span>重庆两江酒店</span></p></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- ———————— 婚宴场地 ———————— -->
        <div class="hm-grid-floor">
            <div class="hm-grid-hd">
                <h1 class="hm-grid-tit layout_fl">婚宴场地</h1>
                <ul class="layout_fl layout_clear fl_li">
                    <li><a href="javascript:;" class="act" data-agent-floor=""
                           data-agent-title="{id:&quot;jyp54862992ud&quot;,title:&quot;推荐场地&quot;,type:&quot;店铺&quot;}">推荐场地</a>
                    </li>
                </ul>
            </div>
            <div class="hm-grid-bd layout_clear">
                <div class="layout-fl layout_fl">
                    <div class="img">
                        <a href="#"><img class="lazy" src="images/EjU62361173cL.jpg"
                                         data-original="http://img.119hqw.com/img/banner/EjU62361173cL.jpg"
                                         style="display: block;"/></a>
                    </div>
                </div>
                <div class="layout-cn layout_fl">
                    <ul class="layout_clear fl_li" data-floor-id="j4174sq">
                        <li><a href="#" target="_blank"><img class="lazy" src="images/woX62017152YC.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/woX62017152YC.jpg"
                                                             style="display: block;"/>
                            <p>重庆南温泉丽筠酒店</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20161022100789.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20161021/20161022100789.jpg"
                                                             style="display: block;"/>
                            <p>重庆万豪酒店（南坪店）</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/Wld62017264Nb.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/Wld62017264Nb.jpg"
                                                             style="display: block;"/>
                            <p>礼宴天下</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/1453441634.jpg"
                                                             data-original="http://img.119hqw.com/../../UpFile/user/20160122/1453441634.jpg"
                                                             style="display: block;"/>
                            <p>澳维酒店</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/ebY54843280Wd.jpg"
                                                             data-original="http://img.119hqw.com/img/seLogo/ebY54843280Wd.jpg"
                                                             style="display: block;"/>
                            <p>红鼎味园大饭店</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/EdL62016988lc.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/EdL62016988lc.jpg"
                                                             style="display: block;"/>
                            <p>江北希尔顿逸林酒店</p></a></li>
                    </ul>
                </div>
                <div class="layout-fr layout_fl tree">
                    <div class="hm-hot-tit">
                        <i class="page_icon hm-hots-icon"></i>热门推荐
                    </div>
                    <ul class="hm-hot-list">
                        <li class="cur"><a href="#" title="礼宴天下"><span
                                class="hm-hot-lab"><em>1</em><span>/</span>礼宴天下</span></a>
                            <div class="hm-hot-child flex-down" style="display:block"><a
                                    href="#">
                                <img class="lazy" src="images/Yrm54858716fa.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/Yrm54858716fa.jpg"
                                     style="display: inline-block;"/>
                            </a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:80%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">4</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="http://www.119hqw.com/store.php?seid=HXK54514351pN" title="菜香源（日月光中心店）"><span
                                class="hm-hot-lab"><em>2</em><span>/</span>菜香源（日月光中心店</span></a>
                            <div class="hm-hot-child " style="display:none"><a
                                    href="http://www.119hqw.com/store.php?seid=HXK54514351pN">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/KEW54514830pa.jpg"/>
                            </a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="http://www.119hqw.com/store.php?seid=duy54598765ct" title="凤凰佳居"><span
                                class="hm-hot-lab"><em>3</em><span>/</span>凤凰佳居</span></a>
                            <div class="hm-hot-child " style="display:none"><a
                                    href="http://www.119hqw.com/store.php?seid=duy54598765ct">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/gxe54599056Qp.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="http://www.119hqw.com/store.php?seid=bIY54668132Fo" title="国贸格兰维大酒店"><span
                                class="hm-hot-lab"><em>4</em><span>/</span>国贸格兰维大酒店</span></a>
                            <div class="hm-hot-child " style="display:none"><a
                                    href="http://www.119hqw.com/store.php?seid=bIY54668132Fo">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/VSc54668260ku.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="http://www.119hqw.com/store.php?seid=RgU54670171gz" title="颐之时酒楼"><span
                                class="hm-hot-lab"><em>5</em><span>/</span>颐之时酒楼</span></a>
                            <div class="hm-hot-child " style="display:none"><a
                                    href="http://www.119hqw.com/store.php?seid=RgU54670171gz">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/zsK54670344vn.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="http://www.119hqw.com/store.php?seid=PdI54691013LY" title="重庆采蝶锦廷"><span
                                class="hm-hot-lab"><em>6</em><span>/</span>重庆采蝶锦廷</span></a>
                            <div class="hm-hot-child " style="display:none"><a
                                    href="http://www.119hqw.com/store.php?seid=PdI54691013LY">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/pIz54691581yv.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="http://www.119hqw.com/store.php?seid=UZf54760842hV" title="两江丽景饭店"><span
                                class="hm-hot-lab"><em>7</em><span>/</span>两江丽景饭店</span></a>
                            <div class="hm-hot-child " style="display:none"><a
                                    href="http://www.119hqw.com/store.php?seid=UZf54760842hV">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/ytV54760862MK.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="http://www.119hqw.com/store.php?seid=XPp54858541Hl" title="礼宴天下"><span
                                class="hm-hot-lab"><em>8</em><span>/</span>礼宴天下</span></a>
                            <div class="hm-hot-child " style="display:none"><a
                                    href="http://www.119hqw.com/store.php?seid=XPp54858541Hl">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/Yrm54858716fa.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:80%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">4</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- ———————— 广告横栏 ———————— -->
        <div class="hm-advert">
            <a href="#"><img src="images/sBk56507199Zz.jpg"/></a>
        </div>
        <!-- ———————— 婚纱摄影 ———————— -->
        <div class="hm-grid-floor">
            <div class="hm-grid-hd">
                <h1 class="hm-grid-tit layout_fl">婚纱摄影</h1>
                <ul class="layout_fl layout_clear fl_li">
                    <li><a href="javascript:;" class="act" data-agent-floor=""
                           data-agent-title="{id:&quot;Rxa56399650jw&quot;,title:&quot;推荐摄影&quot;,type:&quot;店铺&quot;}">推荐摄影</a>
                    </li>
                </ul>
            </div>
            <div class="hm-grid-bd layout_clear">
                <div class="layout-fl layout_fl">
                    <div class="img">
                        <a href="#"><img class="lazy" src="images/Czu62362514Du.jpg"
                                         data-original="http://img.119hqw.com/img/banner/Czu62362514Du.jpg"
                                         style="display: block;"/></a>
                    </div>
                </div>
                <div class="layout-cn layout_fl">
                    <ul class="layout_clear fl_li" data-floor-id="j1457dqw">
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160510052266.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160509/20160510052266.jpg"
                                                             style="display: block;"/>
                            <p>渔沐婚纱摄影工作室</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/qRJ62017428zY.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/qRJ62017428zY.jpg"
                                                             style="display: block;"/>
                            <p>澳蓝国际摄影机构</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/HMM62017557hd.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/HMM62017557hd.jpg"
                                                             style="display: block;"/>
                            <p>重庆巴南区鱼洞金夫人婚纱影楼</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/ZzZ62017688Ud.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/ZzZ62017688Ud.jpg"
                                                             style="display: block;"/>
                            <p>重庆云端摄影全球旅拍</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/HTi62018948uB.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/HTi62018948uB.jpg"
                                                             style="display: block;"/>
                            <p>璧山区罗曼罗兰国际婚纱会馆</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160819434004.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160819/20160819434004.jpg"
                                                             style="display: block;"/>
                            <p>千邑像文化传媒公司</p></a></li>
                    </ul>
                </div>
                <div class="layout-fr layout_fl tree">
                    <div class="hm-hot-tit">
                        <i class="page_icon hm-hots-icon"></i>热门推荐
                    </div>
                    <ul class="hm-hot-list">
                        <li class="cur"><a href="#" title="璧山区罗曼罗兰国际婚纱会馆"><span
                                class="hm-hot-lab"><em>1</em><span>/</span>璧山区罗曼罗兰国际婚</span></a>
                            <div class="hm-hot-child flex-down" style="display: block;"><a href="#">
                                <img class="lazy" src="images/lkX57112406gC.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/lkX57112406gC.jpg"
                                     style="display: inline-block;"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:80%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">4</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="http://www.119hqw.com/store.php?seid=mkL56077567ES"
                                        title="千邑像文化传媒公司"><span
                                class="hm-hot-lab"><em>2</em><span>/</span>千邑像文化传媒公司</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160819/20160819434004.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="http://www.119hqw.com/store.php?seid=sJJ56077567Kz"
                                        title="渔沐婚纱摄影工作室"><span
                                class="hm-hot-lab"><em>3</em><span>/</span>渔沐婚纱摄影工作室</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160509/20160510052266.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="http://www.119hqw.com/store.php?seid=CNU56077568PE" title="旎空摄影"><span
                                class="hm-hot-lab"><em>4</em><span>/</span>旎空摄影</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/../../UpFile/user/20160120/1453272577.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="http://www.119hqw.com/store.php?seid=EWW56077569oc" title="玛雅稀区婚纱摄影"><span
                                class="hm-hot-lab"><em>5</em><span>/</span>玛雅稀区婚纱摄影</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/../../UpFile/user/20160229/1456739474.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="http://www.119hqw.com/store.php?seid=zne56077571mx" title="咿豆儿童摄影"><span
                                class="hm-hot-lab"><em>6</em><span>/</span>咿豆儿童摄影</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160507/20160508009335.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="http://www.119hqw.com/store.php?seid=mhZ56077568DX"
                                        title="AMOR婚纱摄影体验馆"><span class="hm-hot-lab"><em>7</em><span>/</span>AMOR婚纱摄影体验</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/../../UpFile/user/20160127/1453859254.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="http://www.119hqw.com/store.php?seid=hEL56077571ca"
                                        title="重庆阿呆影视文化传播有限责任公司"><span class="hm-hot-lab"><em>8</em><span>/</span>重庆阿呆影视文化传播</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160607/20160607473788.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- ———————— 婚庆用车 ———————— -->
        <div class="hm-grid-floor">
            <div class="hm-grid-hd">
                <h1 class="hm-grid-tit layout_fl">婚庆用车</h1>
                <ul class="layout_fl layout_clear fl_li">
                    <li><a href="javascript:;" class="act" data-agent-floor=""
                           data-agent-title="{id:&quot;Eao56400071wK&quot;,title:&quot;推荐用车&quot;,type:&quot;店铺&quot;}">推荐用车</a>
                    </li>
                </ul>
            </div>
            <div class="hm-grid-bd layout_clear">
                <div class="layout-fl layout_fl">
                    <div class="img">
                        <a href="#"><img class="lazy" src="images/PQT62363122Or.jpg"
                                         data-original="http://img.119hqw.com/img/banner/PQT62363122Or.jpg"
                                         style="display: block;"/></a>
                    </div>
                </div>
                <div class="layout-cn layout_fl">
                    <ul class="layout_clear fl_li" data-floor-id="g14dws">
                        <li><a href="#" target="_blank"><img class="lazy" src="images/1444716439.jpg"
                                                             data-original="http://img.119hqw.com/../../UpFile/user/20151013/1444716439.jpg"
                                                             style="display: block;"/>
                            <p>重庆路威汽车经纪有限公司</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160629777280.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160629/20160629777280.jpg"
                                                             style="display: block;"/>
                            <p>重庆中祥租车</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160926956313.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160926/20160926956313.jpg"
                                                             style="display: block;"/>
                            <p>新蒙红色婚车队</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160709325902.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160709/20160709325902.jpg"
                                                             style="display: block;"/>
                            <p>亚航租车</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160716744723.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160716/20160716744723.jpg"
                                                             style="display: block;"/>
                            <p>重庆永鼎租车</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160426141105.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160425/20160426141105.jpg"
                                                             style="display: block;"/>
                            <p>重庆重庆仟瑞汽车经纪有限公司</p></a></li>
                    </ul>
                </div>
                <div class="layout-fr layout_fl tree">
                    <div class="hm-hot-tit">
                        <i class="page_icon hm-hots-icon"></i>热门推荐
                    </div>
                    <ul class="hm-hot-list">
                        <li class="cur"><a href="#" title="红色ATENZA车队"><span class="hm-hot-lab"><em>1</em><span>/</span>红色ATENZA车队</span></a>
                            <div class="hm-hot-child flex-down" style="display:block"><a href="#">
                                <img class="lazy" src="images/20160604321062.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160604/20160604321062.jpg"
                                     style="display: inline-block;"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="重庆重庆仟瑞汽车经纪有限公司"><span class="hm-hot-lab"><em>2</em><span>/</span>重庆重庆仟瑞汽车经纪</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160425/20160426141105.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="新蒙红色婚车队"><span class="hm-hot-lab"><em>3</em><span>/</span>新蒙红色婚车队</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160926/20160926956313.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="重庆中祥租车"><span
                                class="hm-hot-lab"><em>4</em><span>/</span>重庆中祥租车</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160629/20160629777280.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- ———————— 广告横栏 ———————— -->
        <div class="hm-advert">
            <a href="#"><img src="images/zKq56507283Tl.jpg"/></a>
        </div>
        <!-- ———————— 婚庆公司 ———————— -->
        <div class="hm-grid-floor">
            <div class="hm-grid-hd">
                <h1 class="hm-grid-tit layout_fl">婚庆公司</h1>
                <ul class="layout_fl layout_clear fl_li">
                    <li><a href="javascript:;" class="act" data-agent-floor=""
                           data-agent-title="{id:&quot;sYa56400428vO&quot;,title:&quot;推荐婚庆&quot;,type:&quot;店铺&quot;}">推荐婚庆</a>
                    </li>
                </ul>
            </div>
            <div class="hm-grid-bd layout_clear">
                <div class="layout-fl layout_fl">
                    <div class="img">
                        <a href="#"><img class="lazy" src="images/ORk62363807JC.jpg"
                                         data-original="http://img.119hqw.com/img/banner/ORk62363807JC.jpg"
                                         style="display: block;"/></a>
                    </div>
                </div>
                <div class="layout-cn layout_fl">
                    <ul class="layout_clear fl_li" data-floor-id="h14dq">
                        <li><a href="#" target="_blank"><img class="lazy" src="images/BcE62019038So.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/BcE62019038So.jpg"
                                                             style="display: block;"/>
                            <p>迦蘭婚礼定制</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160422139048.png"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160421/20160422139048.png"
                                                             style="display: block;"/>
                            <p>维奈斯婚礼宫殿</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/Osi62365827jY.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/Osi62365827jY.jpg"
                                                             style="display: block;"/>
                            <p>呆萌气球</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/Jaf62365539uN.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/Jaf62365539uN.jpg"
                                                             style="display: block;"/>
                            <p>重庆市拾亿光年婚庆礼仪服务有限公司</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/nlv62365626IS.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/nlv62365626IS.jpg"
                                                             style="display: block;"/>
                            <p>爱洛丽亚婚庆</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160326825385.JPG"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160326/20160326825385.JPG"
                                                             style="display: block;"/>
                            <p>拉斐德高端婚礼设计</p></a></li>
                    </ul>
                </div>
                <div class="layout-fr layout_fl tree">
                    <div class="hm-hot-tit">
                        <i class="page_icon hm-hots-icon"></i>热门推荐
                    </div>
                    <ul class="hm-hot-list">
                        <li class="cur"><a href="#" title="重庆市皇家婚庆婚纱"><span class="hm-hot-lab"><em>1</em><span>/</span>重庆市皇家婚庆婚纱</span></a>
                            <div class="hm-hot-child flex-down" style="display:block"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/seLogo/sKv60908758Bt.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/sKv60908758Bt.jpg"
                                     style="display: inline-block;"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:100%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">5</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="木子 &middot; 缘婚礼"><span class="hm-hot-lab"><em>2</em><span>/</span>木子 &middot;</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160414/20160414272314.jpg"/>>
                                <a href="#">
                                    <div class="hm-hot-attr">
                                        <div class="hm-hot-star0">
                                            <div class="hm-hot-star1" style="width:80%;" title="推荐星级"></div>
                                        </div>
                                        <span class="hm-hot-val">4</span>
                                    </div>
                            </div>
                        </li>
                        <li><a href="#" title="爱洛丽亚婚庆"><span
                                class="hm-hot-lab"><em>3</em><span>/</span>爱洛丽亚婚庆</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/TiQ57697432SH.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:80%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">4</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="重庆禧约婚礼策划有限公司"><span class="hm-hot-lab"><em>4</em><span>/</span>重庆禧约婚礼策划有限</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/mfx58318733pl.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title=" 重庆艾琳婚纱婚礼"><span
                                class="hm-hot-lab"><em>5</em><span>/</span> 重庆艾琳婚纱婚礼</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160315/1458018102.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="中原婚礼"><span class="hm-hot-lab"><em>6</em><span>/</span>中原婚礼</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160412/20160412835350.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="偲蕊宴会定制"><span
                                class="hm-hot-lab"><em>7</em><span>/</span>偲蕊宴会定制</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160905/20160905364752.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="深圳市莎拉拉文化传媒有限公司"><span class="hm-hot-lab"><em>8</em><span>/</span>深圳市莎拉拉文化传媒</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160423/20160423675530.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- ———————— 定制人员 ———————— -->
        <div class="hm-grid-floor">
            <div class="hm-grid-hd">
                <h1 class="hm-grid-tit layout_fl">定制人员</h1>
                <ul class="layout_fl layout_clear fl_li">
                    <li><a href="javascript:;" class="act" data-agent-floor=""
                           data-agent-title="{id:&quot;VgQ56400742jE&quot;,title:&quot;推荐定制&quot;,type:&quot;店铺&quot;}">推荐定制</a>
                    </li>
                </ul>
            </div>
            <div class="hm-grid-bd layout_clear">
                <div class="layout-fl layout_fl">
                    <div class="img">
                        <a href="#"><img class="lazy" src="images/XUd62365134nD.jpg"
                                         data-original="http://img.119hqw.com/img/banner/XUd62365134nD.jpg"
                                         style="display: block;"/></a>
                    </div>
                </div>
                <div class="layout-cn layout_fl">
                    <ul class="layout_clear fl_li" data-floor-id="f42lq">
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160909899621.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160909/20160909899621.jpg"
                                                             style="display: block;"/>
                            <p>王后影像婚礼跟拍</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/jWi61758873Dr.jpg"
                                                             data-original="http://img.119hqw.com/img/seLogo/jWi61758873Dr.jpg"
                                                             style="display: block;"/>
                            <p>沐师团队主持人-霖鎬</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160621088669.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160620/20160621088669.jpg"
                                                             style="display: block;"/>
                            <p>主持人琰琰 </p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/1457150527.jpg"
                                                             data-original="http://img.119hqw.com/../../UpFile/user/20160305/1457150527.jpg"
                                                             style="display: block;"/>
                            <p>主持人向枫</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/VgH60827902kR.jpg"
                                                             data-original="http://img.119hqw.com/img/seLogo/VgH60827902kR.jpg"
                                                             style="display: block;"/>
                            <p>主持人：川军</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160812268918.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160812/20160812268918.jpg"
                                                             style="display: block;"/>
                            <p>重庆麒天文化传媒</p></a></li>
                    </ul>
                </div>
                <div class="layout-fr layout_fl tree">
                    <div class="hm-hot-tit">
                        <i class="page_icon hm-hots-icon"></i>热门推荐
                    </div>
                    <ul class="hm-hot-list">
                        <li class="cur"><a href="#" title="主持人：川军"><span class="hm-hot-lab"><em>1</em><span>/</span>主持人：川军</span></a>
                            <div class="hm-hot-child flex-down" style="display:block"><a href="#">
                                <img class="lazy" src="images/xmH93229028uG.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/xmH93229028uG.jpg"
                                     style="display: inline-block;"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:80%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">4</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="司仪曾婷"><span class="hm-hot-lab"><em>2</em><span>/</span>司仪曾婷</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160612/20160612720910.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="戈哥的小摄影"><span
                                class="hm-hot-lab"><em>3</em><span>/</span>戈哥的小摄影</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160827/20160827512704.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="男化妆师骁骁"><span
                                class="hm-hot-lab"><em>4</em><span>/</span>男化妆师骁骁</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/img/seLogo/YbW57699299lb.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="中亿文化传媒工作室  "><span class="hm-hot-lab"><em>5</em><span>/</span>中亿文化传媒工作室 </span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20161013/20161013953683.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="慧美影视创意文化有限公司"><span class="hm-hot-lab"><em>6</em><span>/</span>慧美影视创意文化有限</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160721/20160721526397.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="TF摄影摄像"><span
                                class="hm-hot-lab"><em>7</em><span>/</span>TF摄影摄像</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160913/20160914088847.JPG"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li><a href="#" title="祖敏"><span class="hm-hot-lab"><em>8</em><span>/</span>祖敏</span></a>
                            <div class="hm-hot-child " style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160913/20160913530558.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- ———————— 婚品商城 ———————— -->
        <div class="hm-grid-floor">
            <div class="hm-grid-hd">
                <h1 class="hm-grid-tit layout_fl">婚品商城</h1>
                <ul class="layout_fl layout_clear fl_li">
                    <li><a href="javascript:;" class="act" data-agent-floor=""
                           data-agent-title="{id:&quot;GJU56401073Ls&quot;,title:&quot;推荐店铺&quot;,type:&quot;店铺&quot;}">推荐店铺</a>
                    </li>
                </ul>
            </div>
            <div class="hm-grid-bd layout_clear">
                <div class="layout-fl layout_fl">
                    <div class="img">
                        <a href="#"><img class="lazy" src="images/Nap62364544LS.jpg"
                                         data-original="http://img.119hqw.com/img/banner/Nap62364544LS.jpg"
                                         style="display: block;"/></a>
                    </div>
                </div>
                <div class="layout-cn layout_fl">
                    <ul class="layout_clear fl_li" data-floor-id="h49dqs">
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160813497309.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160813/20160813497309.jpg"
                                                             style="display: block;"/>
                            <p>幸福小农冰葡萄酒旗舰店</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/cJn57713674uY.jpg"
                                                             data-original="http://img.119hqw.com/img/seLogo/cJn57713674uY.jpg"
                                                             style="display: block;"/>
                            <p>段记西服解放碑婚嫁旗舰店</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160618331219.JPG"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160618/20160618331219.JPG"
                                                             style="display: block;"/>
                            <p>CC BOSS滴潮店~</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/20160430009602.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160429/20160430009602.jpg"
                                                             style="display: block;"/>
                            <p>水星家纺重庆总代</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/1458287303.jpg"
                                                             data-original="http://img.119hqw.com//UpFile/user/20160318/1458287303.jpg"
                                                             style="display: block;"/>
                            <p>怡笙婚嫁馆</p></a></li>
                        <li><a href="#" target="_blank"><img class="lazy" src="images/xnK62366024Yp.jpg"
                                                             data-original="http://img.119hqw.com/img/seAdvertLogo/xnK62366024Yp.jpg"
                                                             style="display: block;"/>
                            <p>彼爱花艺馆</p></a></li>
                    </ul>
                </div>
                <div class="layout-fr layout_fl tree">
                    <div class="hm-hot-tit">
                        <i class="page_icon hm-hots-icon"></i>热门推荐
                    </div>
                    <ul class="hm-hot-list">
                        <li class="cur"><a href="#" title="朝蓬商贸"><span
                                class="hm-hot-lab"><em>1</em><span>/</span>朝蓬商贸</span></a>
                            <div class="hm-hot-child flex-down" style="display: block;"><a href="#">
                                <img class="lazy" src="images/zhaopenglolooo.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/201509/zhaopenglolooo.jpg"
                                     style="display: inline-block;"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="#" title="朝花夕食"><span
                                class="hm-hot-lab"><em>2</em><span>/</span>朝花夕食</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160613/20160613958262.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="#" title="首美巾物高级私人定制"><span
                                class="hm-hot-lab"><em>3</em><span>/</span>首美巾物高级私人定制</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160604/20160604384170.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="#" title="幸福小农冰葡萄酒旗舰店"><span
                                class="hm-hot-lab"><em>4</em><span>/</span>幸福小农冰葡萄酒旗舰</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160813/20160813497309.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="http://www.119hqw.com/store.php?seid=VQw56077568RE"
                                        title="小仙儿的喜品铺子"><span
                                class="hm-hot-lab"><em>5</em><span>/</span>小仙儿的喜品铺子</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160709/20160709813018.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="#" title="珍珠之家"><span
                                class="hm-hot-lab"><em>6</em><span>/</span>珍珠之家</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com/"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="#" title="之喜——专属你的订制喜糖"><span
                                class="hm-hot-lab"><em>7</em><span>/</span>之喜—&amp;</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160630/20160630580762.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                        <li class=""><a href="#" title="怡笙婚嫁馆"><span
                                class="hm-hot-lab"><em>8</em><span>/</span>怡笙婚嫁馆</span></a>
                            <div class="hm-hot-child" style="display:none"><a href="#">
                                <img class="lazy" src="http://img.119hqw.com/img/WebsiteImg/CGl58302206Uf.jpg"
                                     data-original="http://img.119hqw.com//UpFile/user/20160318/1458287303.jpg"/></a>
                                <div class="hm-hot-attr">
                                    <div class="hm-hot-star0">
                                        <div class="hm-hot-star1" style="width:40%;" title="推荐星级"></div>
                                    </div>
                                    <span class="hm-hot-val">2</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- ——————— 婚嫁服务横栏 ——————— -->
        <div class="hm-major2">
            <ul class="layout_clear fl_li">
                <li><a href="javascript:;"><i class="page-icon2 in-ser-menu1"></i><span>婚嫁服务 实名认证</span></a></li>
                <li><a href="javascript:;"><i class="page-icon2 in-ser-menu2"></i><span>标准体系 价格透明</span></a></li>
                <li><a href="javascript:;"><i class="page-icon2 in-ser-menu3"></i><span>交易担保 满意付款</span></a></li>
                <li><a href="javascript:;"><i class="page-icon2 in-ser-menu4"></i><span>天天低价 畅选无忧</span></a></li>
            </ul>
        </div>
        <!-- —————— 电子请帖婚尚咨询 —————— -->
        <div class="hm-major3">
            <ul class="hm-patch layout_clear fl_li">
                <li><a href="javascript:;"><i class="page-icon2 in-hp-menu1"></i>
                    <p> 电子请帖 </p></a></li>
                <li><a href="javascript:;"><i class="page-icon2 in-hp-menu2"></i>
                    <p> 黄道吉利 </p></a></li>
                <li><a href="javascript:;"><i class="page-icon2 in-hp-menu3"></i>
                    <p> 婚姻登记处 </p></a></li>
                <li><a href="javascript:;"><i class="page-icon2 in-hp-menu4"></i>
                    <p> 婚礼众筹 </p></a></li>
                <li><a href="javascript:;"><i class="page-icon2 in-hp-menu5"></i>
                    <p> 立即管理 </p></a></li>
                <li><a href="javascript:;"><i class="page-icon2 in-hp-menu6"></i>
                    <p> 购买广告 </p></a></li>
            </ul>
            <div class="hm-dalist layout-fr layout_clear">
                <div class="flex layout_fl">
                    <div class="top">
                        <h1><i class="page-icon2 in-hp-advice" style=""></i>婚尚资讯</h1>
                    </div>
                    <ul class="list">
                        <li><b></b><a href="#" target="_blank"><p class="text">
                            新娘婚鞋怎么选 八大攻略助你选对婚鞋</p></a></li>
                        <li><b></b><a href="#" target="_blank"><p class="text">
                            如何确定婚宴桌数 婚宴桌数注意事项</p></a></li>
                        <li><b></b><a href="#" target="_blank"><p class="text">
                            新郎如何选择婚鞋 新郎婚鞋选择注意事项</p></a></li>
                        <li><b></b><a href="#" target="_blank"><p class="text">
                            男士上门提亲的流程以及注意事项</p></a></li>
                        <li><b></b><a href="#" target="_blank"><p class="text">
                            戒指如何佩戴 戒指戴法及含义大全</p></a></li>
                    </ul>
                </div>
                <div class="flex layout_fl">
                    <div class="top">
                        <h1><i class="page-icon2 in-hp-repot" style=""></i>媒体报道</h1>
                    </div>
                    <ul class="list">
                        <li><b></b><a href="#" target="_blank"><p class="text">
                            火爆进行中 | 推荐新用户注册→“价值千万”礼品随你领~</p></a></li>
                        <li><b></b><a href="#" target="_blank"><p class="text">
                            招商 | 王健林说：“先定小目标，比如先这样来......！”</p></a></li>
                        <li><b></b><a href="#" target="_blank"><p class="text">
                            招商 | 一站式婚礼的甜蜜优势，你不得不知！</p></a></li>
                        <li><b></b><a href="#" target="_blank"><p class="text">
                            一生一次的婚礼，请不要让它变成“拼盘式”</p></a></li>
                        <li><b></b><a href="#" target="_blank"><p class="text">
                            恭喜！钟丽缇、张伦硕11月8日大婚 ！</p></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 下面是layout_center的结束标签-->
    </div>
</div>
<!-- —————————————————————— Jquery功能 —————————————————————— -->


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
</body>
</html>