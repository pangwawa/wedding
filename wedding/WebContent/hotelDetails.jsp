<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>商家详情</title>
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
	<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
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
                </div></li>
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
                </div></li>
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
            <li><a href="storePage.do?currentPage=1">婚宴场地</a></li>
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

<!-- ——————————————————— 详情页 下拉 午餐 晚餐 ——————————————————— -->
<div id="page-shops">
    <div class="layout_center">
        <div class="path">
            <span class="root"><a href="index.jsp">婚礼汇</a></span>
            <em>&gt;</em>
            <span class="root"><a href="storePage.do?currentPage=1">婚宴场地</a></span>
            <em>&gt;</em>
            <a href="javascript:;" class="page cur">酒店名称</a>
        </div>
        <div id="shops-header" class="header layout_clear">
            <div class="shops-cover layout_fl">
                <img src="/upload/${store.hotel_img}" />
            </div>
            <div class="shops-deta layout_clear layout_fl">
                <div class="shops-info layout_fl">
                    <h1 class="shops-info-name">${hotel.hotel_name }</h1>
                    <div class="shops-info-local">
                        <i class="page_icon in-shop-local-icon"></i>重庆市渝中区青年路18号(新世纪商场旁)
                    </div>
                    <ul class="shops-info-list">
                        <li>联系电话：${hotelInfo.info_microphone }</li>
                        <li>公交线路：${hotelInfo.info_bus }</li>
                    </ul>
                </div>
                <div class="shops-label layout_fl">
                    <h4 class="shops-label-name">酒店名称</h4>
                    <div class="shops-label-param">
                        <span class="shops-label-item"><span class="shops-label-up">描述</span><span class="shops-label-down">4.8</span></span>
                        <span class="shops-label-item"><span class="shops-label-up">服务</span><span class="shops-label-down">5.8</span></span>
                        <span class="shops-label-item"><span class="shops-label-up">保障</span><span class="shops-label-down">4.8</span></span>
                    </div>
                    <a href="javascript:;" class="shops-btn shops-btn0" data-seid="{CollectSeid:'XsT54860328Bd'}">收藏店铺</a>
                    <a href="javascript:;" class="shops-btn shops-btn1">联系客服</a>
                </div>
            </div>
        </div>
        <div id="shops-section" class="content">
            <div class="shops-grids">
                <div class="shops-grids-hd layout_clear"></div>
            </div>
            <div class="shops-grids">
                <div class="shops-grids-hd layout_clear">
                    <h1 class="shops-grids-h1 layout_fl">婚宴场地</h1>
                </div>
                <div class="shops-gdx-wrap">
                    <ul class="shops-gdx-list3">
                        
                        <li>
                            <div class="shops-gdx-trans">
                                <div class="shops-trans-cover" title="点击查看" data-imglength="1" data-imagelist="http://img.119hqw.com/img/GoodsIco/dMi54860807hu.jpg" data-imagename="1号厅" style="cursor:pointer">
                                    <span class="shops-case-lab">1张</span>
                                    <img src="images/${hotelRoom.room_img } }" />
                                </div>
                                <div class="shops-trans-teble">
                                    <p>房间名称:${hotelRoom.room_name}</p>
                                    <table>
                                        <tbody>
                                        <tr>
                                            <td><span class="lab">空高</span><span>${hotelRoom.room_height}</span></td>
                                            <td><span class="lab">柱子</span><span>${hotelRoom.room_pillar}</span></td>
                                            <td><span class="lab">形状</span><span>${hotelRoom.room_split}</span></td>
                                        </tr>
                                        <tr>
                                            <td><span class="lab">低消</span><span>${hotelRoom.room_min_fee}</span></td>
                                            <td><span class="lab">面积</span><span>${hotelRoom.room_area}</span></td>
                                            <td><span class="lab">拆分</span><span>${hotelRoom.room_split}</span></td>
                                        </tr>
                                        <tr>
                                            <td><span class="lab">电费</span><span>${hotelRoom.room_ele_fee}</span></td>
                                            <td><span class="lab">晚餐</span><span>${hotelRoom.room_dinner}</span></td>
                                            <td><span class="lab">桌数</span><span>${hotelRoom.room_tables}</span></td>
                                        </tr>
                                        <tr>
                                            <td><span class="lab">LED</span><span>${hotelRoom.room_LED}</span></td>
                                            <td><span class="lab">灯光</span><span>${hotelRoom.room_lamplight}</span></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
						</li>
                    </ul>
                </div>
            </div>
            <div class="shops-grids">
                <div class="shops-grids-hd">
                    <h1 class="shops-grids-h1">商家信息</h1>
                </div>
                <div class="shops-gdx-wrap">
                    <div class="shops-gdx-transdx">
							<div class="shops-transdx-map" id="allmap">
							<div style="width:100%;height:100%;border:#ccc solid 1px;" id="dituContent"></div>
							</div>
							<div class="shops-transdx-data">
								<div class="shops-transdx-table">
									<ul>
										<li style="width: 193.5px"><span class="lab">1星级</span><span >${hotelInfo.info_star_level }</span></li>
										<li style="width: 193.5px"><span class="lab">2装修时间</span><span >${hotelInfo.info_decorate_time }</span></li>
										<li style="width: 193.5px"><span class="lab">3订金</span><span >${hotelInfo.info_subscription }</span></li>
										<li style="width: 193.5px"><span class="lab">4服务费</span><span >${hotelInfo.info_service_fee }</span></li>
										<li style="width: 193.5px"><span class="lab">5进场费</span><span >${hotelInfo.info_enter_fee }</span></li>
										<li style="width: 193.5px"><span class="lab">7婚房化妆间</span><span >${hotelInfo.info_dressing_room }</span></li>
										<li style="width: 388px"><span class="lab">6公交线路</span><span  style="width: 280px !important;">${hotelInfo.info_bus }</span></li>
										<li style="width: 193.5px"><span class="lab">8麦克风</span><span >${hotelInfo.info_microphone }</span></li>
										<li style="width: 193.5px"><span class="lab">9投影仪</span><span >${hotelInfo.info_projector }</span></li>
										<li style="width: 193.5px"><span class="lab">10桌布</span><span >${hotelInfo.info_tablecloth }</span></li>
										<li style="width: 193.5px"><span class="lab">11电费</span><span >${hotelInfo.info_star_level }</span></li>
										<li style="width: 193.5px"><span class="lab">12棋牌娱乐</span><span >${hotelInfo.info_amusement }</span></li>
									</ul>
								</div>
								<div class="shops-transdx-text">
									<div class="shops-transdx-inset">
										111
									</div>
									<span class="drapdown" title="展开" style="display: block;"></span>
								</div>
							</div>
						</div>
                </div>
            </div>
				<div class="shops-grids">
                <div class="shops-grids-hd layout_clear">
                    <h1 class="shops-grids-h1 layout_fl">婚宴菜单</h1>
                    <ul class="shops-grids-hlist layout_fl">
                        <li><a href="javascript:;" class="curl" data-num="1" data-store-type="FGd55809719CK">午餐</a></li>
                        <li><a href="javascript:;" data-num="1" data-store-type="JIP55809729LH" class="">晚餐</a></li>
                    </ul>
                    <a href="http://www.119hqw.com/storeGoods.php?seid=XsT54860328Bd&amp;store_type_id=FGd55809719CK" class="layout_fr">更多商品<i class="page_icon in-shop-arrow"></i></a>
                </div>
                <div class="shops-grids-inset">
                    <ul class="shops-inset-set layout_clear fl_li">
                        <li class="shops-inset-into">综合排序</li>
                        <li><a href="javascript:;">销量<i class="page_icon in-shop-scre-icon0"></i></a></li>
                        <li><a href="javascript:;">收藏<i class="page_icon in-shop-scre-icon0"></i></a></li>
                        <li><a href="javascript:;">新品<i class="page_icon in-shop-scre-icon0"></i></a></li>
                        <li><a href="javascript:;">价格<i class="page_icon in-shop-scre-icon0"></i></a></li>
                    </ul>
                </div>
                <div class="shops-gdx-wrap">
                    <ul class="shops-gdx-list2 layout_clear fl_li" data-region="1">
                        <li> <a href="#">
                            <div>
                                <div class="gdx-img">
                                    <img src="http://www.119hqw.com/img/GoodsIco/PCq55809821RO.jpg" style="width: 100%;" />
                                </div>
                                <div class="gdx-data">
                                    <div class="gdx-name">
                                        111
                                    </div>
                                    <div class="gdx-price">
                                        <span class="price-strong">￥111</span>
                                        <!--<span class='price-text'>原价<span class='price-through'></span></span>-->
                                    </div>
                                    <div class="gdx-label">
                                        <p class="label-line"><span>产品摘要：</span>111</p>
                                        <p class="label-line"><span>销量：</span>111</p>
                                    </div>
                                </div>
                            </div> </a> 
							</li>
                    </ul>
                </div>
            </div>
            <div class="shops-grids">
                <div class="shops-speak layout_clear">
                    <div class="shops-speak-label layout_fl">
                        会员点评
                    </div>
                    <a href="http://www.119hqw.com/storeComment.php?seid=XsT54860328Bd" class="layout_fr">全部点评<i class="page_icon in-shop-arrow" style="top:14px;"></i></a>
                </div>
                <div class="shops-speak-area">
                    <ul class="cmts-wrapper" id="getHTML"></ul>
                    <div class="cmts-more">
                        <a href="http://www.119hqw.com/storeComment.php?seid=XsT54860328Bd">查看更多</a>
                    </div>
                    <div class="cmts-btn" style="height: 33px;">
                        <span></span>
                        <a href="http://www.119hqw.com/storeComment.php?seid=XsT54860328Bd#edit">我要评论</a>
                    </div>
                </div>
            </div>
        </div>
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
<script type="text/javascript">    
    initMap();//创建和初始化地图
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
    }

    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(${hotelInfo.info_coordinatesA},${hotelInfo.info_coordinatesB});//定义一个中心点坐标
        map.centerAndZoom(point,12);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }

    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }

    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
    var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
    map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
    var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
    map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
    var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
    map.addControl(ctrl_sca);
    }


</script>
</body>
</html>