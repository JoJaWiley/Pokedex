<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pokemon Entry Confirmation</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    </head>
    <body style="background-color: gold;">
        <%
          
        //Use a try/catch block to catch any database exceptions
        try { 
            String idEntry = request.getParameter("id");
            String nameEntry = request.getParameter("name");
            String typeEntry = request.getParameter("type");
            //Create a connection to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/pokedex", "root", "admin");

            //Create a new SQL statement using the connection
            Statement stmt = con.createStatement();
            
            //execute the entry of the new Pokemon into the pokedex
            stmt.executeUpdate("insert into pokemon (id, name, type) values ('" + idEntry + "','" + nameEntry + "','" + typeEntry + "')");
            stmt.executeUpdate("insert into pics (picID, pokemonID) values ('" + idEntry + "','" + idEntry + "')");
            //Execute the SQL statement to retrieve a result set of records from the database.
            //This SQL query will retrieve all of the records in the products table
            //ResultSet rs = stmt.executeQuery("SELECT id, name, type from pokemon WHERE name = '" + nameEntry + "';");
            ResultSet rs = stmt.executeQuery("SELECT id, name, type, picRef from pokemon, pics WHERE pokemon.id = pics.pokemonID AND name = '" + nameEntry + "';");
            //while loop to display the results
            while(rs.next()) {
        %>
        
        <div class="d-flex justify-content-center position-relative">
            <img src="pokedex1.jpg" alt="pokedex background">
            <div class="card text-center position-absolute" style="color: cyan; background-color: black; width: 20rem; transform: translate(0%, +20%)">
                <img class="card-img-top" src="<%out.print(rs.getString("picRef"));%>" alt="<%out.print(rs.getString("name"));%>">
                <h3 class="card-title"><%out.print(rs.getString("name"));%></h3>
                <h6>National Pokedex ID: <%out.print(rs.getInt("id"));%></h6>
                <h6>Type: <%out.print(rs.getString("type"));%></h6>
                <a href="index.jsp" class="btn btn-warning">Lookup a Pokemon</a><br>
                <a href="enter.jsp" class="btn btn-warning">Enter a new Pokemon</a>
            </div>
        </div>
            <%
                } //end while loop
                con.close();
        } catch (Exception e) {
        e.printStackTrace();
    }
%>
    </body>
</html>

