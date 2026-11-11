<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="medrian_1.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        /* ==========================================
           MAIN ADMIN PAGE
           ========================================== */

        .admin-page {
            min-height: 85vh;
            background: #f4f7fb;
            font-family: Arial, Helvetica, sans-serif;
            color: #243447;
        }

        .admin-wrapper {
            display: flex;
            max-width: 1400px;
            margin: 0 auto;
            min-height: 850px;
            box-shadow: 0 3px 15px rgba(0,0,0,0.05);
        }


        /* ==========================================
           SIDEBAR
           ========================================== */

        .admin-sidebar {
            width: 245px;
            background: #102a43;
            color: white;
            padding: 28px 18px;
            flex-shrink: 0;
        }

        .admin-logo {
            text-align: center;
            padding: 10px 5px 30px;
            border-bottom: 1px solid rgba(255,255,255,0.12);
            margin-bottom: 25px;
        }

        .admin-logo .logo-icon {
            font-size: 35px;
            margin-bottom: 8px;
        }

        .admin-logo h2 {
            margin: 0;
            color: white;
            font-size: 22px;
            letter-spacing: 0.5px;
        }

        .admin-logo span {
            display: block;
            color: #a9c4dc;
            font-size: 12px;
            margin-top: 5px;
        }

        .sidebar-title {
            color: #829ab1;
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin: 20px 12px 10px;
        }

        .sidebar-menu {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .sidebar-menu li {
            margin-bottom: 6px;
        }

        .sidebar-menu a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 13px 14px;
            color: #d9e6f2;
            text-decoration: none;
            border-radius: 8px;
            font-size: 14px;
            transition: 0.2s;
        }

        .sidebar-menu a:hover,
        .sidebar-menu a.active {
            background: #1e88e5;
            color: white;
        }

        .menu-icon {
            width: 22px;
            text-align: center;
            font-size: 16px;
        }

        .sidebar-bottom {
            margin-top: 70px;
            padding-top: 20px;
            border-top: 1px solid rgba(255,255,255,0.12);
        }


        /* ==========================================
           MAIN CONTENT
           ========================================== */

        .admin-main {
            flex: 1;
            padding: 35px 40px 60px;
            overflow: hidden;
        }


        /* ==========================================
           PAGE HEADER
           ========================================== */

        .page-header {
            background: white;
            border-radius: 12px;
            padding: 25px 30px;
            margin-bottom: 25px;
            border-left: 5px solid #1e88e5;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
        }

        .page-header h1 {
            margin: 0;
            font-size: 28px;
            color: #102a43;
            font-weight: 700;
        }

        .page-header p {
            margin: 8px 0 0;
            color: #6b7c93;
            font-size: 14px;
        }


        /* ==========================================
           USER FORM
           ========================================== */

        .user-form-card {
            background: white;
            border-radius: 12px;
            padding: 30px;
            margin-bottom: 30px;
            box-shadow: 0 4px 18px rgba(0,0,0,0.06);
        }

        .form-title {
            margin: 0 0 25px;
            color: #102a43;
            font-size: 20px;
            font-weight: 600;
            padding-bottom: 15px;
            border-bottom: 1px solid #e5eaf0;
        }

        .form-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px 25px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            font-size: 13px;
            font-weight: 600;
            color: #34495e;
            margin-bottom: 8px;
        }

        .form-input {
            width: 100%;
            height: 44px;
            padding: 10px 13px;
            border: 1px solid #d6dee8;
            border-radius: 7px;
            background: #fbfcfe;
            font-size: 14px;
            color: #243447;
            outline: none;
            box-sizing: border-box;
            transition: 0.2s;
        }

        .form-input:focus {
            border-color: #1e88e5;
            background: white;
            box-shadow: 0 0 0 3px rgba(30,136,229,0.10);
        }

        .button-area {
            margin-top: 25px;
            display: flex;
            justify-content: flex-end;
        }

        .save-button {
            border: none;
            background: #1e88e5;
            color: white;
            padding: 12px 30px;
            border-radius: 7px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            min-width: 110px;
        }

        .save-button:hover {
            background: #1565c0;
            transform: translateY(-1px);
            box-shadow: 0 4px 10px rgba(30,136,229,0.25);
        }


        /* ==========================================
           USERS TABLE CARD
           ========================================== */

        .users-card {
            background: white;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 4px 18px rgba(0,0,0,0.06);
            overflow: hidden;
        }

        .users-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .users-header h2 {
            margin: 0;
            color: #102a43;
            font-size: 20px;
        }

        .users-header span {
            color: #7b8a9a;
            font-size: 13px;
        }


        /* ==========================================
           GRIDVIEW DESIGN
           ========================================== */

        .users-table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #e3e8ee;
            border-radius: 8px;
            overflow: hidden;
            font-size: 13px;
        }

        .users-table th {
            background: #102a43;
            color: white;
            padding: 14px 12px;
            text-align: left;
            font-size: 13px;
            font-weight: 600;
            border: none;
        }

        .users-table td {
            padding: 13px 12px;
            border-bottom: 1px solid #e8edf2;
            color: #34495e;
            background: white;
            vertical-align: middle;
        }

        .users-table tr:last-child td {
            border-bottom: none;
        }

        .users-table tr:hover td {
            background: #f5f9fd;
        }


        /* ==========================================
           EDIT / DELETE BUTTONS
           ========================================== */

        .edit-button {
            display: inline-block;
            padding: 7px 13px;
            background: #e3f2fd;
            color: #1565c0 !important;
            border-radius: 5px;
            text-decoration: none;
            font-size: 12px;
            font-weight: 600;
            transition: 0.2s;
        }

        .edit-button:hover {
            background: #1e88e5;
            color: white !important;
        }

        .delete-button {
            display: inline-block;
            padding: 7px 13px;
            background: #ffebee;
            color: #c62828 !important;
            border-radius: 5px;
            text-decoration: none;
            font-size: 12px;
            font-weight: 600;
            transition: 0.2s;
        }

        .delete-button:hover {
            background: #e53935;
            color: white !important;
        }


        /* ==========================================
           RESPONSIVE DESIGN
           ========================================== */

        @media (max-width: 1000px) {

            .admin-wrapper {
                max-width: 100%;
            }

            .admin-sidebar {
                width: 220px;
            }

            .admin-main {
                padding: 25px 20px 40px;
            }

            .users-card {
                overflow-x: auto;
            }

            .users-table {
                min-width: 750px;
            }
        }


        @media (max-width: 800px) {

            .admin-wrapper {
                display: block;
            }

            .admin-sidebar {
                width: 100%;
                padding: 15px;
            }

            .admin-logo {
                padding-bottom: 15px;
                margin-bottom: 10px;
            }

            .sidebar-menu {
                display: flex;
                flex-wrap: wrap;
                gap: 5px;
            }

            .sidebar-menu li {
                margin: 0;
            }

            .sidebar-title,
            .sidebar-bottom {
                display: none;
            }

            .admin-main {
                padding: 25px 18px;
            }

            .form-grid {
                grid-template-columns: 1fr;
            }

            .page-header h1 {
                font-size: 23px;
            }
        }


        @media (max-width: 500px) {

            .user-form-card,
            .users-card {
                padding: 20px 15px;
            }

            .button-area {
                justify-content: stretch;
            }

            .save-button {
                width: 100%;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="admin-page">

        <div class="admin-wrapper">


            <!-- ==========================================
                 SIDEBAR
                 ========================================== -->

            <aside class="admin-sidebar">

                <div class="admin-logo">

                    <div class="logo-icon">
                        ✈️
                    </div>

                    <h2>Meridian</h2>

                    <span>Travel Administration</span>

                </div>


                <div class="sidebar-title">
                    Main Menu
                </div>


                <ul class="sidebar-menu">

                    <li>
                        <a href="AdminDashboard.aspx">
                            <span class="menu-icon">📊</span>
                            Dashboard
                        </a>
                    </li>

                    <li>
                        <a href="ManageUsers.aspx" class="active">
                            <span class="menu-icon">👥</span>
                            Users
                        </a>
                    </li>

                    <li>
                        <a href="ManageShop.aspx">
                            <span class="menu-icon">🌍</span>
                            Shop
                        </a>
                    </li>

                    <li>
                        <a href="ManageBookings.aspx">
                            <span class="menu-icon">🧳</span>
                            Bookings
                        </a>
                    </li>

                    <li>
                        <a href="ManageFeedback.aspx">
                            <span class="menu-icon">💬</span>
                            Feedback
                        </a>
                    </li>

                </ul>


                <div class="sidebar-title">
                    Account
                </div>


                <ul class="sidebar-menu">

                    <li>
                        <a href="Profile.aspx">
                            <span class="menu-icon">👤</span>
                            Profile
                        </a>
                    </li>

                    <li>
                        <a href="Settings.aspx">
                            <span class="menu-icon">⚙️</span>
                            Settings
                        </a>
                    </li>

                    <li>
                        <a href="Logout.aspx">
                            <span class="menu-icon">↪</span>
                            Logout
                        </a>
                    </li>

                </ul>

            </aside>


            <!-- ==========================================
                 MAIN CONTENT
                 ========================================== -->

            <section class="admin-main">


                <!-- PAGE HEADER -->

                <div class="page-header">

                    <h1>Manage Users</h1>

                    <p>
                        Add, update and manage registered travel users from this panel.
                    </p>

                </div>


                <!-- ==========================================
                     USER FORM
                     ========================================== -->

                <div class="user-form-card">

                    <h2 class="form-title">
                        User Information
                    </h2>


                    <div class="form-grid">


                        <div class="form-group">

                            <asp:Label
                                ID="Label1"
                                runat="server"
                                Text="Fullname">
                            </asp:Label>

                            <asp:TextBox
                                ID="txtFullName"
                                runat="server"
                                CssClass="form-input">
                            </asp:TextBox>

                        </div>


                        <div class="form-group">

                            <asp:Label
                                ID="Label2"
                                runat="server"
                                Text="Email">
                            </asp:Label>

                            <asp:TextBox
                                ID="txtEmail"
                                runat="server"
                                CssClass="form-input">
                            </asp:TextBox>

                        </div>


                        <div class="form-group">

                            <asp:Label
                                ID="Label3"
                                runat="server"
                                Text="Password">
                            </asp:Label>

                            <asp:TextBox
                                ID="txtPassword"
                                runat="server"
                                CssClass="form-input">
                            </asp:TextBox>

                        </div>


                        <div class="form-group">

                            <asp:Label
                                ID="Label4"
                                runat="server"
                                Text="Confirm Password">
                            </asp:Label>

                            <asp:TextBox
                                ID="txtConfirmPassword"
                                runat="server"
                                CssClass="form-input">
                            </asp:TextBox>

                        </div>


                    </div>


                    <div class="button-area">

                        <asp:Button
                            ID="Button1"
                            runat="server"
                            Text="Save"
                            CssClass="save-button"
                            OnClick="Button1_Click" />

                    </div>

                </div>


                <!-- ==========================================
                     USERS TABLE
                     ========================================== -->

                <div class="users-card">

                    <div class="users-header">

                        <h2>Registered Use</h2>
                        <h2>&nbsp;</h2>

                        <span>User Management</span>

                    </div>


                    <asp:GridView
                        ID="GridView1"
                        runat="server"
                        AutoGenerateColumns="False"
                        CssClass="users-table"
                        OnRowCommand="GridView1_RowCommand"
                        OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

                        <Columns>


                            <asp:TemplateField HeaderText="Id">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="Label5"
                                        runat="server"
                                        Text='<%# Eval("Id") %>'>
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Full Name">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="Label6"
                                        runat="server"
                                        Text='<%# Eval("FullName") %>'>
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Email">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="Label7"
                                        runat="server"
                                        Text='<%# Eval("Email") %>'>
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Password">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="Label8"
                                        runat="server"
                                        Text='<%# Eval("Password") %>'>
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Confirm Password">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="Label9"
                                        runat="server"
                                        Text='<%# Eval("ConfirmPassword") %>'>
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Edit">

                                <ItemTemplate>

                                    <asp:LinkButton
                                        ID="LinkButton1"
                                        runat="server"
                                        CommandArgument='<%# Eval("Id") %>'
                                        CommandName="cmd_edt"
                                        CssClass="edit-button">
                                        Edit
                                    </asp:LinkButton>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Delete">

                                <ItemTemplate>

                                    <asp:LinkButton
                                        ID="LinkButton2"
                                        runat="server"
                                        CommandArgument='<%# Eval("Id") %>'
                                        CommandName="cmd_dlt"
                                        CssClass="delete-button">
                                        Delete
                                    </asp:LinkButton>

                                </ItemTemplate>

                            </asp:TemplateField>


                        </Columns>

                    </asp:GridView>


                </div>


            </section>

        </div>

    </main>

</asp:Content>