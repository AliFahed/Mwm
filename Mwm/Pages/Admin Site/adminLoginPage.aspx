<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin Site/adminPageTemplate.Master" AutoEventWireup="true" CodeBehind="adminLoginPage.aspx.cs" Inherits="Mwm.Pages.Admin_Site.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style>
        /* Home Hero section */
        .home-hero-section {
            background-image: linear-gradient(rgba(9, 5, 54, 0.3), rgba(5, 4, 46, 0.7));
            width: 100%;
            height: 100vh;
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding-top: 30px;
        }

        .home-hero-section h2 {
            color: #fff;
            font-size: 2.2rem;
            letter-spacing: 1px;
        }

        .home-hero-section p {
            color: #fff;
            font-size: 1rem;
            letter-spacing: 1px;
            width: 50%;
            line-height: 25px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-hero-section">
        <h2>Admin Login</h2>
    
        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />

        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Login_Click" />
      </section>

    <!--
    <asp:SqlDataSource ID="SqlDSCustomerLog" runat="server" ConnectionString="<%$ ConnectionStrings:myDatabase %>" DeleteCommand="DELETE FROM [tblAdmin] WHERE [aid] = @aid" InsertCommand="INSERT INTO [tblAdmin] ([username], [password], [dtAdded], [status]) VALUES (@username, @password, @dtAdded, @status)" SelectCommand="SELECT username, password FROM tblAdmin" UpdateCommand="UPDATE [tblAdmin] SET [username] = @username, [password] = @password, [dtAdded] = @dtAdded, [status] = @status WHERE [aid] = @aid">
        <DeleteParameters>
            <asp:Parameter Name="aid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="dtAdded" Type="DateTime" />
            <asp:Parameter Name="status" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtUsername" Name="username" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="dtAdded" Type="DateTime" />
            <asp:Parameter Name="status" Type="Int32" />
            <asp:Parameter Name="aid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    -->
</asp:Content>
