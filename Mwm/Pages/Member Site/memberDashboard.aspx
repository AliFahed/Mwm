<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Member Site/memberPageTemplate.Master" AutoEventWireup="true" CodeBehind="memberDashboard.aspx.cs" Inherits="Mwm.Pages.Member_Site.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/memberPageTemplate.css" rel="stylesheet" />
    <link href="styles/memberDashboard.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Dashboard Section -->
    <section class="dashboard-section">
        <h1 class="title">My Dashboard</h1>

        <asp:Label ID="lblUsername" runat="server" Text="Username" class="username"></asp:Label>

        <asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click" style="color: #000; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;" />
    </section>
</asp:Content>
