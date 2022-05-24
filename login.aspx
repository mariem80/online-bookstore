<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="book_store.login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Log in</title>
<style type="text/css">


      
        .button:active {
            background-color: #47e090;
            box-shadow: 0 5px #666;
            transform: translateY(4px);

        }
        
        .center {
            text-align: center;
        }
        .header {
            padding: 60px;
            text-align: center;
            background: #B0E5EA;
            color: white;
            font-size: 30px;

        }
        html, body {
    width: 100%;
}
        .auto-style1 {
            width: 562px;
            height: 178px;
            width: 50%;
            margin-left:auto;
            margin-right:auto;
            text-align: center;
            border-collapse: collapse;
        }
        .auto-style2 {
        height: 63px;
    }
        .auto-style4 {
        height: 116px;
    }
    .auto-style6 {
        height: 63px;
        font-family: "Times New Roman", Times, serif;
        font-weight: bold;
        font-size: large;
        width: 225px;
    }
        .auto-style7 {
        height: 42px;
    }
        .auto-style8 {
        height: 63px;
        width: 120px;
    }
    .auto-style9 {
        height: 42px;
        width: 120px;
    }
    .auto-style10 {
        height: 116px;
        width: 120px;
    }
    
    .auto-style12 {
        height: 116px;
        width: 225px;
    }
        </style>
</head>

<body style="height: 532px">
    <form id="form1" runat="server">
    <div class="header">
   <h1>Log In</div>
        
        <table class="auto-style1" border="0">
            <tr>
                <td class="auto-style6" style="font-weight: normal">

                    Username</td>
                <td class="auto-style2">

                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>

                </td>
                <td class="auto-style8">

                    </td>
            </tr>
            <tr>
                <td class="auto-style11" style="font-family: 'Times New Roman', Times, serif; font-weight: normal; font-size: large">

                    Password</td>
                <td class="auto-style7">

                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>

                </td>
                <td class="auto-style9">

                    <asp:Button ID="Button1" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Sign In" OnClick="Button1_Click"  />

                </td>
            </tr>
            <tr>
                <td class="auto-style12"> </td>
                <td class="auto-style4"> 

                    <asp:Button ID="Button2" runat="server" BackColor="Black" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="41px"  Width="283px" CssClass="button"  Text="Create an Account" OnClick="Button2_Click" />

                </td>
                <td class="auto-style10"> 
                    &nbsp;</td>
            </tr>
           
        </table>
            
    </form>
</body>
</html>
