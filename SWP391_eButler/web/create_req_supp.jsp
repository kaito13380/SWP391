<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Create New Service or Product</title>
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
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">E-butlter</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="home_supp.jsp" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="product_list_supp.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name">Product And Service List</span>
          </a>
        </li>
        <li>
          <a href="req_list_supp.jsp">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Req List</span>
          </a>
        </li>
        <li>
          <a href="create_req_supp.jsp">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Create New Req</span>
          </a>
        </li>
        <li>
          <a href="order_list_supp.jsp">
            <i class='bx bx-coin-stack' ></i>
            <span class="links_name">Oder List</span>
          </a>
        </li>
        <li>
          <a href="manage order_supp.jsp">
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
    <div class="search-box">
      <input type="text" placeholder="Search...">
      <i class='bx bx-search' ></i>
    </div>
    <div class="profile-details">
      <img src="images/profile.jpg" alt="">
      <span class="admin_name">user ?</span>
      
    </div>
  </nav>

  <div class="home-content">
    <div class="container rounded bg-white mt-5 mb-5">
      <div class="row">
     
          <div class="col-md-8 border m-auto border-secondary rounded">
              <div class="p-3 py-12 ">
                  <div class="d-flex justify-content-between align-items-center mb-3">
                  </div>
               
                  <div class="row mt-3">
                      <div class="col-md-12"><label class="labels">Service Name </label><input type="text" class="form-control" placeholder="Service Name"></div>

                      <div class="col-md-12"><label class="labels">Time Work</label><input type="text" class="form-control" placeholder="Time Work"></div>
                      <div class="col-md-12"><label class="labels">Quantity</label><input type="text" class="form-control" placeholder="Quantity" ></div>
                      <div class="col-md-12"><label class="labels">Price</label><input type="text" class="form-control" placeholder="Price" ></div>
                      <div class="col-md-12"><label class="labels">Release Date</label><input type="text" class="form-control" placeholder="Release Date" ></div>
                      <form class="col-md-12" action="/">
                        <label  for="myfile">Select a file:</label>
                        <input type="file" id="myfile" name="myfile"><br><br>
                      </form>
                      <form action="/action_page.php">
                        <label for="cars">Choose a category:</label>
                        <select name="category" id="category">
                          <option value="volvo">Gas</option>
                          <option value="saab">Electric</option>
                          <option value="opel">Rice</option>
                          <option value="audi">Water</option>
                          <option value="audi">Electric Device</option>
                          <option value="audi">Market</option>
                        </select>
                      </form>
                  </div>
                  <div class="form-group">
                     <label for="exampleFormControlTextarea1">Description</label>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                   </div>
            
                  <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="button">Send Request</button></div>
              </div>
          </div>
         
        
      </div>
  </div>
  </div>
  </div>
</div>


  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>
