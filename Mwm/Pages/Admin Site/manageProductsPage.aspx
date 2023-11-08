<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin Site/adminPageTemplate.Master" AutoEventWireup="true" CodeBehind="manageProductsPage.aspx.cs" Inherits="Mwm.Pages.Admin_Site.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Top Navigation bar -->
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
        <h2>Manage Products</h2>
        <hr />
        <br />
        Name<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        Description<asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
        <br />
        Price<asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <br />
        Quantity<asp:TextBox ID="txtQTY" runat="server"></asp:TextBox>
        <br />
        Category <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="aid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList><asp:Label ID="lblCID" runat="server" Text="lblCID"></asp:Label>
        <br />
        Product Image<asp:FileUpload ID="fuImage" runat="server" />
        <br />
        
        <asp:Label ID="lbldtAdded" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDatabase %>" SelectCommand="SELECT * FROM [tblCategory]"></asp:SqlDataSource>
        <br />

        <asp:Button ID="btnAdd" runat="server" Text="Add" />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" />
    </section>
</asp:Content>
