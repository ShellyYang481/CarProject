<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="java.util.*,com.project.bean.NewsBean" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>最新消息 Latest News</title>
            <style>
                li {
                    list-style-type: none;
                }
                button{
                
  
                }
                
       
            </style>
     <link rel="stylesheet" href="CSS/newstemplate.css">
	<script src="jquery-3.6.0.js"></script>
	<script src="js/sortByMonth.js"></script>
        </head>

        <body>
            <header>
                <h2>最新消息查詢 Latest News</h2>
            </header>
            <div id="container">
                <nav>
                    <button id="secondHalfYear" class="2021070120211231">2021年07-12月</button>
                    <button id="firstHalfYear" class="2021010120210630">2021年01-06月</button> 
                </nav>

                <!--         <form action="SearchByKey" method="get">
           關鍵字搜尋:<input type="text" name="keywords">
           <input type="submit" value="搜尋">
           </form> -->

                <c:forEach items="${sessionScope.newses}" var="news">
                    <ol>
                        <li><img src="data:image/png;base64,${news.base64Image}" width="100" height="100" /></li>
                        <li><strong>${news.title}</strong></li>
                        <li>${news.subtitle}<a href="DisplayOneNews?id=${news.id}">...看更多資訊</a></li>
                    </ol>
                    <br>
                    <br>
                </c:forEach>

            </div>

        </body>

        </html>