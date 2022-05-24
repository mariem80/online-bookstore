<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="book_store.WebForm1" %>

<!DOCTYPE html>

<html">
<head runat="server">
    <title>Sign up</title>
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
        .auto-style1 {
            width: 562px;
            height: 273px;
            width: 50%;
            margin-left:auto;
            margin-right:auto;
            text-align: center;
            text-align: center;
            border-collapse: collapse;
        }
        .auto-style2 {
            width: 321px;
        }
        .auto-style3 {
            width: 172px;
        }
        </style>
</head>

<body>
    <form id="form1" runat="server">
    <div class="header">
  <h1>Sign Up</h1>
    </div>
    <div class="center">
        <table class="auto-style1" border="0">
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif">

                    Email</td>
                <td class="auto-style2">

                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>

                </td>
                <td class="auto-style3">

                    &nbsp;</td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif">

                    Username</td>
                <td class="auto-style2">

                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>

                </td>
                <td class="auto-style3">

                    <asp:Button ID="Button1" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="53px"  Width="171px" CssClass="button" OnClick="Button1_Click" Text="Create Account"  />

                </td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif">

                    Password</td>
                <td class="auto-style2">

                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>

                </td>
                <td class="auto-style3">

                    &nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style2">
                    <br />
                    <asp:Button ID="Button2" runat="server" CssClass="button" BackColor="Black" ForeColor="White" Height="42px" Text="Already have an account" Width="260px" OnClick="Button2_Click1" />
                    <br />
                    <br />
                </td>
                <td class="auto-style3"></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
