<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<select id="languagesSelect" onchange="selectLanguage()">
    <option value="en" selected>English</option>
    <option value="ru">Русский</option>
</select>
<h2 class="en">Login</h2>
<h2 class="ru">Вход</h2>
<form action="FrontController" method="get">

    <input type="hidden" name="COMMAND" value="FIND_USER"/>
    <input class="en" type="text" name="LogUserLogin" placeholder="UserLogin" autocomplete="off"/>
    <input class="en" type="password" name="LogUserPassword" placeholder="Password" autocomplete="off"/>

    <input class="ru" type="text" name="LogUserLogin" placeholder="Логин" autocomplete="off"/>
    <input class="ru" type="password" name="LogUserPassword" placeholder="Пароль" autocomplete="off"/>

    <button type="submit" value="Sign in" class="en">Sign in</button>
    <button type="submit" value="Sign in" class="ru">Войти</button>
</form>

<h2 class="en">Registration</h2>
<h2 class="ru">Регистрация</h2>
<form action="FrontController" method="post">

    <input type="hidden" name="COMMAND" value="CREATE_NEW_USER"/>
    <input class="en" type="text" name="RegUserLogin" placeholder="Login" autocomplete="off">
    <input class="en" type="password" name="RegPassword" placeholder="Password" autocomplete="off">
    <input class="en" type="password" name="RegCheckPassword" placeholder="Repeat password" autocomplete="off">

    <input class="ru" type="text" name="RegUserLogin" placeholder="Логин" autocomplete="off">
    <input class="ru" type="password" name="RegPassword" placeholder="Пароль" autocomplete="off">
    <input class="ru" type="password" name="RegCheckPassword" placeholder="Повторный пароль" autocomplete="off">

    <button type="submit" value="Sign up" class="en">Sign up</button>
    <button type="submit" value="Sign up" class="ru">Зарегистрироваться</button>
</form>

<script src="Assets/JS/translator.js"></script>
</body>
</html>
