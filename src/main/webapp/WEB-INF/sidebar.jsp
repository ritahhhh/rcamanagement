<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div class="w-3/12 px-3 h-screen justify-between overflow-y-scroll flex flex-col">
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>

    <img alt="Logo" width="200" height="200" src="C:\Users\mn Technology Group\Documents\Web pages\Java Programs\rcamanagement\rcamanagement\src\main\webapp\WEB-INF\images\rcalogo1.jpg"/>

    <h1 class="text-2xl font-bold">RCA Management</h1>
    <div class="flex my-4 flex-col">
        <div class="pl-3 flex flex-col">
            <a class="my-2 text-black w-7/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2"
               href="all-users?page=users&action=list">
                <button class="flex items-center">
                    <box-icon name="group"></box-icon>
                    <span class="ml-2">All Users</span>
                </button>
            </a>
            <a class="my-2 text-black w-7/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2"
               href="all-employees?page=employees&action=list">
                <button class="flex items-center">
                    <box-icon name="group"></box-icon>
                    <span class="ml-2">All Employees</span>
                </button>
            </a>
            <a class="my-2 text-black w-7/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2"
               href="all-students?page=students&action=list">
                <button class="flex items-center">
                    <box-icon name="graduation"></box-icon>
                    <span class="ml-2">All Students</span>
                </button>
            </a>
            <a class="my-2 text-black w-7/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2"
               href="all-parents?page=parents&action=list">
                <button class="flex items-center">
                    <box-icon name="group"></box-icon>
                    <span class="ml-2">All Parents</span>
                </button>
            </a>
            <a class="my-2 text-black w-7/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2"
               href="all-courses?page=courses&action=list">
                <button class="flex items-center">
                    <box-icon name="school"></box-icon>
                    <span class="ml-2">All Courses</span>
                </button>
            </a>
            <a class="my-2 text-black w-7/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2"
               href="all-marks?page=marks&action=list">
                <button class="flex items-center">
                    <box-icon name="spreadsheet"></box-icon>
                    <span class="ml-2">All Marks</span>
                </button>
            </a>
            <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-slate-950 rounded-lg px-4 py-2"
               href="student/txt-report?page=studenttxt">
                <button>Students Reports</button>
            </a>
        </div>
    </div>
    <a class="my-2 text-black w-7/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2"
       href="all-users?page=users&action=list">
        <button class="flex items-center">
            <box-icon name="group"></box-icon>
            <span class="ml-2">All Users</span>
        </button>
    </a>
</div>


