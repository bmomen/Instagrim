<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
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
            <article>
                <h1>Photo Gallery</h1>
                <%

                    String profileTitle = (String) session.getAttribute("profiletitle");
                    String profileData = (String) session.getAttribute("profiledata");
                %>
                <h1><%=profileTitle%></h1> 
                <p><%=profileData%></p> 
                <%
                    java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
                    if (lsPics == null) {
                %>
                <p>No Pictures found</p>
                <%
                } else {
                    Iterator<Pic> iterator;
                    iterator = lsPics.iterator();
                    while (iterator.hasNext()) {
                        Pic p = (Pic) iterator.next();

                %>
                <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a><br/><%

                        }
                    }
                    %>

            </article>
                    
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
