<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div id="div1"  style="width:50px;high:50px;margin:0 auto;background-color:blue;" onclick="verify()">点击</div>
  <script type="text/javascript">
  var xmlhttp;

  function verify() {//这个方法使用XMLHttpRequest对象来进行Ajax异步交互数据

      //1.使用dom的方式获取文本框的内容

      varuserName = document.getElementById("div1").value;

      //2.创建XMLHTTPRequest对象

      if(window.XMLHttpRequest) {

           xmlhttp = new XMLHttpRequest();

      } else if(window.ActiveXObject) {

           //针对ie6以下版本

           var activexName = [ "MSXML2.XMLHTTP", "Microsoft.XMLHTTP"];

           //两个可以用来创建XMLHTTPRequest对象的控件，进行尝试创建

           for (var i = 0; i < activexName.length; i++) {

               try {

                   xmlhttp = newActiveXObject(activexName[i]);

                   break;

               } catch (e) {

               }

           }

      }

  

      //最后确认xmlhttprequest对象创建成功

      if(!xmlhttp) {

           alert("请更换更新版本的浏览器");

           return;

      } else{

           //2.注册回调函数,只需要函数名不需要加括号

           xmlhttp.onreadystatechange =callback;

           //3.设置连接信息

           xmlhttp.open("post", "test?name=zhang", true);

           //4.发送数据，开始和服务器端进行交互

           xmlhttp.send("sex=man");

      }

  }

  

  //回调函数

  function callback() {

      //判断对象交互完成

      if(xmlhttp.readyState == 4) {

           //判断http交互是否成功

           if (xmlhttp.status == 200) {

               //获取服务器的数据

               //获取纯文本的数据

               var responseText = xmlhttp.responseText;

               document.getElementById("div1").innerHTML= responseText;

           }

      }

  }

  </script>
</body>
</html>