<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.project.bean.NewsBean"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>編輯最新消息</title>
<link rel="stylesheet" href="/carproject/CSS/newstemplate.css"> 
<script src="/carproject/jquery-3.6.0.js"></script>
<script src="/carproject/js/previewImage.js"></script>
</head>
<body>
   <header>
        <h2>編輯最新消息</h2>
    </header>
    <div id="container">
    <form id="form"action="UpdateNews" method="post" enctype="multipart/form-data">
	 	<input type="hidden" name="id" value="${news.id}">
	 
    	<table class="box">
				<tr><td>標題
				<tr><td><input class="myitem" type="text" name="title" value="${news.title}" style="width:500px"></td>
				<tr><td>副標題
				<tr><td><input class="myitem" type="text" name="subtitle" value="${news.subtitle}" style="width:500px"></td>
				<tr><td>上傳日期
				<tr><td><input class="myitem" type="date" name="uploadDate" value="${news.uploadDate}"/></td>
				<tr><td>內文
				<tr><td><textarea class="myitem" name="content" rows="30" cols="70">${news.content}</textarea></td>
				<tr><td>圖片
				<tr><td>
				<div class="image">
				<img class="myitem" src="data:image/png;base64, ${news.base64Image}" width="200" height="200"/><img class="myitem" id="preview_img"  width="200" height="200"/>
				</div>
				<input id="input" type="file" name="image"/></td>
			    <tr><td>備註
			    <tr><td><input class="myitem" name="remarks" value="${news.remarks}" style="width:500px"></td>
				
				
				</table>
				<input class="bnt" type="submit" value="確認修改">
				</form>
			</div>
			
</body>

</html>