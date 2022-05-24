
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="book_store.view" %>
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<html>
<head>
    <title>Home</title>
<style>

    footer
{
	background-color: black;
	text-align: center;
  padding: 3px;
  color: white;
  height:200px;
}
    
        .button:active {
            background-color: #47e090;
            box-shadow: 0 5px #666;
            transform: translateY(4px);

        }
    header{
        margin:0;
    }
     html, body {
    width: 100%;
}
    
.icon-bar {
  width: 100%;
  height:30%;
  background-color: #B0E5EA;
}


.icon-bar a {
  display:block;
  width: 15%;
  text-align: center;
  padding: 17px 0;
  color: white;
  font-size: 28px;
  margin-left:1px;
}
label{
    position: absolute;
}
.icon-bar a:hover {
  background-color: #000;
}
.active {
  background-color: #94c8cd;
}
    .auto-style3 {
        height: 5517px;
        width: 100%;
    }
    .auto-style1 {
        
        text-align: center;
        align-content:center;
        margin-left:100px;
    }
        .auto-style15 {
        width: 315px;
        height: 240px;
    }
    .auto-style19 {
        background-color: #94c8cd;
        width: 20%;
    }
    .auto-style20 {
           float:right;
            text-align: center;
             border-radius: 50%;
            align-items: center;
            position:absolute;
            vertical-align: middle;
        left: 437px;
        top: 50px;
        width: 443px;
        height: 107px;
        bottom: 4589px;
    }
    .auto-style21 {
        float: right;
        text-align: center;
        border-radius: 50%;
        align-items: center;
        position: absolute;
        vertical-align: middle;
        left: 1122px;
        top: 6px;
        width: 148px;
        height: 143px;
    }
    .auto-style22 {
        height: 324px;
    }
    .auto-style23 {
        height: 324px;
        width: 357px;
    }
    .auto-style34 {
        width: 357px;
        height: 573px;
    }
    .auto-style35 {
        height: 573px;
    }
    .auto-style36 {
        width: 357px;
        height: 546px;
    }
    .auto-style37 {
        height: 546px;
    }
    .auto-style38 {
        width: 357px;
        height: 603px;
    }
    .auto-style39 {
        height: 603px;
    }
    .auto-style40 {
        width: 340px;
        height: 240px;
    }
    .auto-style41 {
        height: 603px;
        width: 340px;
    }
    .auto-style42 {
        height: 573px;
        width: 340px;
    }
    .auto-style43 {
        height: 546px;
        width: 340px;
    }
    .auto-style44 {
        height: 324px;
        width: 340px;
    }
    .auto-style45 {
        width: 340px;
    }

    .sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

    .auto-style46 {
        position: absolute;
        left: 429px;
        top: 275px;
        height: 150px;
        width: 119px;
    }

    .auto-style47 {
        position: absolute;
        left: 885px;
        top: 3529px;
        height: 114px;
        width: 138px;
    }

    .auto-style48 {
        position: absolute;
        left: 1072px;
        top: 2157px;
        height: 114px;
        width: 138px;
    }

    .auto-style49 {
        position: absolute;
        left: 1017px;
        top: 182px;
        height: 114px;
        width: 138px;
    }

    </style>
    <div class="icon-bar">
  <a class="auto-style19" href="view.aspx"><i class="fa fa-book"></i></a> 
  <a href="cart.aspx"><i class="fa fa-shopping-cart"></i></a> 
   
        <i class="fa fa-user" style="width: 5%; color:white; font-size: 36px; height: 63px; position:absolute; left: 1182px; top: 37px;"></i>
</div>
    </head>
<body style="position:absolute;">

    <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="search.aspx">Search</a>
  <a href="signup.aspx">Sign Up</a>
  <a href="login.aspx">Log In</a>
  
</div>

<span style="font-size:30px;" onclick="openNav()" class="auto-style23">&#9776; </span>
        <script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
        </script>

    <form id="form1" runat="server">

    <div class="auto-style3" style="font-size: x-large; font-weight: bold; font-family: 'Microsoft JhengHei Light'; font-variant: normal; text-transform: capitalize; color: #000000; font-style: italic;">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <br />

        <table class="auto-style1" border="0" style="font-size: large; font-style: normal;">
            <tr>
                <td class="auto-style23">

                    <asp:Image ID="Image12" runat="server" CssClass="auto-style46" ImageUrl="~/Book_Image/spell.png" />

                    <br />
                    <asp:Image ID="Image1" runat="server" Height="384px" Width="281px"/> 
                    <br />
                    <asp:Label ID="price1" runat="server" Text="price"></asp:Label>
                    <br />
                    <asp:Label ID="Genre1" runat="server" Text="Genre"></asp:Label>
                    <br />

                    <br />
                </td>
                <td class="auto-style40">

                    <br />

        <asp:Panel ID="Panel2"  runat="server" CssClass="auto-style21" Font-Bold="True" Font-Italic="False" Font-Names="Microsoft YaHei UI" ForeColor="Black" HorizontalAlign="Center" Font-Size="Large" Font-Underline="False">
            <br />
            <br />
                    <br />
                    <asp:Label ID="username" runat="server" Font-Names="Neo Tech Alt Medium" ForeColor="White"></asp:Label>
                    </asp:Panel>

                    <asp:Label ID="Name1" runat="server" Text="title" Font-Names="Neo Tech Alt Medium"></asp:Label>

                    <br />
                    <asp:Label ID="author1" runat="server" Text="Author"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="About1" runat="server" Font-Size="Small" Text="About"></asp:Label>

                </td>
                <td class="auto-style15">

                    <br />

        <asp:Panel ID="Panel1"  runat="server" CssClass="auto-style20" Font-Bold="True" Font-Italic="False" Font-Names="Segoe Script" ForeColor="White" HorizontalAlign="Center" Font-Size="XX-Large" Font-Underline="False">
            The Fairy Book</asp:Panel>
                    <asp:Image ID="Image14" runat="server" CssClass="auto-style47" ImageUrl="~/Book_Image/cheshire cat.gif" />
                    <br />
                    <asp:Image ID="Image11" runat="server" CssClass="auto-style49" ImageUrl="~/Book_Image/book stack.gif" />
                    <asp:Button ID="Button1" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Add To Cart" OnClick="Button1_Click"  />

                    
                    <br />

                    <asp:Label ID="stock1" runat="server" Font-Size="Small" ></asp:Label>

                    
                    </td>
            </tr>
           
           
            
            <tr><td class="auto-style38">
                <br />
                    <asp:Image ID="Image2" runat="server" Height="384px" Width="281px"/> 
                <br />
                    <asp:Label ID="price2" runat="server" Text="price"></asp:Label>
                    <br />
                    <asp:Label ID="Genre2" runat="server" Text="Genre"></asp:Label>
                    <br />

                    </td>
                <td class="auto-style41">

                    <asp:Label ID="Name2" runat="server" Text="title" Font-Names="Neo Tech Alt Medium"></asp:Label>
                    <br />
                    <asp:Label ID="author2" runat="server" Text="Author"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="About2" runat="server" Font-Size="Small" Text="About"></asp:Label>

                    </td>
                <td class="auto-style39">
                    <br />

                    <asp:Button ID="Button2" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Add To Cart" OnClick="Button2_Click"  />

                    <br />
                    <asp:Label ID="stock2" runat="server" Font-Size="Small"></asp:Label>

                    </td>
            </tr>
            <tr><td class="auto-style34">
                    <asp:Image ID="Image3" runat="server" Height="384px" Width="281px"/> <br />
                    <asp:Label ID="price3" runat="server" Text="price"></asp:Label>
                    <br />
                    <asp:Label ID="Genre3" runat="server" Text="Genre"></asp:Label>
                    <br />

                </td>
                <td class="auto-style42"> 

                    <asp:Label ID="Name3" runat="server" Text="title" Font-Names="Neo Tech Alt Medium"></asp:Label>
                    <br />
                    <asp:Label ID="author3" runat="server" Text="Author"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="About3" runat="server" Font-Size="Small" Text="About"></asp:Label>

                    </td>
                <td class="auto-style35">
                    <br />

                    <asp:Button ID="Button3" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Add To Cart" OnClick="Button3_Click"  />

                    <br />
                    <asp:Label ID="stock3" runat="server" Font-Size="Small"></asp:Label>

                </td>
            </tr>
            <tr><td class="auto-style36">
                <br />
                    <asp:Image ID="Image4" runat="server" Height="384px" Width="281px"/> <br />
                    <asp:Label ID="price4" runat="server" Text="price"></asp:Label>
                    <br />
                    <asp:Label ID="Genre4" runat="server" Text="Genre"></asp:Label>
                    <br />

                </td>
                <td class="auto-style43"> 
        
              <asp:Label ID="Name4" runat="server" Text="title" Font-Names="Neo Tech Alt Medium"></asp:Label>  
                    <br />
                    <asp:Label ID="author4" runat="server" Text="Author"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="About4" runat="server" Font-Size="Small" Text="About"></asp:Label>

                </td>
                <td class="auto-style37">
                    <asp:Image ID="Image13" runat="server" CssClass="auto-style48" ImageUrl="~/Book_Image/harry.png" />
                    <br />

                    <asp:Button ID="Button4" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Add To Cart" OnClick="Button4_Click"  />

                    <br />
                    <asp:Label ID="stock4" runat="server" Font-Size="Small"></asp:Label>

                </td>
            </tr>
            <tr>
                <td class="auto-style23"> 
                    <br />
                    <br />
                    <asp:Image ID="Image5" runat="server" Height="384px" Width="281px"/> <br />
                    <asp:Label ID="price5" runat="server" Text="price"></asp:Label>
                    <br />
                    <asp:Label ID="Genre5" runat="server" Text="Genre"></asp:Label>
                    <br />
                    <br />

                </td>
                <td class="auto-style44"> 
                    <asp:Label ID="Name5" runat="server" Text="title" Font-Names="Neo Tech Alt Medium"></asp:Label>
                    <br />
                    <asp:Label ID="author5" runat="server" Text="Author"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="About5" runat="server" Font-Size="Small" Text="About"></asp:Label>

                </td>
                <td class="auto-style22"> 
                    <br />

                    <asp:Button ID="Button5" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Add To Cart" OnClick="Button5_Click"  />

                    <br />
                    <asp:Label ID="stock5" runat="server" Font-Size="Small"></asp:Label>

                </td>
            </tr>
            <tr>
                <td class="auto-style23"> 
                    <br />
                    <br />
                    <asp:Image ID="Image6" runat="server" Height="384px" Width="281px"/> <br />
                    <asp:Label ID="price6" runat="server" Text="price"></asp:Label>
                    <br />
                    <asp:Label ID="Genre6" runat="server" Text="Genre"></asp:Label>
                    <br />

                </td>
                <td class="auto-style45"> 
                    <asp:Label ID="Name6" runat="server" Text="title" Font-Names="Neo Tech Alt Medium"></asp:Label>
                    <br />
                    <asp:Label ID="author6" runat="server" Text="Author"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="About6" runat="server" Font-Size="Small" Text="About"></asp:Label>

                </td>
                <td> 
                    <br />

                    <asp:Button ID="Button6" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Add To Cart" OnClick="Button6_Click"  />

                    <br />
                    <asp:Label ID="stock6" runat="server" Font-Size="Small"></asp:Label>

                </td>
            </tr>
            <tr>
                <td class="auto-style23"> 
                    <br />
                    <br />
                    <asp:Image ID="Image7" runat="server" Height="384px" Width="281px"/> <br />
                    <asp:Label ID="price7" runat="server" Text="price"></asp:Label>
                    <br />
                    <asp:Label ID="Genre7" runat="server" Text="Genre"></asp:Label>
                    <br />

                </td>
                <td class="auto-style45"> 
                    <asp:Label ID="Name7" runat="server" Text="title" Font-Names="Neo Tech Alt Medium"></asp:Label>
                    <br />
                    <asp:Label ID="author7" runat="server" Text="Author"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="About7" runat="server" Font-Size="Small" Text="About"></asp:Label>

                    <br />

                </td>
                <td> 
                    <br />

                    <asp:Button ID="Button7" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Add To Cart" OnClick="Button7_Click"  />

                    <br />
                    <asp:Label ID="stock7" runat="server" Font-Size="Small"></asp:Label>

                </td>
            </tr>
            <tr>
                <td class="auto-style23"> 
                    <br />
                    <br />
                    <asp:Image ID="Image8" runat="server" Height="384px" Width="281px"/> <br />
                    <asp:Label ID="price8" runat="server" Text="price"></asp:Label>
                    <br />
                    <asp:Label ID="Genre8" runat="server" Text="Genre"></asp:Label>
                    <br />

                </td>
                <td class="auto-style45"> 
                    <asp:Label ID="Name8" runat="server" Text="title" Font-Names="Neo Tech Alt Medium"></asp:Label>
                    <br />
                    <asp:Label ID="author8" runat="server" Text="Author"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="About8" runat="server" Font-Size="Small" Text="About"></asp:Label>

                    <br /></td>
                <td>
                    <br />

                    <asp:Button ID="Button8" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Add To Cart" OnClick="Button8_Click"  />

                    <br />
                    <asp:Label ID="stock8" runat="server" Font-Size="Small"></asp:Label>
                </td>
            </tr><tr>
            <td class="auto-style23"> 
                    <br />
                    <br />
                    <asp:Image ID="Image9" runat="server" Height="384px" Width="281px"/> <br />
                    <asp:Label ID="price9" runat="server" Text="price"></asp:Label>
                    <br />
                    <asp:Label ID="Genre9" runat="server" Text="Genre"></asp:Label>
                    <br />

                </td>
                <td class="auto-style45"> 
                    <asp:Label ID="Name9" runat="server" Text="title" Font-Names="Neo Tech Alt Medium"></asp:Label>
                    <br />
                    <asp:Label ID="author9" runat="server" Text="Author"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="About9" runat="server" Font-Size="Small" Text="About"></asp:Label>

                    <br /></td>
                <td>
                    <br />

                    <asp:Button ID="Button9" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Add To Cart" OnClick="Button9_Click"  />

                    <br />
                    <asp:Label ID="stock9" runat="server" Font-Size="Small"></asp:Label>
                </td>

            </tr>
            <tr>
            <td class="auto-style23"> 
                    <br />
                    <br />
                    <asp:Image ID="Image10" runat="server" Height="384px" Width="281px"/> <br />
                    <asp:Label ID="price10" runat="server" Text="price"></asp:Label>
                    <br />
                    <asp:Label ID="Genre10" runat="server" Text="Genre"></asp:Label>
                    <br />

                </td>
                <td class="auto-style45"> 
                    <asp:Label ID="Name10" runat="server" Text="title" Font-Names="Neo Tech Alt Medium"></asp:Label>
                    <br />
                    <asp:Label ID="author10" runat="server" Text="Author"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="About10" runat="server" Font-Size="Small" Text="About"></asp:Label>

                    <br /></td>
                <td>
                    <br />

                    <asp:Button ID="Button10" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Add To Cart" OnClick="Button10_Click"  />

                    <br />
                    <asp:Label ID="stock10" runat="server" Font-Size="Small"></asp:Label>
                </td>

            </tr>
        </table>
            
        <br />
        
        <br />
        <br />
        <br />
        <br />

    </div>
    </form>
</body>
    
</html>
<footer>

    </footer>