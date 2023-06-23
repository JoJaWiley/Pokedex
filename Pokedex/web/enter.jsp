<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pokedex Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    </head>
    <body style="background-color: gold;">
        <div class="d-flex justify-content-center position-relative">
                <img src="pokedex1.jpg" alt="pokedex background">
                <div class="card text-center position-absolute" style="color: cyan; background-color: black; width: 20rem; transform: translate(0%, +25%)">
                    <h1 class="text-center">Enter a new Pokemon into the pokedex:</h1>
                    <form method="post" action="entry.jsp">
                        <h6>National Pokedex Number</h6>
                        <input type="text" id="id" name="id">
                        <h6>Name</h6>
                        <input type="text" id="name" name="name">
                        <h6>Type</h6>
                        <input type="text" id="type" name="type"><br><br>

                        <input type="submit" value="submit" class="btn btn-warning">
                    </form>
                    <a href="index.jsp" class="btn btn-warning">Lookup a Pokemon</a>
                </div>
        </div>
    </body>
</html>
