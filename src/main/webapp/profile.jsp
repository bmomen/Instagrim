

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
    </head>
    <body>
        <h1> My Profile </h1>
        <%
            Pic ps = new Pic();
            LoggedIn lg = new LoggedIn();
            String UserName=lg.getUsername();
            String ProfileTitle=lg.getProfileTitle();
            %>
            
            
            <h1><%=UserName%></h1>
            <h1><%=ProfileTitle%></h1>
            <form method="POST"  action="Profile">
                <ul>
                    <li>Confirm User Name: <input type="text" name="profiletitle"></li>
                    <li>Edit Profile Title: <input type="text"  name="username"></li>
                </ul>
                <br/>
                <input type="submit" value="Profile"> 
            </form>
            
    </body>
</html>
