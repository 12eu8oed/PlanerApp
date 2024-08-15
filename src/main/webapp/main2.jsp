<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Planner</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 76vh;
        }

        .container {
            width: 100%;
            max-width: 480px;
            margin: 0 auto;
            background-color: white;
            border-radius: 25px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .header {
            background-color: #007BFF;
            color: white;
            text-align: center;
            /* padding: 15px; */
        }

        .content {
            flex: 1;
            padding: 20px;
            background: aliceblue;
            overflow-y: auto;
            /* max-height: 76vh; */
        }

        .day-section {
            margin-bottom: 20px;
            background-color: #e3f2fd;
            padding: 15px;
            border-radius: 15px;
        }

        .timeline {
            position: relative;
            padding-left: 30px;
            margin-top: 15px;
        }

        .timeline::before {
            content: '';
            position: absolute;
            top: 0;
            left: 15px;
            height: 100%;
            width: 2px;
            background-color: #007BFF;
        }

        .timeline-item {
            position: relative;
            margin-bottom: 20px;
        }

        .timeline-item::before {
            content: '';
            position: absolute;
            left: -32px;
            top: 5px;
            width: 10px;
            height: 10px;
            background-color: #007BFF;
            border-radius: 50%;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        .timeline-item input[type="time"] {
            margin-right: 10px;
        }

        .timeline-item input[type="text"] {
            flex: 1;
            border: none;
            background: none;
            font-size: 16px;
            outline: none;
        }

        .checklist {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .checklist li {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
            padding: 10px;
            background-color: #f9f9f9;
            border-radius: 15px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        .checklist input[type="checkbox"] {
            margin-right: 10px;
            transform: scale(1.5);
        }

        .checklist input[type="text"] {
            flex: 1;
            border: none;
            background: none;
            font-size: 16px;
            outline: none;
        }

        .add-button {
            display: inline-block;
            padding: 10px 15px;
            margin-top: 10px;
            font-size: 16px;
            color: white;
            background-color: #007BFF;
            border-radius: 25px;
            cursor: pointer;
            text-decoration: none;
        }

        .add-button:hover {
            background-color: #0056b3;
        }

        .footer {
            padding: 10px;
            text-align: center;
            font-size: 12px;
            color: #777;
        }
    </style>
</head>
<body>
	<div class="container">
        <!-- Header -->
        <div class="header">
            <h2>Travel Planner</h2>
        </div>

        <!-- Content -->
        <div class="content">
            <!-- 날짜 입력 섹션 -->
            <div class="date-input-section">
                <label for="travelDate">여행 날짜:</label>
                <input type="date" id="travelDate" name="travelDate">
            </div>

            <!-- 계획 섹션 -->
            <div id="planSections">
                <!-- 여기에 날짜별 계획 섹션이 추가될 예정입니다. -->
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            Be Happy! <br> Today's Date: 8/15/2024
        </div>
    </div>

    <script>
        const travelDateInput = document.getElementById('travelDate');
        const planSectionsContainer = document.getElementById('planSections');

        travelDateInput.addEventListener('change', function() {
            const selectedDate = this.value;
            addPlanSection(selectedDate);
        });

        function addPlanSection(date) {
            // 이미 해당 날짜에 대한 계획 섹션이 있는지 확인
            const existingSection = document.getElementById(`planSection-${date}`);
            if (existingSection) {
                return; // 이미 존재하면 함수 종료
            }

            // 새로운 계획 섹션 생성
            const planSection = document.createElement('div');
            planSection.classList.add('day-section');
            planSection.setAttribute('id', `planSection-${date}`);

            planSection.innerHTML = `
                <h3>${date} 계획</h3>
                <div class="timeline">
                    <div class="timeline-item">
                        <input type="datetime-local">
                        <input type="text" placeholder="계획을 입력하세요">
                    </div>
                </div>
                <ul class="checklist">
                    <li>
                        <input type="checkbox">
                        <input type="text" placeholder="체크리스트 항목">
                    </li>
                </ul>
                <a class="add-button" onclick="addPlanItem('${date}')">+ 추가</a>
            `;

            planSectionsContainer.appendChild(planSection);
        }

        function addPlanItem(date) {
            const planSection = document.getElementById(`planSection-${date}`);
            const checklist = planSection.querySelector('.checklist');
            const newItem = document.createElement('li');
            newItem.innerHTML = `
                <input type="checkbox">
                <input type="text" placeholder="체크리스트 항목">
            `;
            checklist.appendChild(newItem);
        }
    </script>
</body>
</html>