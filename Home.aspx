<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CodeLab6_TSullivan.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <!--Link to Bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    
    <title>Grade Calculator</title>

    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
        <a class="navbar-brand" href="#"><strong>Grade Calculator</strong></a>
        
        
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home</a>
            </li>
        </ul>
    </nav>
    </div>
        
        <div>
            <span class="auto-style1"><strong>Grade Calculation and Evaluation</strong></span><br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter Grade"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtGrade" runat="server"></asp:TextBox>
            <asp:Label ID="lblTextCheck" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Participation"></asp:Label>
&nbsp;
            <asp:DropDownList ID="ddlParticipation" runat="server">
                <asp:ListItem Value="10">Excellent Participant</asp:ListItem>
                <asp:ListItem Value="9">Very Good Participant</asp:ListItem>
                <asp:ListItem Value="8">Good Participant</asp:ListItem>
                <asp:ListItem Value="7">Fair Participant</asp:ListItem>
                <asp:ListItem Value="5">Poor Participant</asp:ListItem>
                <asp:ListItem Value="0">Did not Participate</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Evaluation" />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>



        </div>
    </form>
</body>
</html>
