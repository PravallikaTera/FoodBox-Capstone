
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {

%>
<center>
    <p align="center" style="font-size:45px">Food Box</p>
    Session expired.
    <a href="index.jsp" style="color:#616161;padding-top:23px">Sign in here</a>
</center>
<%} else {

%>
<html>
    <head><title>FoodBox</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
              crossorigin="anonymous">
        <script>
            var b = 0;
            function update_value(chk_bx) {
                if (chk_bx.checked)
                {
                    var a = "checked";
                    b += 1;
                } else {
                    var a = "not checked";
                    if (b > 0) {
                        b -= 1;
                    } else if (b == 0) {
                        b = 0;
                    }
                }
                if (b == 0)
                {
                    document.getElementById('wish').innerHTML = '<img src="https://media.istockphoto.com/vectors/shopping-cart-icon-isolated-on-white-background-vector-id1206806317?k=20&m=1206806317&s=612x612&w=0&h=waK8qOHV2Fgz2ntEWHWBQtXpNDAQ_wdhd4tkTUz6tfE=" height=40 width=40>&nbsp&nbsp0';

                } else {
                    document.getElementById('wish').innerHTML = '<img src="https://media.istockphoto.com/vectors/shopping-cart-icon-isolated-on-white-background-vector-id1206806317?k=20&m=1206806317&s=612x612&w=0&h=waK8qOHV2Fgz2ntEWHWBQtXpNDAQ_wdhd4tkTUz6tfE=" height=40 width=40>&nbsp&nbsp' + b + '';
                }
            }



        </script>
        
    </head>
   
    <body>
      
        <style>
         
        
            body,div,ul,li,p{
                font-family:arial;

            }
            #header{
                height:130px;
                 
            }
            #header .logo a{
                padding-left:350px;
                text-decoration:none;
                font-size:40px;
            }
            #header .logo {
                background-color:tomato;
            }
            /** Navigation **/
            #navigation {
                display: inline-block;
                list-style: none;
                line-height: 50px;
                margin: 0;
                padding-left: 20;
            }
            #navigation ul {
                display: inline-block;
                list-style: none;
                margin: 0;
                padding: 0;
            }
            #navigation li {
                float: left;
                width: 180px;
                text-align: right;
            }
            #navigation li a {
                color: #616161;
                font-size: 20px;
                line-height: 10px;
                text-decoration: none;
            }
            #navigation li a:hover {
                font-size: 20px;
                color: #212121;

            }
            #navigation li.active a {
                color: black;
                padding:12px;
                background-color:transparent;
                font-size:20px;
                border: 2px solid black;
                border-radius:10px;
            }
            #wish{
                padding:10px;
                font-size:30px;
            }
            input[type="checkbox"], input[type="radio"] {
                width: 30px;
                height: 30px;
                border-width: 0;
                transition: all .3s linear;
            }
         tr, td{
               padding:30px;
               margin:40px;
               
            }
        </style>
       
        <div id="header">
            
        
            <div>
                <div class="logo">
                    <a href="index.html">FoodBox</a>
                    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                    <span id="wish"><img src="https://media.istockphoto.com/vectors/shopping-cart-icon-isolated-on-white-background-vector-id1206806317?k=20&m=1206806317&s=612x612&w=0&h=waK8qOHV2Fgz2ntEWHWBQtXpNDAQ_wdhd4tkTUz6tfE=" height=40 width=40> 0</span>
           
                </div><br>
                <div id="span">
                    <ul id="navigation">
                        <li class="active">
                            <a href="#">Welcome</a>
                        </li>
                        <li>
                            <a href="#">Locations</a>
                        </li>
                        <li>
                            <a href="#">Our chefs</a>
                        </li>
                        <li>
                            <a href="#">About us</a>
                        </li>
                        <li>
                            <a href="logout.jsp">Log out <i>(<%out.print(session.getAttribute("userid")); %>)</i></a>	
                        </li>
                    </ul>
                </div>
            </div>
        </div>

      
        <form method="post" action="order.jsp">
             <table class="w3-table" id="myUL" style="background-color:#f5f5f5" > 

                <tr>
                    <td><img src= "https://media.istockphoto.com/photos/tasty-pepperoni-pizza-and-cooking-ingredients-tomatoes-basil-on-black-picture-id1083487948?k=20&m=1083487948&s=612x612&w=0&h=ROZ5t1K4Kjt5FQteVxTyzv_iqFcX8aqpl7YuA1Slm7w=" class="rounded" style="width:100%" height=250 width=250></td>
                    <td><img src="https://d332juqdd9b8hn.cloudfront.net/wp-content/uploads/2019/04/productspotlight-pizzacone.jpg"class="rounded" style="width:100%" height=250 width=250></td>
                    <td><img src="https://i.imgur.com/0C1nacH.png" class="rounded"style="width:100%" height=250 width=250></td>
                </tr>

                <tr>
                    <td><input class="mv1" type="checkbox" name="chk1" value="1" onchange="update_value(this);"></td>
                   
                    <td><input class="mv2" type="checkbox" name="chk1" value="2" onchange="update_value(this);"></td>
                    <td><input class="mv3" type="checkbox" name="chk1" value="3" onchange="update_value(this);"></td>
                </tr>
                <tr><td align="center">bigmess pizza RS.200</td><td align="center">cone pizza RS.270</td><td align="center">mac pizza RS. 350</td></tr>

                <tr>
                    <td><img src="https://www.indianhealthyrecipes.com/wp-content/uploads/2018/07/punugulu-recipe.jpg"  class="rounded-circle"style="width:100%" height=250 width=250></td>
                    <td><img src="https://s3.amazonaws.com/cookooree-production-files/recipe_photos/photos/2671/wide_uncropped.jpeg?1588948855" class="rounded"style="width:100%" height=250 width=250></td>
                     <td><img src="https://sabithavantalu.files.wordpress.com/2013/11/img_4947.jpg" class="rounded-circle"style="width:100%" height=250 width=250></td>
                </tr>


                <tr>
                    <td><input class="mv4" type="checkbox" name="chk1" value="4" onchange="update_value(this);"></td>
                    <td><input class="mv5" type="checkbox" name="chk1" value="5" onchange="update_value(this);"></td>
                    <td><input class="mv6" type="checkbox" name="chk1" value="6" onchange="update_value(this);"></td>
                </tr>
                <tr><td align="center"> plain punuguluRS. 50</td><td align="center">guntha punugulu RS. 30</td><td align="center">karam punugulu RS. 70</td></tr>

                <tr>
                   <td><img src="https://c8.alamy.com/comp/EWA79G/gourmet-indian-naan-bread-mumbai-india-EWA79G.jpg"class="rounded" style="width:100%" height=250 width=250></td>
                    <td><img src="https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/63/2019/09/Roti-1-1842x1212.jpg"class="rounded" style="width:100%" height=250 width=250></td>
                    <td><img src="https://lh4.ggpht.com/-br4XlnfcwRk/VK5yMKDlSuI/AAAAAAAAj9s/6dR0qKpfgL4/Chapati_thumb%25255B2%25255D.jpg?imgmax=800"class="rounded" style="width:100%" height=250 width=250></td>
                </tr>


                <tr>
                    <td><input class="mv7" type="checkbox" name="chk1" value="7" onchange="update_value(this);"></td>
                    <td><input class="mv8" type="checkbox" name="chk1" value="8" onchange="update_value(this);"></td>
                    <td><input class="mv9" type="checkbox" name="chk1" value="9" onchange="update_value(this);"></td>
                </tr>
                <tr><td align="center">butternon plain  RS. 60</td><td align="center">roti  plain RS. 50</td><td align="center">chapathi plain RS.80</td></tr>
               <tr>
                    <td><img src="https://www.indianhealthyrecipes.com/wp-content/uploads/2019/02/chicken-biryani-recipe.jpg" class="rounded-circle" style="width:100%" height=250 width=250></td>
                    <td><img src="https://www.indianhealthyrecipes.com/wp-content/uploads/2019/04/veg-biryani-recipe.jpg" class="rounded-circle" style="width:100%" height=250 width=250></td>
                    <td><img src="https://www.indianhealthyrecipes.com/wp-content/uploads/2019/02/chicken-biryani-recipe.jpg" class="rounded-circle" style="width:100%" height=250 width=250></td>
                   
                </tr>

               <tr>
                    <td><input class="mv7" type="checkbox" name="chk1" value="7" onchange="update_value(this);"></td>
                    <td><input class="mv8" type="checkbox" name="chk1" value="8" onchange="update_value(this);"></td>
                    <td><input class="mv9" type="checkbox" name="chk1" value="9" onchange="update_value(this);"></td>
                </tr>
                 <tr><td align="center">chicken biryani RS. 180</td><td align="center">veg biryani RS. 100</td><td align="center">dum biryani  RS.120</td></tr>
                
             <tr>
                  <td><img src="data:image/jpeg;base64,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"class="rounded" style="width:100%" height=250 width=250></td>
                  <td><img src="https://www.indianhealthyrecipes.com/wp-content/uploads/2018/10/mushroom-masala-mushroom-gravy-500x500.jpg"class="rounded" style="width:100%" height=250 width=250></td>
                  <td><img src="https://www.archanaskitchen.com/images/archanaskitchen/1-Author/nithya.anantham/Kaju_Butter_Masala.jpg"class="rounded" style="width:100%" height=250 width=250></td> 
            </tr>

                <tr>
                    <td><input class="mv7" type="checkbox" name="chk1" value="7" onchange="update_value(this);"></td>
                    <td><input class="mv8" type="checkbox" name="chk1" value="8" onchange="update_value(this);"></td>
                    <td><input class="mv9" type="checkbox" name="chk1" value="9" onchange="update_value(this);"></td>
                </tr>
               <tr><td align="center">panner curry RS. 260</td><td align="center">mushroom curry RS. 250</td><td align="center">kaju curry RS.200</td></tr>
               
               </table>
               
           
            <br>
            <div id="order"><input type="submit" style="font-size:45px;" value="Add to cart" class="btn btn-success" /></div>

       
      
        
        
        <%
            }
        %>
    </body>
</html>
