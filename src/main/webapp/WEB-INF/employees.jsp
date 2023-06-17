<%--
  Created by IntelliJ IDEA.
  User: ELOHOME LTD
  Date: 6/14/2023
  Time: 7:24 AM
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Employee Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-screen min-h-screen flex">
<c:import url="sidebar.jsp"></c:import>
<div class="flex w-9/12 flex-col">
    <c:if test="${authenticatedUser !=null}">
        <form action="all-employees?page=statusapproval" class="w-full flex flex-col" method="post" class="form-group">
            <form action="all-employees" class="flex items-center justify-center" method="get">
                <input type="text"
                       class="bg-gray-200 border w-48 rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 pl-3 mt-2"
                       name="id" id="id"/>
                <button
                        role="button"
                        name="userregistrationsearch"
                        aria-label="login "
                        class="focus:ring-2 w-32 flex items-center justify-center focus:ring-offset-2 focus:ring-indigo-700 text-sm font-semibold leading-none text-white focus:outline-none bg-blue-700 border rounded hover:bg-blue-800 duration-1000 hover:animate-ring py-4 disabled:bg-slate-600"
                        type="submit"
                >
                    Search
                </button>
            </form>
            <table class="table table-bordered">
                <thead>
                <tr class="bg-blue-700 text-white">
                    <td class="px-3 py-1 text-white">ID</td>
                    <td class="px-3 py-1 text-white">Name</td>
                    <td class="px-3 py-1 text-white">Email</td>
                    <td class="px-3 py-1 text-white">Role</td>
                    <td class="px-3 py-1 text-white">Check User</td>
                    <td class="px-3 py-1 text-white" colspan="2" rowspan="1">Operation</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="usr" varStatus="usrstatus">
                    <tr>
                        <td class="px-3 py-1 text-black" name="id">${usr.id}</td>
                        <td class="px-3 py-1 text-black" name="fullname">${usr.fullName}</td>
                        <td class="px-3 py-1 text-black" name="email" $>${usr.email}</td>
                        <td class="px-3 py-1 text-black" name="role">${usr.userRole.getRoleDescription()}</td>
                        <td class="px-3 py-1 text-black"><input type="checkbox" name="usrIds"
                                                                value="${usr.id}"/></td>
                        <td class="px-3 py-1 text-black"><a href="editemployee.php?page=editemployee">Edit</a></td>
                        <td class="px-3 py-1 text-black"><a href="deleteuser.php?page=deleteuser">Delete</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </form>
    </c:if>
</div>
</body>
</html>