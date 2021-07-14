<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${news.title}</title>
<style>
    li {
    	list-style-type: none;
                }
</style>
</head>
<body>
     <header>
                <h2>最新消息 Latest News</h2>
            </header>
            <div id="container">
                <nav>
                    <a href="/html/">2021年7-12月</a> |
                    <a href="/css/">2021年1-6月</a> |
                    </nav>                    

                    <ol>
                        <li><img src="data:image/png;base64,${news.base64Image}" width="100" height="100" /></li>
                        <li><strong>${news.title}</strong></li>
                        <li>${news.subtitle}</li>
                        <li>${news.uploadDate}</li>
                        <li>${news.content}</li>
                        <li>${news.remarks}</li>
                    </ol>
                  

            </div>
</body>
</html>