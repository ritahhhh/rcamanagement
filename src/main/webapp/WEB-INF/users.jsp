<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Welcome to RCA Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-screen min-h-screen flex">
<%@ include file="sidebar.jsp" %>
<div class="w-9/12">
    <span class="font-bold text-2xl">All Users</span>
    <c:if test="${authenticatedUser !=null}">
        <div class="options">
            <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-slate-950 rounded-lg px-4 py-1"
               href="register?page=createuser">
                <button>Create New user</button>
            </a>
        </div>
        <div class="search">
            <form action="all-users" method="get">
                <input class="bg-gray-200 w-64 my-4 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                       type="text"
                       name="id"
                       id="id"
                       placeholder="Search by ID here"
                />
            </form>
        </div>
        <hr/>
        <form action="all-users?page=statusapproval" method="post">

            <table>
                <thead>
                <tr class="bg-blue-700">
                    <td class="px-3 py-1 text-white">ID</td>
                    <td class="px-3 py-1 text-white">Name</td>
                    <td class="px-3 py-1 text-white">Email</td>
                    <td class="px-3 py-1 text-white">Username</td>
                    <td class="px-3 py-1 text-white">Role</td>
                    <td class="px-3 py-1 text-white">Check User</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="usr" varStatus="usrstatus">
                    <tr>
                        <td class="px-3 py-1 text-black">${usr.id}</td>
                        <td class="px-3 py-1 text-black">${usr.fullName}</td>
                        <td class="px-3 py-1 text-black">${usr.email}</td>
                        <td class="px-3 py-1 text-black">${usr.username}</td>
                        <td class="px-3 py-1 text-black">${usr.userRole.getRoleDescription()}</td>
                        <td class="px-3 py-1 text-black"><input type="checkbox" name="usrIds"
                                                                value="${usr.id}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </form>
    </c:if>

</div>
</body>