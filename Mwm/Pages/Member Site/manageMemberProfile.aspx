<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Member Site/memberPageTemplate.Master" AutoEventWireup="true" CodeBehind="manageMemberProfile.aspx.cs" Inherits="Mwm.Pages.Member_Site.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/memberPageTemplate.css" rel="stylesheet" />
    <link href="Styles/manageMemberProfile.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Home Hero Section -->
    <section class="dashboard-section">
        <h2 class="title">Manage Profile</h2>
        <asp:Label ID="Label1" runat="server" Text="Full Name" style="margin-right: 100px"></asp:Label>
        <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
        <br>

        <asp:Label ID="Label2" runat="server" Text="Email" style="margin-right: 130px"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Enabled="False" ></asp:TextBox>
        <br>

        <br>

        <asp:Label ID="lblDTAdded" runat="server" Text="lblDTAdded" Visible="false"></asp:Label>

        <asp:Label ID="lblStauts" runat="server" Text="lblStauts" Visible="false"></asp:Label>
        <asp:Label ID="lblId" runat="server" Text="id" Visible="false"></asp:Label>
   

        <asp:Button ID="updateBtn" runat="server" Text="Update" OnClick="UpdateBtn_Click" style="background-color: #007bff; color: #fff; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;" />
        <br />
        <asp:Button ID="BackBtn" runat="server" OnClick="BackBtn_Click" Text="Back" style="color: #000; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;" />

    </section>
    <asp:SqlDataSource ID="SqlDSCustomerReg" runat="server" ConnectionString="<%$ ConnectionStrings:myDatabase %>" DeleteCommand="DELETE FROM [tblCustomers] WHERE [uid] = @uid" InsertCommand="INSERT INTO [tblCustomers] ([name], [email], [password], [dtAdded], [status]) VALUES (@name, @email, @password, @dtAdded, @status)" SelectCommand="SELECT * FROM [tblCustomers]" UpdateCommand="UPDATE tblCustomers SET name = @name WHERE (uid = @uid)">
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
            <asp:ControlParameter ControlID="txtFullName" Name="name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lblId" Name="uid" PropertyName="Text" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
