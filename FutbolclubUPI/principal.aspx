<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="FutbolclubUPI.principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Upi Futbol Club</title>


    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover:not(.active) {
                    background-color: #111;
                }

        .active {
            background-color: #04AA6D;
        }

        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>SISTEMA DE UPI FUTBOL CLUB 
            </strong>
        </div>
        <div>
            <ul>
                <li><a class="active" href="#principal.aspx">INICIO</a></li>
                <li><a href="#Jugador.aspx">JUGADORES</a></li>
                <li><a href="#Entrenador.aspx">ENTRENADORES</a></li>
                <li><a href="#Salir">SALIR</a></li>
            </ul>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
