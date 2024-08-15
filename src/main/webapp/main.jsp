<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WENIV</title>
<!-- <link rel="stylesheet" href="styles.css"> -->
<style>
/* Reset some basic styles */
body, h1, h2, h3, p, ul, li, a {
    margin: 0;
    padding: 0;
    font-family: 'Arial', sans-serif;
    list-style: none;
    text-decoration: none;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f8d5aa; /* 배경색 설정 */
}

.mobile-container {
    width: 445px; /* 모바일 기기와 비슷한 너비 */
    height: 668px; /* 모바일 기기와 비슷한 높이 */
    background-color: #e5f4ff;
    border-radius: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.header {
    background-color: #89c9fa;
    padding: 10px;
    text-align: center;
}

.logo {
    font-size: 24px;
    color: white;
}

.menu {
    margin-top: 10px;
}

.menu ul {
    display: flex;
    justify-content: space-around;
}

.menu a {
    font-size: 16px;
    color: white;
    padding: 5px 10px;
}

.content {
    padding: 20px;
    text-align: center;
    flex-grow: 1;
}

.welcome h2 {
    font-size: 22px;
    color: #333;
}

.news h3 {
    font-size: 18px;
    color: #444;
    margin-top: 20px;
}

.news p {
    margin-top: 10px;
    color: #666;
}

.more-info {
    margin-top: 40px;
    color: #999;
}

.more-info p {
    font-size: 16px;
}

.footer {
    background-color: #89c9fa;
    padding: 10px;
    text-align: center;
}

.footer p {
    color: white;
    font-size: 14px;
}

.footer-menu ul {
    margin-top: 10px;
    display: flex;
    justify-content: center;
}

.footer-menu a {
    font-size: 14px;
    color: white;
    margin: 0 10px;
} 
</style>
</head>
<body>
    <div class="mobile-container">
        <header class="header">
            <h1 class="logo">PlanerGo!</h1>
            <nav class="menu">
                <ul>
                    <li><a href="#">앱 소개</a></li>
<!--                     <li><a href="#">새소식</a></li> -->
<!--                     <li><a href="#">서비스</a></li> -->
                    <li><a href="#">커뮤니티</a></li>
                </ul>
            </nav>
        </header>
        <main class="content">
            <section class="welcome">
                <h2>위니브_WENIV</h2>
                <p>안녕하세요! 주식회사 위니브입니다 :)</p>
            </section>
            <section class="news">
                <h3>📰 위니브 새소식 📰</h3>
                <p><strong>&lt;이모티콘으로 치킨값 벌기&gt;</strong> 참여 신청</p>
                <p>신청 기간: ~08.14(수) 14:00까지</p>
            </section>
            <section class="more-info">
                <p>✨ 위니브 더 알아보기 ✨</p>
            </section>
        </main>
        <footer class="footer">
            <p>ⓒ 2024 sh.lee All rights reserved.</p>
            <nav class="footer-menu">
                <ul>
                    <li><a href="#">개인정보처리방침</a></li>
                    <li><a href="#">이용약관</a></li>
                </ul>
            </nav>
        </footer>
    </div>
</body>
</html>
