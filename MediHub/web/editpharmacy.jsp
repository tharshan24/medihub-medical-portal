<!doctype html>
<html>
<head>
  <meta charset=utf-8>
  <title>MediHub</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="./public/css/editProfile.css" media="screen"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

</head>
<body>

  <div class="navbar" id="navbar">
      <ul>
        <li><button class="styled" type="button"> LOGOUT </button></li>
        <li><a href="#" id="end">About</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="#">Emergency Services</a></li>
        <li><a href="#">Home</a></li>
        <li id="logo"><img src="./public/images/onlylogo.png" width="15.5%"></li>
      </ul>
  </div>

 <div class="contentContainer">
  <div class="profile">
    <img src="./public/images/p3.jpg" id="profile">
    <h2 style="text-align:center; margin-bottom:25px;">Jane Doe</h2>
    <button class="button" id="profilePic"><b>Change Profile Picture</b></button>
  </div>

  <div class="information">
    <h3 style="text-align:center;font-size: 35px;margin-bottom:40px;"> Profile information</h3>

    <div class="record">
      <div class="label">First Name </div>
      <input class="data" type="text" name="first_name" id="firstname" placeholder="First Name">
    </div>

    <div class="record">
      <div class="label">Last Name </div>
      <input class="data" type="text" name="last_name" id="lastname" placeholder="Last Name">
    </div>

    <div class="record">
      <div class="label">NIC No</div>
      <input class="data" type="text" name="nic_no" id="nic" placeholder="NIC number">
    </div>

    <div class="record">
      <div class="label">Date of Birth</div>
      <input class="data" type="date" name="dob" id="dob" placeholder="DOB">
    </div>

    <div class="record">
      <div class="label">Gender</div>
      <select class="data" name="gender" id="gender"  style=" height: 50px;">
        <option disabled="disabled" selected="selected">--Choose Option--</option>
        <option>Male</option>
        <option>Female</option>
        <option>Not preferred to say</option>
      </select>
    </div>

    <div class="record">
      <div class="label">Email</div>
      <input class="data" type="email" name="email" id="email" placeholder="Email">
    </div>

    <div class="record">
      <div class="label">Address 1</div>
      <input class="data" type="text" name="address_1" id="address1" placeholder="Address 1">
    </div>

    <div class="record">
      <div class="label">Address 2</div>
      <input class="data" type="text" name="address_2" id="address1" placeholder="Address 2">
    </div>

    <div class="record">
      <div class="label">City</div>
      <input class="data" type="text" name="city" id="city" placeholder="City">
    </div>

    <div class="record">
      <div class="label">District</div>
      <input class="data" type="text" name="district" id="district" placeholder="District">
    </div>

    <div class="record">
      <div class="label">Zip Code</div>
      <input class="data" type="text" name="zip_code" id="zip" placeholder="Zip code">
    </div>

    <div class="record">
      <div class="label">Contact Number - Land</div>
      <input class="data" type="text" name="land_line" id="land" placeholder="Land number">
    </div>

    <div class="record">
      <div class="label">Contact Number - Mobile</div>
      <input class="data" type="text" name="mobile" id="mobile" placeholder="Mobile number">
    </div>

    <h3 style="text-align:center;font-size: 35px;margin-top: 40px;margin-bottom:40px;"> Pharmacy information</h3>

    <div class="record">
      <div class="label">Pharmacy Name</div>
      <input class="data" type="text" name="name" id="pharmacy_name" placeholder="Pharmacy Name">
    </div>

    <div class="record">
      <div class="label">Pharmacy License Number</div>
      <input class="data" type="text" name="license_number" id="license_number" placeholder="Pharmacy License Number">
    </div>

    <div class="record">
      <div class="label">Pharmacy License Number Proof</div>
      <input class="data" type="file" name="license_proof_location" id="license_proof_location" placeholder="Pharmacy License Proof">
    </div>

    <div class="record">
      <div class="label">Pharmacy Land Line</div>
      <input class="data" type="text" name="land_number" id="land_number" placeholder="Pharmacy Land Line Number">
    </div>

    <div class="record">
      <div class="label">Pharmacy Fax</div>
      <input class="data" type="text" name="fax" id="fax" placeholder="Pharmacy Fax Number">
    </div>

    <div class="record">
      <div class="label">Pharmacy Email</div>
      <input class="data" type="text" name="email" id="email" placeholder="Pharmacy Email">
    </div>

    <div class="record">
      <div class="label">Pharmacy Address o1</div>
      <input class="data" type="text" name="address_1" id="address_1" placeholder="Pharmacy address 01">
    </div>

    <div class="record">
      <div class="label">Pharmacy Address o2</div>
      <input class="data" type="text" name="address_2" id="address_2" placeholder="Pharmacy address 02">
    </div>

    <div class="record">
      <div class="label">City</div>
      <input class="data" type="text" name="city" id="city" placeholder="Pharmacy City">
    </div>

    <div class="record">
      <div class="label">Longitude</div>
      <input class="data" type="text" name="longitude" id="longitude" placeholder="Longitude">
    </div>

    <div class="record">
      <div class="label">Latiture</div>
      <input class="data" type="text" name="latitude" id="latitude" placeholder="Latitude">
    </div>

    <h3 style="text-align:center;font-size: 35px;margin-top: 40px;margin-bottom:40px;"> Pharmacist information</h3>

    <div class="record">
      <div class="label">Pharmacist ID</div>
      <input class="data" type="text" name="pharmacist_id" id="pharmacist_id" placeholder="Pharmist ID">
    </div>
    <div class="record">
      <div class="label">Pharmacist ID License</div>
      <input class="data" type="file" name="pharmacist_id_proof_location" id="pharmacist_id_proof_location" placeholder="Pharmist ID License">
    </div>

    <div class="buttons">
        <br><br>
        <button class="button" id="id" onclick="window.location.href='pharmacyDashboard.jsp';"><b>Cancel</b></button>
        <button class="button" id="id" onclick="window.location.href='pharmacyDashboard.jsp';"><b>Done</b></button>
     </div>

    </div>
  </div>
  </div>


    <footer style="margin-top: 155%;">
      <center>
      <div class="footerRow">
        <div class="footerColumn">
          <div class="footerText">
            </br>ABOUT </br></br>
            MediHub is a mainly a patient portal providing users eaiser access to all medical services. </br>MediHub also
            provides different doctors, hospitals and pharmacies interact with the patients directly in order to provide
            them with the best experience in accessing medical services</br>
          </div>
        </div>
        <div class="footerColumn"></br>
          <div class="footerText">
            </br></br>
            <a href="#" class="a fa fa-facebook"></a>
            <a href="#" class="a fa fa-twitter"></a>
            <a href="#" class="a fa fa-google"></a>
            <a href="#" class="a fa fa-instagram"></a>
          </div>
        </div>
      </div>
      </br>
      <div class="footerText">
        All rights Reserved @MediHub2020
      </div>
      </br></br>
