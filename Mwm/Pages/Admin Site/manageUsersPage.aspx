<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin Site/adminPageTemplate.Master" AutoEventWireup="true" CodeBehind="manageUsersPage.aspx.cs" Inherits="Mwm.Pages.Admin_Site.WebForm3" %>

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
    <h2>Manage Users</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="4" Width="986px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="uid" HeaderText="ID" ReadOnly="True" SortExpression="uid" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
            <asp:BoundField DataField="dtAdded" HeaderText="dtAdded" SortExpression="dtAdded" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDatabase %>" DeleteCommand="DELETE FROM [tblCustomers] WHERE [uid] = @uid" InsertCommand="INSERT INTO [tblCustomers] ([name], [email], [password], [dtAdded], [status]) VALUES (@name, @email, @password, @dtAdded, @status)" ProviderName="<%$ ConnectionStrings:myDatabase.ProviderName %>" SelectCommand="SELECT [uid], [name], [email], [password], [dtAdded], [status] FROM [tblCustomers]" UpdateCommand="UPDATE [tblCustomers] SET [name] = @name, [email] = @email, [password] = @password, [dtAdded] = @dtAdded, [status] = @status WHERE [uid] = @uid">
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
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="dtAdded" Type="DateTime" />
            <asp:Parameter Name="status" Type="Int32" />
            <asp:Parameter Name="uid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </section>
    
</asp:Content>
