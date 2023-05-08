<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApplication1.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            width: 135px;
            margin-left: 601px;
            margin-top: 100px;
        }

        #Text2 {
            width: 137px;
            height: 13px;
            margin-left: 600px;
            margin-top: 0px;
        }

        #Password1 {
            width: 138px;
            margin-left: 599px;
        }

        #Password2 {
            width: 136px;
            margin-left: 599px;
        }
        #name {
            margin-left: 0px;
        }
        #cpassword0 {
            margin-top: 23px;
        }
    </style>
</head>
<body style="height: 243px; width: 142px; margin-left: 612px;">
    <form id="form1" runat="server">
        
        <p>
            <asp:TextBox ID="name" placeholder="name" runat="server"></asp:TextBox>    
        </p>
        <p>
            <asp:TextBox ID="emailid" placeholder="email" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="password" placeholder="password" runat="server"></asp:TextBox>
        </p>
        <p style="margin-right: 727px">
            <asp:TextBox ID="cpassword" placeholder="confirm password" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="id" placeholder="id" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 40px; margin-top: 25px;" Text="Button" />
    </form>


</body>
</html>
