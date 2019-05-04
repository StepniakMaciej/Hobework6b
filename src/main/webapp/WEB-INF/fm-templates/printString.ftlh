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
            color: #4e555b
        }

        #container {
            margin-left: 5%%;
            margin-right: 30%;
            margin-top: 5%;
            width: 100%;
            height: 100%;
            position: center;
        }


    </style>
</head>
<body>

<div id="container">
    <h1 style="text-align: center">Fibonacci sequence value for : ${number} is equals: ${value}</h1>
    <h2 style="text-align: center">The whole string is: </h2>

    <table class="table">

        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">value</th>
        </tr>
        </thead>
        <tbody>
        <#list string as value>
            <tr>
                <th scope="row">${value?index+1}</th>
                <td>${value}</td>
            </tr>
        </#list>
        </tbody>
    </table>

</div>

</body>
</html>