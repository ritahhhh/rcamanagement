<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>

<head>
    <title>Register | RCA Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comic+Neue:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
          rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Comic+Neue:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap');

        * {
            font-family: 'Lato', sans-serif;
        }
    </style>
</head>
<body class="min-h-screen w-screen flex items-center justify-center">
<div class="w-1/2 flex min-h-screen"
     style="background-size: cover;background: url('https://images.unsplash.com/photo-1544717305-2782549b5136?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c3R1ZGVudHxlbnwwfHwwfHx8MA%3D%3D&auto=format&w=850&q=60') no-repeat center;">
</div>
<div class="w-1/2 flex flex-col justify-center items-center min-h-screen">
    <h1 class="font-bold text-xl my-4">Welcome to the RCA Management app.</h1>
    <div class="flex items-center my-2 justify-center">
        <span>Already in the family? &nbsp;</span>
        <a href="login?page=login" style="text-underline: none" class="text-blue-700">Continue</a>
    </div>
    <c:if test="${success != null}">
        <p>
            <span style="color: green"> ${success}</span>
        </p>
    </c:if>
    <c:if test="${error != null}">
        <p>
            <span style="color: red"> ${error}</span>
        </p>
    </c:if>

    <form action="?page=createuser" method="post" class="w-3/5 flex flex-col">
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800">
                Names
            </label>
            <input
                    aria-label="enter names"
                    type="text"
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    placeholder="Names"
                    name="userfullname"
            />
        </div>
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800">
                Email
            </label>
            <input
                    aria-label="enter email address"
                    type="email"
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    placeholder="Email"
                    name="email"
            />
        </div>
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800">
                Username
            </label>
            <input
                    aria-label="enter username "
                    type="tel"
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    placeholder="Username"
                    name="username"
            />
        </div>
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800">
                Create Account As
            </label>
            <select
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    name="userRole">
                <option>Select Role</option>
                <c:forEach items="${userRoles}" var="userrole">
                    varStatus="userrolestatus">
                    <option value="${userrole}">
                        <c:out value="${userrole.getRoleDescription()}"/>
                    </option>
                </c:forEach>
            </select>
            </select>
        </div>
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800">
                Password
            </label>
            <div class="relative flex items-center justify-center">
                <input
                        aria-label="enter Password"
                        role="input"
                        class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                        placeholder="Enter password"
                        name="password"
                />
                <div class="absolute right-0 w-4 mt-2 mr-3 cursor-pointer">
                    <svg
                            width={16}
                            height={16}
                            viewBox="0 0 16 16"
                            fill="none"
                            xmlns="http://www.w3.org/2000/svg"
                    >
                        <path
                                d="M7.99978 2C11.5944 2 14.5851 4.58667 15.2124 8C14.5858 11.4133 11.5944 14 7.99978 14C4.40511 14 1.41444 11.4133 0.787109 8C1.41378 4.58667 4.40511 2 7.99978 2ZM7.99978 12.6667C9.35942 12.6664 10.6787 12.2045 11.7417 11.3568C12.8047 10.509 13.5484 9.32552 13.8511 8C13.5473 6.67554 12.8031 5.49334 11.7402 4.64668C10.6773 3.80003 9.35864 3.33902 7.99978 3.33902C6.64091 3.33902 5.32224 3.80003 4.25936 4.64668C3.19648 5.49334 2.45229 6.67554 2.14844 8C2.45117 9.32552 3.19489 10.509 4.25787 11.3568C5.32085 12.2045 6.64013 12.6664 7.99978 12.6667ZM7.99978 11C7.20413 11 6.44106 10.6839 5.87846 10.1213C5.31585 9.55871 4.99978 8.79565 4.99978 8C4.99978 7.20435 5.31585 6.44129 5.87846 5.87868C6.44106 5.31607 7.20413 5 7.99978 5C8.79543 5 9.55849 5.31607 10.1211 5.87868C10.6837 6.44129 10.9998 7.20435 10.9998 8C10.9998 8.79565 10.6837 9.55871 10.1211 10.1213C9.55849 10.6839 8.79543 11 7.99978 11ZM7.99978 9.66667C8.4418 9.66667 8.86573 9.49107 9.17829 9.17851C9.49085 8.86595 9.66644 8.44203 9.66644 8C9.66644 7.55797 9.49085 7.13405 9.17829 6.82149C8.86573 6.50893 8.4418 6.33333 7.99978 6.33333C7.55775 6.33333 7.13383 6.50893 6.82126 6.82149C6.5087 7.13405 6.33311 7.55797 6.33311 8C6.33311 8.44203 6.5087 8.86595 6.82126 9.17851C7.13383 9.49107 7.55775 9.66667 7.99978 9.66667Z"
                                fill="#71717A"
                        />
                    </svg>
                </div>
            </div>
        </div>
        <div class="mt-8">
            <button
                    role="button"
                    aria-label="login "
                    class="focus:ring-2 flex items-center justify-center focus:ring-offset-2 focus:ring-indigo-700 text-sm font-semibold leading-none text-white focus:outline-none bg-slate-950 border rounded hover:bg-blue-800 duration-1000 hover:animate-ring py-4 w-full disabled:bg-slate-600"
                    type="submit"
            >
                Register
            </button>
        </div>
    </form>
</div>
</body>
</html>


