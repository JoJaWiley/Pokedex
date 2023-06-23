<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pokedex Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    </head>
    <body style="background-color: gold;">
        <div class="d-flex justify-content-center position-relative">
            <img src="pokedex1.jpg" alt="pokedex background">
            <div class="card text-center position-absolute" style="color: cyan; background-color: black; width: 20rem; transform: translate(0%, +40%); z-index: 1;">
                <h1>Search for Pokemon by Name:</h1>
                <form action="result.jsp">
                    <input type="text" name="name"><br><br>
                    <input type="submit" value="submit" class="btn btn-warning">
                </form>
                <a href="enter.jsp" class="btn btn-warning">Enter a new Pokemon</a>
            </div>     
        </div>
    </body>
</html>
