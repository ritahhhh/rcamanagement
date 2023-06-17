<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <title>Welcome to RCA Management</title>
    <script d src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <style>
        .swiper-container {
            width: 100%;
            height: 400px;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js" defer></script>
    <script crossorigin="anonymous" defer>
        var swiper = new Swiper('.swiper-container', {
            loop: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
        });
    </script>
</head>
<body class="w-screen min-h-screen flex">
<jsp:include page="sidebar.jsp"></jsp:include>
<div class="w-9/12 p-6 flex flex-col">
    <div cl></div>
    <span class="font-bold text-2xl">Welcome to RCA Management App</span>
    <img class="rounded-xl"
         src="https://pbs.twimg.com/media/Fv1UltFXsAEroPJ?format=jpg&name=large"
         style="width: 920px; height: 700px"/>
</div>
</body>
