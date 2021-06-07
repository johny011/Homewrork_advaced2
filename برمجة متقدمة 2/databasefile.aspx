<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="databasefile.aspx.cs" Inherits="برمجة_متقدمة_2.databasefile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>page database</title>
    <link href="databsecss.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <center>  
          <asp:GridView ID="gr" runat="server" CssClass="gr" OnSelectedIndexChanged="gr_SelectedIndexChanged">
          </asp:GridView>
            <asp:Panel ID="Panel1" runat="server" CssClass="panel">
                <asp:Label ID="Label1" runat="server" Text="Add" CssClass="head" ></asp:Label><br />
                <asp:TextBox ID="txt_Id" runat="server" placeholder="Id" CssClass="txt"></asp:TextBox><br />
                <asp:TextBox ID="txt_Name" runat="server" placeholder="Name" CssClass="txt"></asp:TextBox><br />
                <asp:TextBox ID="txt_Year" runat="server" placeholder="Year" CssClass="txt"></asp:TextBox><br />
                <asp:TextBox ID="txt_Age" runat="server" placeholder="Age" CssClass="txt"></asp:TextBox><br />
                <asp:Button ID="btn_Add" runat="server" Text="Add" CssClass="btnadd" OnClick="Add_Click" AutoPostBack="False" ></asp:Button>
                <br />
            </asp:Panel>
          
          <asp:Panel ID="Panel3" runat="server" CssClass="panel">
              <asp:Label ID="Label3" runat="server" Text="Edit" CssClass="head" ></asp:Label><br />
                <asp:TextBox ID="txt_edit_Id" runat="server" placeholder="Id" CssClass="txt"></asp:TextBox><br />
                <asp:TextBox ID="txt_edit_Name" runat="server" placeholder="Name" CssClass="txt"></asp:TextBox><br />
                <asp:TextBox ID="txt_edit_Year" runat="server" placeholder="Year" CssClass="txt"></asp:TextBox><br />
                <asp:TextBox ID="txt_edit_Age" runat="server" placeholder="Age" CssClass="txt"></asp:TextBox><br />
                <asp:Button ID="btn_Edit" runat="server" Text="Edit" CssClass="btnadd" OnClick="btn_Edit_Click" OnLoad="btn_Edit_Load" ></asp:Button>
                <br />
          </asp:Panel><br />
          <asp:Panel ID="Panel4" runat="server" CssClass="panel">
              <asp:Label ID="Label2" runat="server" Text="Delete" CssClass="head" ></asp:Label> <br />
                <asp:Label ID="Label4" runat="server" Text="ID" CssClass="head" ></asp:Label> 
          <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
              <br />
               <asp:Button ID="btn_delete" runat="server" Text="Delete" CssClass="btnadd" OnClick="btn_delete_Click" AutoPostBack="False" ></asp:Button>
              </asp:Panel>
            </center>
        
            
    </form>
</body>
</html>
