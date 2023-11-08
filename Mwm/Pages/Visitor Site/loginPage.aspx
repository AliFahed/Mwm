<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Visitor Site/visitorPageTemplate.Master" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Mwm.Pages.Visitor_Site.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/landingPageTemplate.css" rel="stylesheet" />
    <link href="Styles/StyleSheet.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-hero-section">
        <h1 style="margin-bottom: 20px">Customer Login</h1>
    
        <asp:Label ID="Label1" runat="server" Text="User Name" style="margin-right: 90px"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label2" runat="server" Text="Password" style="margin-right: 100px"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />

        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Login_Click" style="color: #000; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; margin-bottom:20px;" />

        <p>Click <a href="registerPage.aspx">here</a> to create an account</p>
        <br />
        <br />
        <br />
        <br />
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <p> <a href="../Admin%20Site/adminLoginPage.aspx">Admin Login</a> </p>
    </section>

    <asp:SqlDataSource ID="SqlDSCustomerLog" runat="server" ConnectionString="<%$ ConnectionStrings:myDatabase %>" DeleteCommand="DELETE FROM [tblCustomers] WHERE [uid] = @uid" InsertCommand="INSERT INTO [tblCustomers] ([name], [email], [password], [dtAdded], [status]) VALUES (@name, @email, @password, @dtAdded, @status)" SelectCommand="SELECT email, password FROM tblCustomers" UpdateCommand="UPDATE [tblCustomers] SET [name] = @name, [email] = @email, [password] = @password, [dtAdded] = @dtAdded, [status] = @status WHERE [uid] = @uid">
        <DeleteParameters>
            <asp:Parameter Name="uid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="dtAdded" Type="DateTime" />
            <asp:Parameter Name="status" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtUsername" Name="username" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="dtAdded" Type="DateTime" />
            <asp:Parameter Name="status" Type="Int32" />
            <asp:Parameter Name="uid" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>

    
</asp:Content>
