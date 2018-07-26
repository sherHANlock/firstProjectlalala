<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <script>
        function loadXMLDoc()
        {
            var xmlhttp;
            if(window.XMLHttpRequest){
                xmlhttp=new XMLHttpRequest();
            }else{
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
            }

            xmlhttp.onreadystatechange = function(){
                if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("myDiv").innerHTML = xmlhttp.responseText;
                }
            }
            xmlhttp.open("GET","try.txt",true);
            xmlhttp.send();
        }
    </script>
</head>
<body>

<div id="myDiv"><h2>使用 AJAX 修改该文本内容</h2></div>
<button type="button" onclick="loadXMLDoc()">修改内容</button>

</body>
</html>