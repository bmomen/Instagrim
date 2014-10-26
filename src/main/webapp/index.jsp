<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div id="big_wrapper">
            <header id="top_header">
                <a href="login.jsp"><img src="http://buildabanner.org/banners/5498298075981438.png" border="0" width="1000" height="200" /></a>
            </header>
            <nav id="top_menu">
                <ul>              
                    <li><a class="menu_links" href="/Instagrim">Home</a></li>
                    <li><a class="menu_links" href="/Instagrim/upload.jsp">Upload</a></li>
                    
                        <%

                            LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                            if (lg != null) {
                                String UserName = lg.getUsername();
                                if (lg.getlogedin()) {
                        %>
                    <li><a class="menu_links" href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                    <li><a class="menu_links" href="/Instagrim/logout.jsp">Logout</a></li>
                    <li><a class="menu_links" href="/Instagrim/editprofile.jsp">Edit Profile</a></li>
                    <li><a class="menu_links" href="/Instagrim/search.jsp">Search Profile</a></li>
                        <%}
                        } else {
                        %>
                    <li><a class="menu_links" href="/Instagrim/register.jsp">Register</a></li>
                    <li><a class="menu_links" href="/Instagrim/login.jsp">Login</a></li>
                        <%
                    }%>
                </ul>
            </nav>

            <div id="main_wrapper">
                <section id="main_section">

                    <p>Welcome to Instagrim, the newest social networking hit which allows users to upload and share <br>
                        photos they have taken.<br>
                        Take your time and enjoy the haunting ambiance as you browse your friend's photos from their holiday <br>
                        in Spain with an added black and white filter.<br>
                        2spooky4you? Come and find out!</p>

                    <br>
                    <h2>Submission of the Week - 26/10/2014</h2>
                    <p> Upload real edgy material to have a shot at being picked for Submission of the week on Sunday </p>
                    <a href="login.jsp"><img src="http://i58.tinypic.com/161np4w.jpg" border="0" width="400" height="300" /></a>

                    <br>

                    <p>"This is a photo I took of my sleepy kitten called Sakura. By uploading it to this site
                        I saw a completely different side to her, she went from a soft fluffball to an extremely
                        edgy, sophisticated graduate in Art. I have to say this site has changed my life!" - <br>

                        -Instagrim User: FlowerbombSakura <br>
                        -Name: Babak Momen
                    </p>
                    
                    <br>
                    <br>
                    <h2>Submission of the Week - 19/10/2014</h2>
                    <p> Upload real edgy material to have a shot at being picked for Submission of the week on Sunday </p>
                    <a href="login.jsp"><img src="http://i62.tinypic.com/o8upex.jpg" border="0" width="400" height="300" /></a>

                    <br>

                    <p>"This was originally a rainbow masterpiece of Jake the Dog having his mind actually blown.
                        I now know that his mind was being blown by the filter being applied to himself.
                        It's a sort of tragic story about a dog who slowly loses his sanity." - <br>

                        -Instagrim User: Anonycops <br>
                        -Name: Anonymous
                    </p>


                </section>    
                <aside id="side_section">
                     <h2><u>Sample Images</u></h2><br><br>
                    <a href="login.jsp"><img src="http://i61.tinypic.com/2u9n4m0.jpg" border="0" width="300" height="250" /></a> <br><br><br>
                    <a href="login.jsp"><img src="http://i59.tinypic.com/2nqy52b.jpg" border="0" width="300" height="250" /></a> <br><br><br>
                    <a href="login.jsp"><img src="http://i57.tinypic.com/21nmvk9.jpg" border="0" width="300" height="250" /></a> <br><br><br>
                    <a href="login.jsp"><img src="http://i62.tinypic.com/o8upex.jpg" border="0" width="300" height="250" /></a> <br><br><br>
                    <a href="login.jsp"><img src="http://i61.tinypic.com/28kkqjp.jpg" border="0" width="300" height="400" /></a> <br><br><br>
                </aside>
            </div>    

            <footer id="bot_footer">
                <ul>
                    <li class="footer"><a href="/Instagrim">Home</a></li>
                    <li>&COPY; Andy C</li>
                </ul>
            </footer>


        </div>
    </body>
</html>
