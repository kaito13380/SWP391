<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>Order Management</title>
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
        <link rel="stylesheet" href="./product_list.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="sidebar">
            <div class="logo-details">
                <a href="ShowHomeGeneralController" class="logo_name">E-butlter</a>
            </div>
            <ul class="nav-links">
                <li>
                    <a href="home_supp.jsp" >
                        <i class='bx bx-grid-alt' ></i>
                        <span class="links_name">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="ShowServiceSuppController">
                        <i class='bx bx-box' ></i>
                        <span class="links_name">Service Management</span>
                    </a>
                </li>
                <li>
                    <a href="ShowRequestListForSuppController">
                        <i class='bx bx-list-ul' ></i>
                        <span class="links_name">Request Management</span>
                    </a>
                </li>
                <li>
                    <a href="create_req_supp.jsp">
                        <i class='bx bx-list-ul' ></i>
                        <span class="links_name">Create New Request</span>
                    </a>
                </li>
                <li>
                    <a href="ShowOrderListSuppController" class="active">
                        <i class='bx bx-coin-stack' ></i>
                        <span class="links_name">Order History</span>
                    </a>
                </li>
                <li>
                    <a href="ManageOrderSuppController">
                        <i class='bx bx-book-alt' ></i>
                        <span class="links_name">Manage Order</span>
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
                    <img src="${sessionScope.account.image}" alt="">
                    <span class="admin_name">Welcome Supplier ${sessionScope.account.name}</span>

                </div>
            </nav>

            <div class="home-content">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th class="text-center" scope="col">ID</th>
                                <th scope="col">user</th>
                                <th scope="col">info</th>
                                <th scope="col">price</th>
                                <th scope="col">status</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.ORDERLIST}" var="dto" varStatus="counter">
                                <tr class="inner-box">
                                    <th scope="row">
                                        <div class="event-date">
                                            <span>${counter.count}</span>

                                        </div>
                                    </th>
                                    <td>
                                        <span>${dto.accName}</span>
                                    </td>
                                    <td>
                                        <div class="event-wrap">
                                            <div class="meta">
                                                <div class="organizers">
                                                    <a href="#">Address: ${dto.orderAddress}</a>
                                                </div>
                                                <div class="categories">
                                                    <a href="#">Email: ${dto.orderEmail}</a>
                                                </div>
                                                <div class="time">
                                                    <span>Buy Date: ${dto.orderTime}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <span>${dto.price}$</span>
                                    </td>
                                    <td>
                                        <div class="d-flex  "><button class="btn btn-danger btn-sm" type="button">${dto.status}</button>
                                    </td>
                                </tr>  
                            </c:forEach>
                        </tbody>
                    </table>

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
