<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>여행 플래너</title>
<style>
  body {
    font-family: sans-serif;
    margin: 0;
  }

  #container {
    padding: 20px;
    width: 50%;
    margin: auto;
    background-color: pink;
  }

  h1 {
    text-align: center;
  }

  #searchInput {
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
    margin-bottom: 10px;
  }

  #searchButton {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
  }
  
  .main-component {
  	flex: 1;
  	justify-content: space-between;
  }
</style>
</head>
<body>
  <div id="container">
    <h1>여행 플래너</h1>
    <input type="text" id="searchInput" placeholder="여행지를 입력하세요">
    <button id="searchButton">검색</button>
    <div id="results"></div>
    
    <span class="main-component" >
	    <a href="main.jsp">main으로 이동</a>
	    <a href="main2.jsp">main2로 이동</a>
	    <a href="main3.jsp">main3로 이동</a>
    </span>
  </div>

  <script>
    // JavaScript 코드 (AJAX를 사용하여 서버와 통신)
    document.getElementById('searchButton').addEventListener('click', function() {
      var searchTerm = document.getElementById('searchInput').value;
      alert(searchTerm);
      // AJAX 요청을 통해 서버에 검색어 전송
      // 서버에서 응답을 받아 결과를 #results에 표시
    });
  </script>
</body>
</html>
<%-- response.sendRedirect("main.jsp"); --%> <%-- redirect to main.jsp! --%>