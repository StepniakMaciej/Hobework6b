<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formularz</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>


    <style>
        body {
            background-color: #7abaff;
            font-family: 'DejaVu Serif', Georgia, "Times New Roman", Times, serif;
            font-size: 25px;
            color: #4e555b;
        }

        #container {
            margin-left: 10%;
            margin-right: 10%;
            margin-top: 5%;
            width: 100%;
            height: 100%;
            position: center;

        }
    </style>
</head>
<body>
<div id="container">
    <form class="setNumber" method="post">

        <h1 style="text-align: left">Fibonacci sequence</h1>
        <h2 style="text-align: left">Calculate n initial words of the Fibonacci sequence</h2>
        <h3 style="text-align: left">*************************************************************</h3>
        <h4 style="text-align: left">Enter the value of n for which the Fibonacci sequence will be calculated</h4>

        <div class="col-sm-auto">
            <input type="number" min="1" placeholder="Value" name="number">
        </div>
        <div class="col-sm-auto">
            <input class="btn btn-info" type="submit" value="Calculate">
        </div>
</div>

</form>
</div>
</body>
</html>