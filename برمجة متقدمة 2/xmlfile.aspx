<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xmlfile.aspx.cs" Inherits="برمجة_متقدمة_2.xmlfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>page xml</title>
    
    <link href="xmlcss.css" rel="stylesheet" />
        
</head>
<body >

   <center> <form id="form1" runat="server"  >
        <label Cssclass="head">XML Files</label>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="gr"></asp:GridView>

            <br />
            <br />
                <asp:Panel ID="Panel1" runat="server" CssClass="panel" Height="96px" Width="400px" >
                    <asp:Label ID="Label8" runat="server" Text="Delete :" CssClass="head" ></asp:Label>
                    <br />
                    <asp:Label ID="Label7" runat="server" CssClass="delete" Text="ID"></asp:Label>
                    <asp:DropDownList ID="Dr_Delete" runat="server" CssClass="edit" OnSelectedIndexChanged="Dr_Delete_SelectedIndexChanged1">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="Btn_Delete" runat="server" BorderStyle="None" CssClass="btndelete" OnClick="Btn_Delete_Click" Text="Delete" />
                    <br /><br />
            </asp:Panel>
                    <br />

            <asp:Panel ID="Panel2" runat="server" CssClass="panel" Height="233px" Width="400px" >
                <asp:Label ID="Label2" runat="server" Text="Edit :"  CssClass="head" ></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Select Id " CssClass="edit"></asp:Label>
                <asp:DropDownList ID="Dr_Edit" runat="server" CssClass="edit">
                </asp:DropDownList>
                <br />
                
                <asp:TextBox ID="Txt_Name" runat="server" CssClass="txtedit"  placeholder="Name"></asp:TextBox>
                <br />
                
                <asp:TextBox ID="Txt_Age" runat="server" CssClass="txtedit" placeholder="Age"></asp:TextBox>
                <br />
                <asp:TextBox ID="Txt_Year" runat="server" CssClass="txtedit" placeholder="Year"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Btn_Edit" runat="server" Text="Edit" CssClass="btnedit" OnClick="Btn_Edit_Click" BorderStyle="None" />
                <br />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel3" runat="server" Height="235px"  CssClass="panel" Width="400px">
                
                <asp:Label ID="Label9" runat="server" Text="Add" CssClass="head"></asp:Label>
                
                <br />
                
                
                <asp:TextBox ID="Id" runat="server"  placeholder="ID" CssClass="add"></asp:TextBox>
                <br />
                
                <asp:TextBox ID="Name" runat="server"  CssClass="add" placeholder="Name"></asp:TextBox>
                <br />
                
                <asp:TextBox ID="Age" runat="server" CssClass="add"  placeholder="Age"></asp:TextBox>
                <br />
                
                <asp:TextBox ID="Year" runat="server" CssClass="add"  placeholder="Year"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Btn_Add" runat="server" BorderStyle="None" CssClass="btnadd" OnClick="Btn_Add_Click" Text="Add" />
            </asp:Panel>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Page database" CssClass="btnDB" BorderStyle="None" />  
       </form></center>
</body>
</html>
