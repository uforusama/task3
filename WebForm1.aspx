<%@ Page Theme="Theme1" Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-image: url('cover.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:Button ID="Button4" runat="server" ForeColor="#3333FF" Text="Skin Button" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="true" ForeColor="#0000ff" Text="<script>alert('Label1 Text')</script>"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Literal ID="Literal1" runat="server" Text="<script>alert('Literal Text')</script>"></asp:Literal>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>
                Date oF Birth<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" src="calender.png" Width="25px" OnClick="ImageButton1_Click" />
            </p>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            &nbsp;
        <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
            <p>

                <asp:ListBox ID="ListBox1" runat="server" Rows="3">
                    <asp:ListItem Text="Matric" Value="1"></asp:ListItem>
                    <asp:ListItem Text="FSc" Value="2"></asp:ListItem>
                    <asp:ListItem Text="BS" Value="3"></asp:ListItem>
                    <asp:ListItem Text="MS" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Phd" Value="5"></asp:ListItem>
                </asp:ListBox>

                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />

            </p>
            <p>

                <asp:CheckBoxList ID="CheckBoxList1" ForeColor="#000000" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                    <asp:ListItem Text="Matric" Value="1"></asp:ListItem>
                    <asp:ListItem Text="FSc" Value="2"></asp:ListItem>
                    <asp:ListItem Text="BS" Value="3"></asp:ListItem>
                    <asp:ListItem Text="MS" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Phd" Value="5"></asp:ListItem>
                </asp:CheckBoxList>
                <asp:ListBox ID="ListBox2" runat="server" Width="178px" SelectionMode="Multiple"></asp:ListBox>
            </p>
        </div>
        <asp:RadioButtonList ID="RadioButtonList1" ForeColor="YellowGreen" runat="server" RepeatLayout="OrderedList">
            <asp:ListItem Text="Green" Value="2"></asp:ListItem>
            <asp:ListItem Text="Blue" Value="3"></asp:ListItem>
            <asp:ListItem Text="Black" Value="4"></asp:ListItem>
            <asp:ListItem Text="Pink" Value="5"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="Button6" runat="server" Text="Button" OnClick="Button6_Click1" /><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="LowerRoman" DisplayMode="HyperLink" Target="_blank">
            <asp:ListItem Text="Google" Value="http://google.com"></asp:ListItem>
            <asp:ListItem Text="Youtube" Value="http://youtube.com"></asp:ListItem>
            <asp:ListItem Text="Facebook" Value="http://facebook.com"></asp:ListItem>
        </asp:BulletedList>
    </form>
</body>
</html>
