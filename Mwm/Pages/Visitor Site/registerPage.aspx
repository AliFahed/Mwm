<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Visitor Site/visitorPageTemplate.Master" AutoEventWireup="true" CodeBehind="registerPage.aspx.cs" Inherits="Mwm.Pages.Visitor_Site.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/landingPageTemplate.css" rel="stylesheet" />
    <link href="Styles/StyleSheet.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-hero-section">
        <h1 style="margin-bottom: 20px">Customer Registeration</h1>
        <asp:Label ID="Label1" runat="server" Text="Full Name" style="margin-right: 100px"></asp:Label>
        <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
        <br>

        <asp:Label ID="Label2" runat="server" Text="Email" style="margin-right: 130px"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
        <br>

        <asp:Label ID="Label3" runat="server" Text="Password" style="margin-right: 100px"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br>

        <asp:Label ID="lblDTAdded" runat="server" Text="lblDTAdded" Visible="false"></asp:Label>

        <asp:Label ID="lblStauts" runat="server" Text="lblStauts" Visible="false"></asp:Label>

        <asp:Button ID="signupBtn" runat="server" Text="Signup" OnClick="SignupBtn_Click" style="color: #000; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;" />
    </section>
    <asp:SqlDataSource ID="SqlDSCustomerReg" runat="server" ConnectionString="<%$ ConnectionStrings:myDatabase %>" DeleteCommand="DELETE FROM [tblCustomers] WHERE [uid] = @uid" InsertCommand="INSERT INTO [tblCustomers] ([name], [email], [password], [dtAdded], [status]) VALUES (@name, @email, @password, @dtAdded, @status)" SelectCommand="SELECT * FROM [tblCustomers]" UpdateCommand="UPDATE [tblCustomers] SET [name] = @name, [email] = @email, [password] = @password, [dtAdded] = @dtAdded, [status] = @status WHERE [uid] = @uid">
        <DeleteParameters>
            <asp:Parameter Name="uid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtFullName" Name="name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lblDTAdded" Name="dtAdded" PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="lblStauts" Name="status" PropertyName="Text" Type="Int32" />
        </InsertParameters>
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
