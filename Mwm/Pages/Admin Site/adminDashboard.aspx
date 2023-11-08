<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin Site/adminPageTemplate.Master" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="Mwm.Pages.Admin_Site.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .grid-container {
        display: grid;
        grid-template-columns: repeat(3, 1fr); /* 3 columns with equal width */
        gap: 50px; /* Gap between cards */
        max-width: 600px; /* Maximum width for the grid */
        margin: 0 auto; /* Center the grid horizontally */
        justify-content: center; /* Center content horizontally */
        align-items: center; /* Center content vertically */
        height: 50vh; /* Make the grid container take up the full viewport height */
    }


    .card {
        background-color: #f5f5f5;
        border: 1px solid #ccc;
        padding: 20px;
        text-align: center;
        text-decoration: none;
        color: #333;
        border-radius: 5px;
        transition: background-color 0.2s ease;
    }

    .card:hover {
        background-color: #007bff;
        color: #fff;
    }

    .gg {
        text-align: center;
    }

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
        <h2 class="gg">Admin Dashboard</h2>
    
        <div class="grid-container">
            <a href="manageUsersPage.aspx" class="card">Manage Users</a>
            <a href="manageCategoryPage.aspx" class="card">Manage Category</a>
            <a href="manageProductsPage.aspx" class="card">Manage Products</a>
            <a href="manageOrdersPage.aspx" class="card">Manage Orders</a>
            <a href="productDeliveryPage.aspx" class="card">Product Delivery</a>
            <a href="customerFeedbackPage.aspx" class="card">Customer Feedback</a>
        </div>
    </section>
</asp:Content>
