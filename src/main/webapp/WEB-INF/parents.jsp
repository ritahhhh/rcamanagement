<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Parents | RCA Management</title>
</head>
<body class="w-screen min-h-screen flex">
<c:import url="sidebar.jsp"></c:import>
<div class="w-9/12 flex flex-col">

    <c:if test="${authenticatedUser !=null}">

        <form action="all-parents?page=statusapproval" method="post" class="form-group">
            <div class="w-full flex justify-between items-center">

                <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
                   href="new-parent?page=createparent">
                    <button>Create parent</button>
                </a>

                <form action="all-parents?page=students&action=list" method="get">
                    <input class="bg-gray-200 w-64 my-4 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                           type="text"
                           name="id"
                           id="id"
                           placeholder="Search by ID here"
                    />
                    <button
                            role="button"
                            name="parentregistrationsearch"
                            class="focus:ring-2 w-32 flex items-center justify-center focus:ring-offset-2 focus:ring-indigo-700 text-sm font-semibold leading-none text-white focus:outline-none bg-blue-700 border rounded hover:bg-blue-800 duration-1000 hover:animate-ring py-4 disabled:bg-slate-600"
                            type="submit"
                    >Search
                    </button>
                </form>
            </div>

            <table class="">
                <thead class="bg-blue-700 text-white">
                <tr>
                    <td class="px-3 py-1 text-white">Firstname</td>
                    <td class="px-3 py-1 text-white">Lastname</td>
                    <td class="px-3 py-1 text-white">Gender</td>
                    <td class="px-3 py-1 text-white">Email</td>
                    <td class="px-3 py-1 text-white">Phone Number</td>
                    <td class="px-3 py-1 text-white">NID</td>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${parents}" var="prt" varStatus="prtstatus">
                    <tr>
                        <td class="px-3 py-1 text-black">${prt.getFirstName()}</td>
                        <td class="px-3 py-1 text-black">${prt.getLastName()}</td>
                        <td class="px-3 py-1 text-black">${prt.getGender()}</td>
                        <td class="px-3 py-1 text-black">${prt.getEmail()}</td>
                        <td class="px-3 py-1 text-black">${prt.getPhoneNumber()}</td>
                        <td class="px-3 py-1 text-black">${prt.getNid()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </form>
    </c:if>
</div>
