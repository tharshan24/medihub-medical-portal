<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!doctype html>
<html>

     <head>
          <meta charset=utf-8>
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>MediHub</title>
          <link rel="icon" href="./public/images/onlylogo.png" type="image/icon type"> <!--Header icon-->
          <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
          <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@600&display=swap" rel="stylesheet">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link rel="stylesheet" type="text/css" href="./public/css/new_dash_doc.css" media="screen" />
          <link rel="stylesheet" type="text/css" href="./public/css/patient_modal.css" media="screen" />
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     </head>

     <body>

          <% 
               String username="";
               username= session.getAttribute("username").toString();
          %>

          <%
                            if(request.getAttribute("profile")!=null){
                              ArrayList Profile = new ArrayList();
                              ArrayList Profile1 = new ArrayList();
                              Profile= (ArrayList)request.getAttribute("profile");
                              Profile1 = (ArrayList)Profile.get(0);
                                
                        %>
          <div class="container">
              <!--######################-->
                 <!--navbar starting-->
              <!--######################-->
              
              <jsp:include page="./public/includes/navbar.jsp"/>
              
              <!--######################-->
                 <!--navbar ending-->
              <!--######################-->

               <main>
                    <!-- the content tag anything to do with the dashboard -->
                    
                    <!--######################-->
                        <!--container starting-->
                     <!--######################-->
                    <div class="main_container">

                         <div class="main_title">
                             <!--<img src="./public/images/p3.jpg" alt="hello">-->
                              <div class="main_greeting">
                                   <h1>Hello <%=username%></h1>
                                   <p>Profile</p>
                              </div>
                         </div>
                        
                      

                         <!-- change the main cards css fragments to change number of cards Available -->
                         <div class="main_cards">

                              <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">First Name</p>
                                        <p class="text-secondary-p"><%=Profile1.get(1)%></p>
                                   </div>
                              </div>

                              <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Last Name</p>
                                        <p class="text-secondary-p"><%=Profile1.get(2)%></p>
                                   </div>
                              </div>

                              <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Display Name</p>
                                        <p class="text-secondary-p"><%=Profile1.get(3)%></p>
                                   </div>
                              </div>

                              <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Email</p>
                                        <p class="text-secondary-p"><%=Profile1.get(5)%></p>
                                   </div>
                              </div>

                              <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">NIC</p>
                                        <p class="text-secondary-p"><%=Profile1.get(8)%></p>
                                   </div>
                              </div>
                             
                              <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Date of Birth</p>
                                        <p class="text-secondary-p"><%=Profile1.get(9)%></p>
                                   </div>
                              </div>

                              <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Gender</p>
                                        <p class="text-secondary-p"><%if(Profile1.get(10).toString().equalsIgnoreCase("M")){out.print("Male");}else if(Profile1.get(10).toString().equalsIgnoreCase("F")){out.print("Female");}else{out.print("Not Specified");} %></p>
                                   </div>
                              </div>
                             
                             <div class=""></div>

                              <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">District</p>
                                        <p class="text-secondary-p"></p>
                                   </div>
                              </div>

                              <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">City</p>
                                        <p class="text-secondary-p"></p>
                                   </div>
                              </div>

                              <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Address</p>
                                        <p class="text-secondary-p"></p>
                                   </div>
                              </div>
                             
                             <div class=""></div>
                              
                             <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Mobile Number</p>
                                        <p class="text-secondary-p"></p>
                                   </div>
                              </div>
                             
                             
                             <div class="card">
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Land Number</p>
                                        <p class="text-secondary-p"></p>
                                   </div>
                              </div>
                            

                         </div>
                         
                        
                        
                    </div>
                    <% } %>

               </main>

                <!--######################-->
                <!--sidebar starting-->
                <!--######################-->
               
                <jsp:include page="./public/includes/doctorSidebar.jsp"/>
                
                <!--######################-->
                <!--sidebar ending-->
                <!--######################-->
          </div>
            
            <!--######################-->
            <!--footer starting-->
            <!--######################-->                                      
                       
            <jsp:include page="./public/includes/footer.jsp"/>
            
            <!--######################-->
            <!--footer ending-->
            <!--######################-->
            
            
            
          <script src="./public/js/new_script.js"></script>
          
     </body>
</html>