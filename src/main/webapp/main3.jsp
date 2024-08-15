<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Planner</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .planner {
            width: 300px;
            margin: 20px auto;
            padding: 10px;
            border: 2px solid #000;
            border-radius: 10px;
        }
        .header {
            text-align: center;
            font-size: 24px;
            margin-bottom: 10px;
        }
        .date-box {
            text-align: center;
            font-size: 20px;
            border: 1px solid #000;
            border-radius: 5px;
            padding: 5px;
            margin-bottom: 20px;
        }
        .task-list {
            list-style: none;
            padding: 0;
        }
        .task-item {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        .checkbox {
            width: 20px;
            height: 20px;
            border: 1px solid #000;
            margin-right: 10px;
            display: inline-block;
        }
        .checkbox.checked {
            background-color: #000;
        }
        .task-time {
            width: 80px;
            font-size: 16px;
            margin-right: 10px;
        }
        .task-desc {
            font-size: 16px;
            flex-grow: 1;
        }
    </style>
</head>
<body>
    <div class="planner">
        <div class="header">Planner!</div>
        <div class="date-box">08/15/2024</div>
        <ul class="task-list">
            <li class="task-item">
                <div class="checkbox checked"></div>
                <div class="task-time">AM 08:00</div>
                <div class="task-desc">메모리조</div>
            </li>
            <li class="task-item">
                <div class="checkbox checked"></div>
                <div class="task-time">AM 11:00</div>
                <div class="task-desc">메모리조</div>
            </li>
            <li class="task-item">
                <div class="checkbox"></div>
                <div class="task-time"></div>
                <div class="task-desc"></div>
            </li>
            <li class="task-item">
                <div class="checkbox"></div>
                <div class="task-time"></div>
                <div class="task-desc"></div>
            </li>
            <li class="task-item">
                <div class="checkbox"></div>
                <div class="task-time"></div>
                <div class="task-desc"></div>
            </li>
        </ul>
    </div>
</body>
</html>
