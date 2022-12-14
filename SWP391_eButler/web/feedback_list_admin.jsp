<%-- 
    Document   : feedback_list_admin
    Created on : Oct 13, 2022, 11:03:56 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>Feedback List </title>
        <link rel="stylesheet" href="style_admin.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- fonts -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <!-- owl stylesheets --> 
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./product_list.css">
    </head>
    <body>
        <div class="sidebar">
            <div class="logo-details">
                <a href="ShowHomeGeneralController" class="logo_name">E-butlter</a>
            </div>
            <ul class="nav-links">
                <li>
                    <a href="ShowHomeAdminController">
                        <i class='bx bx-grid-alt' ></i>
                        <span class="links_name">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="ShowServiceAdminController">
                        <i class='bx bx-box' ></i>
                        <span class="links_name">Service Management</span>
                    </a>
                </li>
                <li>
                    <a href="ShowRequestListController">
                        <i class='bx bx-list-ul' ></i>
                        <span class="links_name">Request Management</span>
                    </a>
                </li>
                <li>
                    <a href="ShowUserListController">
                        <i class='bx bx-user' ></i>
                        <span class="links_name">User Management</span>
                    </a>
                </li>
                <li>
                    <a href="ShowFeedbackListController" class="active">
                        <i class='bx bx-message' ></i>
                        <span class="links_name">Feed Back</span>
                    </a>
                </li>
                <li>
                    <a href="order_list_admin.jsp">
                        <i class='bx bx-coin-stack' ></i>
                        <span class="links_name">Oder Management</span>
                    </a>
                </li>
                <li class="log_out">
                    <a href="LogoutController">
                        <i class='bx bx-log-out'></i>
                        <span class="links_name">Log out</span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- body -->
        <section class="home-section">
            <nav>
                <div class="sidebar-button">
                    <i class='bx bx-menu sidebarBtn'></i>
                    <span class="dashboard">Dashboard</span>
                </div>
<!--                <div class="search-box">
                    <input type="text" placeholder="Search...">
                    <i class='bx bx-search' ></i>
                </div>-->
                <div class="profile-details">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="">
                    <span class="admin_name">Welcome ${sessionScope.USERROLE} ${sessionScope.USERLOGIN}</span>

                </div>
            </nav>

            <div class="home-content">
                <div class="container mt-5 mb-5">
                    <div class="d-flex justify-content-center row">
                        <div class="col-md-10">

                            <c:forEach items="${list}" var="item">
                                <div class="row p-2 bg-white border rounded" id="item">

                                    <div class="col-md-8 mt-1">
                                        <h4 class="card-title"><a href="req.html" title="View Product">Title: ${item.title}</a></h4>
                                        <div class="d-flex flex-row">
                                        </div>
                                        <div class="mt-1 mb-1 spec-1"><span><Title></Title></span><span class="dot"></span><span>Description: ${item.description}</span><span class="dot"></span><span><br></span></div>
                                        <div class="mt-1 mb-1 spec-1"><span></span><span class="dot"></span><span></span><span class="dot"></span><span><br></span></div>
                                    </div>
                                    <div class="align-items-center align-content-center col-md-3 border-left mt-1">
                                        <div class="d-flex flex-row align-items-center">
                                        </div>
                                        <c:if test="${item.status == 0}">
                                            <div class="d-flex flex-column mt-4">
                                                <button class="btn btn-primary btn-sm" type="button" data-bs-toggle="modal" data-bs-target="#confirmDoneModal">Done</button>
                                            </div>
                                            <!-- Modal -->
                                            <div class="modal fade" id="confirmDoneModal" tabindex="-1" aria-labelledby="confirmDoneModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="confirmDoneModalLabel">Complete this feedback?</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            Are you sure about that ?
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-primary" onclick="document.location.href = 'ConfirmFeedbackAdminController?txtID=${item.ID}'">Complete</button>
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${item.status == 1}">
                                            <div class="d-flex flex-column mt-4">Solved</div>
                                        </c:if>
                                    </div>
                                </div>

                            </c:forEach>
                        </div>   
                    </div>
                </div>
            </div>

            <script>
                let sidebar = document.querySelector(".sidebar");
                let sidebarBtn = document.querySelector(".sidebarBtn");
                sidebarBtn.onclick = function () {
                    sidebar.classList.toggle("active");
                    if (sidebar.classList.contains("active")) {
                        sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
                    } else
                        sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
                }
            </script>

    </body>
</html>
