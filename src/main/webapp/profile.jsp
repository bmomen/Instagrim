<%-- 
    Document   : test
    Created on : Sep 29, 2014, 9:16:48 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
    </head>
    <body>
        
        <%
            Pic ps = new Pic();
            LoggedIn lg = new LoggedIn();
            %>
            
            <form method="POST"  action="Profile">
                <ul>
                    <li>User Name <input type="text" name="username"></li>
                    <li>User Name <input type="text" name="profiletitle"></li>
                </ul>
                <br/>
                <input type="submit" value="Profile"> 
            </form>
            
    </body>
</html>
