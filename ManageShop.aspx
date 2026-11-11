<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageShop.aspx.cs" Inherits="medrian_1.ManageShop" %>
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
            background: #ffffff;
            box-shadow: 0 3px 18px rgba(0,0,0,0.07);
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
            box-sizing: border-box;
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
            transition: 0.25s ease;
        }

        .sidebar-menu a:hover,
        .sidebar-menu a.active {
            background: #1e88e5;
            color: white;
            transform: translateX(3px);
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
           SHOP CONTENT
        ========================================== */

        .admin-wrapper > section {
            flex: 1;
            padding: 40px;
            background: #f8fafc;
            box-sizing: border-box;
        }


        /* ==========================================
           PAGE HEADER
        ========================================== */

        .shop-header {
            background: white;
            padding: 25px 30px;
            border-radius: 12px;
            border-left: 5px solid #1e88e5;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            margin-bottom: 20px;
        }

        .shop-header h1 {
            margin: 0;
            color: #102a43;
            font-size: 28px;
            font-weight: 700;
        }

        .shop-header p {
            margin: 8px 0 0;
            color: #6b7c93;
            font-size: 14px;
        }


        /* ==========================================
           RESULT MESSAGE
        ========================================== */

        .result-box {
            margin-bottom: 18px;
        }

        .result-box span {
            display: block;
            padding: 12px 15px;
            border-radius: 7px;
            background: #e9f8ef;
            color: #1e5f3d;
            font-size: 14px;
        }


        /* ==========================================
           ADD PRODUCTS BUTTON
        ========================================== */

        .product-button-area {
            margin-bottom: 20px;
        }

        .product-button {
            display: inline-block;
            background: #102a43;
            color: white;
            padding: 12px 22px;
            border-radius: 7px;
            text-decoration: none;
            font-size: 14px;
            font-weight: 600;
            transition: 0.25s ease;
        }

        .product-button:hover {
            background: #1e88e5;
            color: white;
            transform: translateY(-2px);
        }


        /* ==========================================
           FORM CARD
        ========================================== */

        .company-form {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
        }

        .form-title {
            margin: 0 0 25px;
            padding-bottom: 15px;
            border-bottom: 1px solid #e5e9ef;
            color: #102a43;
            font-size: 20px;
            font-weight: 700;
        }


        /* ==========================================
           FORM ROW
        ========================================== */

        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 18px;
        }


        /* ==========================================
           LABELS
        ========================================== */

        .form-label {
            width: 150px;
            flex-shrink: 0;
            color: #34495e;
            font-size: 14px;
            font-weight: 600;
        }


        /* ==========================================
           TEXTBOXES
        ========================================== */

        .form-input {
            width: 100%;
            max-width: 520px;
            padding: 11px 13px;
            border: 1px solid #ccd6e0;
            border-radius: 7px;
            font-size: 14px;
            color: #243447;
            background: #fbfcfe;
            outline: none;
            box-sizing: border-box;
            transition: 0.2s ease;
        }

        .form-input:focus {
            border-color: #1e88e5;
            background: white;
            box-shadow: 0 0 0 3px rgba(30,136,229,0.10);
        }


        /* ==========================================
           FILE UPLOAD
        ========================================== */

        .file-upload {
            font-size: 13px;
            color: #536878;
            padding: 7px 0;
        }


        /* ==========================================
           BUTTON AREA
        ========================================== */

        .submit-area {
            margin-top: 25px;
            padding-top: 20px;
            border-top: 1px solid #e5e9ef;
            text-align: right;
        }

        .add-company-button {
            background: #1e88e5;
            color: white;
            border: none;
            padding: 12px 27px;
            border-radius: 7px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.25s ease;
        }

        .add-company-button:hover {
            background: #1565c0;
            transform: translateY(-2px);
            box-shadow: 0 5px 12px rgba(30,136,229,0.25);
        }


        /* ==========================================
           RESPONSIVE DESIGN
        ========================================== */

        @media (max-width: 1000px) {

            .admin-wrapper {
                flex-direction: column;
            }

            .admin-sidebar {
                width: 100%;
            }

            .sidebar-menu {
                display: flex;
                flex-wrap: wrap;
                gap: 5px;
            }

            .sidebar-menu li {
                margin-bottom: 0;
            }

            .admin-wrapper > section {
                padding: 25px;
            }
        }


        @media (max-width: 700px) {

            .admin-wrapper > section {
                padding: 15px;
            }

            .company-form {
                padding: 20px;
            }

            .form-row {
                display: block;
            }

            .form-label {
                display: block;
                width: 100%;
                margin-bottom: 7px;
            }

            .form-input {
                max-width: 100%;
            }

            .submit-area {
                text-align: left;
            }

            .shop-header h1 {
                font-size: 23px;
            }
        }


        @media (max-width: 500px) {

            .admin-sidebar {
                padding: 20px 12px;
            }

            .sidebar-menu {
                display: block;
            }

            .sidebar-menu li {
                margin-bottom: 5px;
            }

            .shop-header {
                padding: 20px;
            }

            .company-form {
                padding: 16px;
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
                        <a href="ManageUsers.aspx">
                            <span class="menu-icon">👥</span>
                            Users
                        </a>
                    </li>

                    <li>
                        <a href="ManageShop.aspx" class="active">
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
                 MAIN SHOP CONTENT
            ========================================== -->

            <section>

                <!-- Page Header -->
                <div class="shop-header">

                    <h1>Add Company</h1>

                    <p>
                        Add and manage travel companies from the administration panel.
                    </p>

                </div>


                <!-- Result Message -->
                <div class="result-box">

                    <asp:Label
                        ID="lblresult"
                        runat="server"
                        Text="">
                    </asp:Label>

                </div>


                <!-- Add Products -->
                <div class="product-button-area">

                    <asp:LinkButton
                        ID="LinkButton1"
                        runat="server"
                        CssClass="product-button" OnClick="LinkButton1_Click1">

                        + Add Products

                    </asp:LinkButton>

                </div>


                <!-- Company Form -->
                <div class="company-form">

                    <h2 class="form-title">
                        Company Information
                    </h2>


                    <!-- Company Name -->
                    <div class="form-row">

                        <asp:Label
                            ID="Label1"
                            runat="server"
                            Text="Company Name"
                            CssClass="form-label">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtnm"
                            runat="server"
                            CssClass="form-input">
                        </asp:TextBox>

                    </div>


                    <!-- Owner Name -->
                    <div class="form-row">

                        <asp:Label
                            ID="Label2"
                            runat="server"
                            Text="Owner Name"
                            CssClass="form-label">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtonm"
                            runat="server"
                            CssClass="form-input">
                        </asp:TextBox>

                    </div>


                    <!-- Email -->
                    <div class="form-row">

                        <asp:Label
                            ID="Label3"
                            runat="server"
                            Text="Email"
                            CssClass="form-label">
                        </asp:Label>

                        <asp:TextBox
                            ID="txteml"
                            runat="server"
                            CssClass="form-input">
                        </asp:TextBox>

                    </div>


                    <!-- Address -->
                    <div class="form-row">

                        <asp:Label
                            ID="Label4"
                            runat="server"
                            Text="Address"
                            CssClass="form-label">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtadd"
                            runat="server"
                            CssClass="form-input">
                        </asp:TextBox>

                    </div>


                    <!-- Company Image -->
                    <div class="form-row">

                        <asp:Label
                            ID="Label5"
                            runat="server"
                            Text="Company Image"
                            CssClass="form-label">
                        </asp:Label>

                        <asp:FileUpload
                            ID="imgUpload"
                            runat="server"
                            CssClass="file-upload">
                        </asp:FileUpload>

                    </div>


                    <!-- Add Company Button -->
                    <div class="submit-area">

                        <asp:Button
                            ID="add_comp_btn"
                            runat="server"
                            Text="Add Company"
                            CssClass="add-company-button"
                            OnClick="add_comp_btn_Click" />

                    </div>

                </div>

            </section>


        </div>

    </main>

</asp:Content>
