<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="medrian_1.ViewDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>

        /* ==========================================
           MAIN PAGE
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


        /* ==========================================
           SIDEBAR MENU
        ========================================== */

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


        /* ==========================================
           PRODUCT DETAILS CONTENT
        ========================================== */

        .details-section {
            flex: 1;
            padding: 40px;
            background: #f4f7fb;
            box-sizing: border-box;
        }


        /* ==========================================
           PAGE HEADER
        ========================================== */

        .details-header {
            margin-bottom: 25px;
            padding-bottom: 18px;
            border-bottom: 1px solid #dce5ed;
        }

        .details-header h1 {
            margin: 0;
            color: #102a43;
            font-size: 30px;
            font-weight: 700;
        }

        .details-header p {
            margin: 7px 0 0;
            color: #829ab1;
            font-size: 14px;
        }


        /* ==========================================
           PRODUCT DETAILS CARD
        ========================================== */

        .details-card {
            background: #ffffff;
            border: 1px solid #e0e7ef;
            border-radius: 14px;
            padding: 35px;
            max-width: 850px;
            margin: 0 auto;
            box-shadow: 0 5px 18px rgba(16, 42, 67, 0.07);
        }


        /* ==========================================
           PRODUCT IMAGE
        ========================================== */

        .details-image {
            display: block;
            width: 280px !important;
            height: 280px !important;
            object-fit: contain;
            background: #f8fafc;
            border-radius: 12px;
            padding: 20px;
            box-sizing: border-box;
            margin: 0 auto 30px;
            border: 1px solid #e5ebf1;
        }


        /* ==========================================
           PRODUCT INFORMATION
        ========================================== */

        .detail-row {
            padding: 17px 0;
            border-bottom: 1px solid #edf1f5;
        }

        .detail-row:last-child {
            border-bottom: none;
        }

        .detail-label {
            display: block;
            color: #829ab1;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 0.7px;
            margin-bottom: 7px;
            font-weight: 600;
        }

        .detail-price {
            display: block;
            color: #1e88e5;
            font-size: 25px;
            font-weight: 700;
        }

        .detail-config {
            display: block;
            color: #243447;
            font-size: 16px;
            line-height: 25px;
        }

        .detail-description {
            display: block;
            color: #526579;
            font-size: 15px;
            line-height: 25px;
        }


        /* ==========================================
           BACK BUTTON
        ========================================== */

        .back-company {
            display: inline-block;
            margin-top: 25px;
            padding: 11px 18px;
            background: #ffffff;
            color: #1e88e5;
            text-decoration: none;
            border: 1px solid #d7e2ec;
            border-radius: 7px;
            font-size: 14px;
            font-weight: 600;
            transition: 0.2s;
        }

        .back-company:hover {
            background: #1e88e5;
            color: #ffffff;
            border-color: #1e88e5;
        }


        /* ==========================================
           RESPONSIVE
        ========================================== */

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

            .sidebar-title {
                display: none;
            }

            .details-section {
                padding: 25px 18px;
            }

            .details-card {
                padding: 25px 20px;
            }

            .details-image {
                width: 230px !important;
                height: 230px !important;
            }
        }


        @media (max-width: 500px) {

            .details-header h1 {
                font-size: 25px;
            }

            .details-card {
                padding: 20px 15px;
            }

            .details-image {
                width: 200px !important;
                height: 200px !important;
            }

            .back-company {
                width: 100%;
                text-align: center;
                box-sizing: border-box;
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


                <!-- MAIN MENU -->

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


                <!-- ACCOUNT -->

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
                 PRODUCT DETAILS
            ========================================== -->

            <section class="details-section">


                <!-- HEADER -->

                <div class="details-header">

                    <h1>
                        Product Details
                    </h1>

                    <p>
                        View complete information about this product
                    </p>

                </div>


                <!-- PRODUCT CARD -->

                <div class="details-card">

                    <asp:DataList ID="DataList1" runat="server">

                        <ItemTemplate>


                            <!-- PRODUCT IMAGE -->

                            <asp:Image
                                ID="Image1"
                                runat="server"
                                CssClass="details-image"
                                ImageUrl='<%# Eval("Prod_Img") %>' />


                            <!-- PRICE -->

                            <div class="detail-row">

                                <span class="detail-label">
                                    Price
                                </span>

                                <asp:Label
                                    ID="Label1"
                                    runat="server"
                                    CssClass="detail-price"
                                    Text='<%# Eval("Prod_Price") %>'>
                                </asp:Label>

                            </div>


                            <!-- CONFIGURATION -->

                            <div class="detail-row">

                                <span class="detail-label">
                                    Configuration
                                </span>

                                <asp:Label
                                    ID="Label2"
                                    runat="server"
                                    CssClass="detail-config"
                                    Text='<%# Eval("Prod_Config") %>'>
                                </asp:Label>

                            </div>


                            <!-- DESCRIPTION -->

                            <div class="detail-row">

                                <span class="detail-label">
                                    Description
                                </span>

                                <asp:Label
                                    ID="Label3"
                                    runat="server"
                                    CssClass="detail-description"
                                    Text='<%# Eval("Prod_Desc") %>'>
                                </asp:Label>

                            </div>


                        </ItemTemplate>

                    </asp:DataList>


                    <!-- BACK BUTTON -->

                    <a href="Show_Products.aspx" class="back-company">
                        &larr; Back to Products
                    </a>

                </div>

            </section>

        </div>

    </main>

</asp:Content>
