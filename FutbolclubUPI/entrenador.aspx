<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entrenador.aspx.cs" Inherits="FutbolclubUPI.entrenador" %>

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
        <div> <br />
            <br />
            Codigo:
            <asp:TextBox ID="tcodigo" runat="server"></asp:TextBox>
            Nombre:
            <asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
            Titulos:
            <asp:TextBox ID="ttitulo" runat="server"></asp:TextBox>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="266px">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="titulos" HeaderText="titulos" SortExpression="titulos" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UPIFCConnectionString %>" ProviderName="<%$ ConnectionStrings:UPIFCConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [entrenador]"></asp:SqlDataSource>
        </div> <br />
        <div>
            <asp:Button ID="bagregar" runat="server" Text="Agregar" />
            <asp:Button ID="bborrar" runat="server" Text="Borrar" />
            <asp:Button ID="bmodificar" runat="server" Text="Modificar" />
            <asp:Button ID="bconsultar" runat="server" Text="Consultar" />
        </div>
    </form>
</body>
</html>
