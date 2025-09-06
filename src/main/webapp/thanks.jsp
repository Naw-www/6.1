<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:import url="include/header.html" />
<head>
    <meta charset="utf-8">
    <title>Thanks for Joining</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css" />
    <style>
        .thank-you-container {
            text-align: center;
            padding: 40px;
        }

        .success-icon {
            font-size: 48px;
            color: #4caf50;
            margin-bottom: 20px;
        }

        .user-info {
            background-color: #f5f5f7;
            border-radius: 8px;
            padding: 20px;
            margin: 20px 0;
            text-align: left;
            max-width: 500px;
            margin-left: auto;
            margin-right: auto;
        }

        .info-row {
            display: flex;
            justify-content: space-between;
            padding: 10px 0;
            border-bottom: 1px solid #e0e0e0;
        }

        .info-row:last-child {
            border-bottom: none;
        }

        .info-label {
            font-weight: 600;
            color: #3d3d3d;
        }

        .info-value {
            color: #1d1d1f;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 24px;
            background-color: #0071e3;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: background-color 0.3s;
        }

        .back-link:hover {
            background-color: #0056b3;
        }
        .footer { 
            text-align: center;
            padding: 20px; 
            font-size: 14px; 
            color: #666; 
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            margin-top: auto; /* Đảm bảo footer luôn ở cuối */
        }
    </style>
</head>
<body>
    <div class="container">
        <div style="text-align:center; margin: 20px;">
            <img src="images/murachlogo.jpg" alt="Murach Logo" width="200" />
        </div>
        <div class="thank-you-container">
            <div class="success-icon">✓</div>
            <h1>Thank You for Joining!</h1>
            <p>You have been successfully added to our email list.</p>

            <c:if test="${not empty user}">
                <div class="user-info">
                    <h2>Your Information:</h2>

                    <div class="info-row">
                        <span class="info-label">Name:</span>
                        <span class="info-value">${user.firstName} ${user.lastName}</span>
                    </div>

                    <div class="info-row">
                        <span class="info-label">Email:</span>
                        <span class="info-value">${user.email}</span>
                    </div>

                    <c:if test="${not empty user.dateOfBirth}">
                        <div class="info-row">
                            <span class="info-label">Date of Birth:</span>
                            <span class="info-value">
                                ${user.dateOfBirthFormatted}
                            </span>
                        </div>
                    </c:if>

                    <div class="info-row">
                        <span class="info-label">How you heard about us:</span>
                        <span class="info-value">${user.howHeardText}</span>
                    </div>

                    <div class="info-row">
                        <span class="info-label">CD Announcements:</span>
                        <span class="info-value">
                            <c:choose>
                                <c:when test="${user.cdAnnouncements}">Yes</c:when>
                                <c:otherwise>No</c:otherwise>
                            </c:choose>
                        </span>
                    </div>

                    <div class="info-row">
                        <span class="info-label">Email Announcements:</span>
                        <span class="info-value">
                            <c:choose>
                                <c:when test="${user.emailAnnouncements}">Yes</c:when>
                                <c:otherwise>No</c:otherwise>
                            </c:choose>
                        </span>
                    </div>

                    <div class="info-row">
                        <span class="info-label">Contact Method:</span>
                        <span class="info-value">${user.contactMethodText}</span>
                    </div>
                </div>
            </c:if>

            <a href="emailList" class="back-link">Return to Sign Up</a>
        </div>
    </div>

    <c:import url="include/footer.jsp" />
</body>
