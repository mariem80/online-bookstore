<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="book_store.cart" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!DOCTYPE html>
<html>
    
<head>
    <title>Cart</title>
    <style>

         .button:active {
            background-color: #47e090;
            box-shadow: 0 5px #666;
            transform: translateY(4px);

        }
        
      .container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
  padding: 0 16px;
}
      .col-25 {
  -ms-flex: 25%; 
  flex: 25%;
}
        .auto-style1 {
            width: 209px;
        }
  </style>
    <script type="text/javascript">
        
    </script>
 </head>
<body>
     <form id="form1" runat="server">
     <div class="col-25">
    <div class="container">
      <h4 class="auto-style1" style="text-transform: capitalize">
          <asp:Label ID="username" runat="server"></asp:Label>
          <i class="fa fa-user"></i> &nbsp;</h4>
      <h4 class="auto-style1">Cart <i class="fa fa-shopping-cart"></i> &nbsp;</h4>
        <p>
        <a href="javascript: history.go(-1)">Back</a>&nbsp;</p>
        <p>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="215px" Width="868px" OnRowDeleting="GridView1_RowDeleting">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:ImageField DataImageUrlField="image" SortExpression="image">
                      <ControlStyle Height="215px" Width="150px" />
                  </asp:ImageField>
                  <asp:BoundField DataField="id" HeaderText="Book_ID" SortExpression="id" />
                  <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                  <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                  <asp:CommandField ShowDeleteButton="True" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
        </p>
      <p>&nbsp;</p>
      <hr>
      <p>Total:
          <asp:Label ID="Label1" runat="server"></asp:Label>
          <span class="price" style="color:black"><b>&nbsp;EGP.</b></span></p>
        <p style="color: #666666">+ 0.00 Delivery Fees</p>
        <p>&nbsp;</p>
        <p>
            <span class="price" style="color:black"><b>Address<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>

                </b></span></p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="53px" Width="592px"></asp:TextBox>
        </p>
        <p>
            <span class="price" style="color:black"><b>Phone<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>

                </b></span></p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" Height="53px" MaxLength="11" TextMode="Phone" Width="592px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Cash On Delivery" Checked="True" ValidateRequestMode="Disabled" />
        </p>
        <p>

                    <asp:Button ID="Button1" runat="server" BackColor="#B0E5EA" BorderStyle="None" BorderWidth="100px" ForeColor="White"  Height="60px"  Width="171px" CssClass="button"  Text="Checkout" OnClick="Button1_Click"  />

                    
                    </p>
    </div>
  </div>
         <p>
             &nbsp;</p>
     </form>
</body>
</html>
  