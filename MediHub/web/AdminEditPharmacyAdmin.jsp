<%-- 
    Document   : AdminEditPharmacy
    Created on : Mar 24, 2021, 11:08:35 PM
    Author     : Ifra
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.medihub.pharmacy.*"%>
<%@page import="com.medihub.location.*"%>

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
          <link rel="stylesheet" type="text/css" href="./public/css/admin_new_css.css" media="screen" />
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     </head>

     <body>

          <% 
               String username="";
               username= session.getAttribute("username").toString();
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
                                   <p>Edit pharmacist</p>
                              </div>
                         </div>
                         <hr>
                        <%
                            if(request.getAttribute("profile")!=null){
                                Pharmacist row = (Pharmacist)request.getAttribute("profile");
                                
                                
                        %>

                         <!-- change the main cards css fragments to change number of cards Available -->
                         <form class="" action="pharmacyadminupdateadmin" method="POST" id="updateForm">

                         <div class="main_cards">
                              <div class="card">
                                  <i class="fa fa-user-circle fa-2x text-lightblue"></i>
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">First Name</p>
                                        <input class="data" type="text" name="first_name" id="firstname" placeholder="<%= row.firstName%>" value="<%= row.firstName%>">
                                        <div class="alert-danger" id="firstNameError">
                                            * First name can't be empty and must contain only letters
                                        </div>
                                   </div>
                              </div>

                              <div class="card">
                                  <i class="fa fa-user-circle fa-2x text-lightblue"></i>
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Last Name</p>
                                        <input class="data" type="text" name="last_name" id="lastname" placeholder="<%= row.lastName%>" value="<%= row.lastName%>">
                                        <div class="alert-danger" id="lastNameError">
                                            * Last name can't be empty and must contain only letters
                                        </div>
                                   </div>
                              </div>

                              <div class="card">
                                   <i class="fa fa-user-circle fa-2x text-lightblue"></i>
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Display Name</p>
                                        <input class="data" type="text" name="user_display_name" id="displayName" placeholder="<%= row.displayName%>" value="<%= row.displayName%>">
                                        <div class="alert-danger" id="displayNameError">
                                            * Display name can't be empty and must contain only alphanumeric
                                        </div>
                                   </div>
                              </div>
                                        
                              <div class="card">
                                  <i class="fa fa-user-circle fa-2x text-lightblue"></i>
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Email</p>
                                        <input class="data" type="text" name="pharmacyadmin_email" id="email" placeholder="<%= row.email%>" value="<%= row.email%>" readonly>
                                        <div class="alert-danger" id="EmailError">
                                            * Email can't be empty and must contain only letters
                                        </div>
                                   </div>
                              </div>         

                              <div class="card">
                                  <i class="fa fa-user-circle fa-2x text-lightblue"></i>
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">NIC</p>
                                        <input class="data" type="text" name="nic_no" id="nic" placeholder="<%= row.nic%>" value="<%= row.nic%>" readonly>
                                        <div class="alert-danger" id="nicError">
                                             * National Identity Card Number can't be empty
                                        </div>
                                  </div>
                              </div>
                              <div class="card">
                                  <i class="fa fa-user-circle fa-2x text-lightblue"></i>
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Data Of Birth</p>
                                        <input class="input" type="date" name="dob" id="dob" placeholder="<%= row.dob%>" value="<%= row.dob%>" readonly>
                                        <div class="alert-danger" id="dobError">
                                             * Date Of Birth can't be empty
                                        </div>
                                  </div>
                              </div>

                              <div class="card">
                                  <i class="fa fa-user-circle fa-2x text-lightblue"></i>
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Gender</p>
                                        <select class="input option" name="gender" id="gender" value="<%= row.gender%>" readonly>
                                          <option disabled="disabled" selected="selected">--Choose Option--</option>
                                          <option value="M">Male</option>
                                          <option value="F">Female</option>
                                          <option value="N">Not preferred to say</option>
                                        </select>
                                        <div class="alert-danger" id="displayNameError">
                                            * Gender can't be empty and must contain only letters
                                        </div>
                                   </div>
                              </div>
                             <div class="card">
                                  <i class="fa fa-user-circle fa-2x text-lightblue"></i>
                                   <div class="card_inner_profile">
                                        <p class="text-primary-p">Mobile Number</p>
                                        <input class="input" type="text" name="mobile_no" id="mobilenumber" placeholder="<%= row.mobileNumber%>" value="<%= row.mobileNumber%>" >
                                        <div class="alert-danger" id="mobileNumberError">
                                             * Mobile number can't be empty
                                        </div>
                                  </div>
                              </div>
                              
                              <div class="buttons">
                                <button class="button" type="reset" id="clear"><b>Reset</b></button>
                                <button class="button-success" type="submit"><b>Update</b></button>
                                
                              </div>

                         </div>
                         </form>
                         
                        <% } %>
                        
                    </div>
                        
               </main>

                <!--######################-->
                <!--sidebar starting-->
                <!--######################-->
               
                <jsp:include page="./public/includes/adminSidebar.jsp"/>
                
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
          
          
          <script>
        
            $("#firstNameError").hide();
            $("#lastNameError").hide();
            $("#displayNameError").hide();
            $("#addressError").hide();
            $("#cityError").hide();
            $("#districtError").hide();
            $("#numberError").hide();
            $("#landNumberError").hide();

            $("#updateForm").on('submit',function(e){
//                event.preventDefault();
                //to always refresh when submitting (hide and show only relevant)
                $("#firstNameError").hide();
                $("#lastNameError").hide();
                $("#displayNameError").hide();
                $("#addressError").hide();
                $("#cityError").hide();
                $("#districtError").hide();
                $("#numberError").hide();
                $("#landNumberError").hide();

                var x=0;
                   if(($("#firstname").val()=="")||($("#firstname").val().match(/^[A-Za-z]*$/)== null)){
                    $("#firstNameError").show();
                    x=1;

                }
                   if(($("#lastname").val()=="")||($("#lastname").val().match(/^[A-Za-z]*$/)== null)){
                    $("#lastNameError").show();
                    x=1;

                }
                if(($("#displayName").val()=="")||($("#displayName").val().match(/^[a-zA-Z0-9_]*$/)== null)){
                    $("#displayNameError").show();
                    x=1;

                }
                  if($("#address1").val()==""){
                    $("#addressError").show();
                    x=1;
                }
                if($("#city").val()==""){
                    $("#cityError").show();
                    x=1;
                }
                if($("#district").val()==""){
                    $("#districtError").show();
                    x=1;
                }
                if(($("#mobile_number").val()=="")||($("#mobile_number").val().match(/^[0-9]{10}$/)==null)){
//                if(($("#mobile_number").val()=="")||($("#mobile_number").val().match(/^[0-9]{10}$/)==null)||(($("#land_number").val().match(/^[0-9]{10}$/)==null) && ($("#land_number").val()==""))){
                  $("#numberError").show();
                    x=1;
                }
                if(($("#land_number").val().match(/^[0-9]{10}$/)==null) && $("#land_number").val()!=""){
//                if(($("#mobile_number").val()=="")||($("#mobile_number").val().match(/^[0-9]{10}$/)==null)||(($("#land_number").val().match(/^[0-9]{10}$/)==null) && ($("#land_number").val()==""))){
                  $("#landNumberError").show();
                    x=1;
                }

                if(x==1){
                    return false;
                }
                else if(x==0){
                    return true;
                }
            })



            //    onchange district
        $('#district').change(function(){
            var districtId=$(this).find(':selected').val();

            $.ajax({
                url: "getcityasstring",
                type: "get", //send it through get method
                data: { 
                  stage: "district", 
                  district: districtId
                },
                success: function(response) {
                  //populate city data
    //              alert(response);
                  $('#city').html("<option>Select City</option>"+response);
                },
                error: function(xhr) {
                    alert("CityByDistrict Error");
                }
              });

        });
        
    </script>
    
  <!--close tag-->
          
     </body>
</html>

