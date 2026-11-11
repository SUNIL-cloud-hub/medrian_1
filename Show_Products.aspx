<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Show_Products.aspx.cs" Inherits="medrian_1.Show_Products" %>
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
           PRODUCTS MAIN SECTION
        ========================================== */

        .products-section {
            flex: 1;
            padding: 35px 40px 50px;
            background: #f4f7fb;
            min-width: 0;
            box-sizing: border-box;
        }


        /* ==========================================
           PAGE HEADER
        ========================================== */

        .products-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding-bottom: 18px;
            border-bottom: 1px solid #dce5ed;
        }

        .products-header h1 {
            margin: 0;
            font-size: 30px;
            color: #102a43;
            font-weight: 700;
        }

        .products-header p {
            margin: 7px 0 0;
            color: #829ab1;
            font-size: 14px;
        }


        /* ==========================================
           BACK TO COMPANY BUTTON
        ========================================== */

        .back-company {
            display: inline-block;
            margin-bottom: 28px;
            padding: 10px 17px;
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
            color: white;
            border-color: #1e88e5;
        }


        /* ==========================================
           PRODUCT LIST
        ========================================== */

        .product-list {
            display: flex;
            flex-wrap: wrap;
            gap: 24px;
            align-items: stretch;
        }


        /* ==========================================
           PRODUCT CARD
        ========================================== */

        .product-card {
            width: 220px;
            background: #ffffff;
            border: 1px solid #e0e7ef;
            border-radius: 12px;
            padding: 18px;
            box-sizing: border-box;
            box-shadow: 0 4px 12px rgba(16, 42, 67, 0.06);
            transition: 0.25s ease;
            text-align: center;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(16, 42, 67, 0.12);
            border-color: #b8d4eb;
        }


        /* ==========================================
           PRODUCT IMAGE
        ========================================== */

        .product-image {
            width: 100%;
            height: 150px;
            object-fit: contain;
            background: #f8fafc;
            border-radius: 9px;
            padding: 10px;
            box-sizing: border-box;
            margin-bottom: 15px;
        }


        /* ==========================================
           PRODUCT NAME
        ========================================== */

        .product-name {
            display: block;
            min-height: 42px;
            color: #243447;
            font-size: 16px;
            font-weight: 600;
            line-height: 21px;
            margin-bottom: 8px;
        }


        /* ==========================================
           PRODUCT PRICE
        ========================================== */

        .product-price {
            display: block;
            color: #1e88e5;
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 16px;
        }


        /* ==========================================
           PRODUCT BUTTONS
        ========================================== */

        .product-button {
            width: 100%;
            padding: 10px 12px;
            border: none;
            border-radius: 7px;
            font-size: 13px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            margin-bottom: 8px;
        }

        .view-button {
            background: #e8f3fc;
            color: #1976d2;
        }

        .view-button:hover {
            background: #1e88e5;
            color: white;
        }

        .cart-button {
            background: #102a43;
            color: white;
        }

        .cart-button:hover {
            background: #1e88e5;
        }


        /* ==========================================
           EMPTY MESSAGE
        ========================================== */

        .empty-message {
            display: block;
            padding: 40px;
            text-align: center;
            background: white;
            border: 1px dashed #c7d4df;
            border-radius: 10px;
            color: #829ab1;
            font-size: 15px;
            margin-top: 20px;
        }


        /* ==========================================
           RESPONSIVE - TABLET
        ========================================== */

        @media (max-width: 1100px) {

            .products-section {
                padding: 30px 25px;
            }

            .product-card {
                width: calc(33.333% - 16px);
            }
        }


        /* ==========================================
           RESPONSIVE - MOBILE SIDEBAR
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

            .products-section {
                padding: 25px 18px;
            }

            .product-card {
                width: calc(50% - 12px);
            }
        }


        /* ==========================================
           RESPONSIVE - SMALL MOBILE
        ========================================== */

        @media (max-width: 500px) {

            .products-header {
                display: block;
            }

            .products-header h1 {
                font-size: 25px;
            }

            .product-list {
                display: block;
            }

            .product-card {
                width: 100%;
                margin-bottom: 18px;
            }

            .product-image {
                height: 180px;
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
                 PRODUCTS CONTENT
            ========================================== -->

            <section class="products-section">


                <!-- PAGE HEADER -->

                <div class="products-header">

                    <div>

                        <h1>
                            Products
                        </h1>

                        <p>
                            Browse products available from this company
                        </p>

                    </div>

                </div>


                <!-- BACK BUTTON -->

                <a href="Show_Company.aspx" class="back-company">
                    &larr; Back to Companies
                </a>


                <!-- ==========================================
                     PRODUCT LIST
                ========================================== -->

                <div class="product-list">

                    <asp:DataList
                        ID="DataList1"
                        runat="server"
                        OnItemCommand="DataList1_ItemCommand"
                        RepeatDirection="Horizontal"
                        RepeatLayout="Flow">

                        <ItemTemplate>

                            <div class="product-card">


                                <!-- PRODUCT IMAGE -->

                                <asp:Image
                                    ID="Image1"
                                    runat="server"
                                    CssClass="product-image"
                                    ImageUrl='<%# Eval("Prod_Img") %>' />


                                <!-- PRODUCT MODEL -->

                                <asp:Label
                                    ID="Label1"
                                    runat="server"
                                    CssClass="product-name"
                                    Text='<%# Eval("Prod_Model") %>'>
                                </asp:Label>


                                <!-- PRODUCT PRICE -->

                                <asp:Label
                                    ID="Label2"
                                    runat="server"
                                    CssClass="product-price"
                                    Text='<%# Eval("Prod_Price") == DBNull.Value ? "₹0.00" : "₹" + Convert.ToDecimal(Eval("Prod_Price")).ToString("N2") %>'>
                                </asp:Label>


                                <!-- VIEW DETAILS -->

                                <asp:Button
                                    ID="btnView"
                                    runat="server"
                                    CssClass="product-button view-button"
                                    CommandName="cmd_view"
                                    CommandArgument='<%# Eval("Prod_Id") %>'
                                    Text="View Details" />


                                <!-- ADD TO CART -->

                                <asp:Button
                                    ID="btnCart"
                                    runat="server"
                                    CssClass="product-button cart-button"
                                    CommandName="cmd_cart"
                                    CommandArgument='<%# Eval("Prod_Id") %>'
                                    Text="Add to Cart" />

                            </div>

                        </ItemTemplate>

                    </asp:DataList>

                </div>


                <!-- EMPTY MESSAGE -->

                <asp:Label
                    ID="lblEmpty"
                    runat="server"
                    CssClass="empty-message"
                    Text="No products found for this company."
                    Visible="false">
                </asp:Label>


            </section>

        </div>

    </main>


</asp:Content>
