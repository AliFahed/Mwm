<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin Site/adminPageTemplate.Master" AutoEventWireup="true" CodeBehind="manageCategoryPage.aspx.cs" Inherits="Mwm.Pages.Admin_Site.WebForm4" %>

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
    <h2>Category Management</h2>
    
    <asp:Label ID="lblCID" runat="server" Text="lblCID" Visible="False"></asp:Label>
    <br />
    
    <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
    <asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox>
    <br />
    <br />

    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
    <br />
    <br />

    <asp:Button ID="addBtn" runat="server" Text="Add" ForeColor="White" BackColor="green" OnClick="addBtn_Click" />
        <br />
    <asp:Button ID="updateBtn" runat="server" Text="Update" ForeColor="White" BackColor="gray" OnClick="updateBtn_Click" />
        <br />
        <asp:Button ID="deleteBtn" runat="server" Text="Delete" ForeColor="White" BackColor="red" OnClick="deleteBtn_Click" />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDatabase %>" DeleteCommand="DELETE FROM [tblCategory] WHERE [aid] = @aid" InsertCommand="INSERT INTO [tblCategory] ([name], [description], [dtAdded], [status]) VALUES (@name, @description, @dtAdded, @status)" SelectCommand="SELECT * FROM [tblCategory]" UpdateCommand="UPDATE tblCategory SET name = @name, description = @description WHERE (aid = @aid)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="lblCID" Name="aid" PropertyName="Text" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtCategoryName" Name="name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtDescription" Name="description" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lbldtAdded" Name="dtAdded" PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="lblStatus" Name="status" PropertyName="Text" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="txtCategoryName" Name="name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtDescription" Name="description" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lblCID" Name="aid" PropertyName="Text" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblMessage" runat="server" Text="lblMessage" Visible="False"></asp:Label>
    <asp:Label ID="lbldtAdded" runat="server" Text="lbldtAdded" Visible="False"></asp:Label>
    <asp:Label ID="lblStatus" runat="server" Text="1" Visible="False"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="aid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="789px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="aid" HeaderText="aid" InsertVisible="False" ReadOnly="True" SortExpression="aid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
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
    </section>
</asp:Content>
