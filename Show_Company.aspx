<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Show_Company.aspx.cs" Inherits="medrian_1.Show_Company" %>
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


        /* ==========================================
           MAIN CONTENT
        ========================================== */

        .admin-main {
            flex: 1;
            padding: 30px 35px 50px;
            overflow: hidden;
        }


        /* ==========================================
           PAGE HEADER
        ========================================== */

        .company-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        .company-header h1 {
            margin: 0;
            font-size: 30px;
            color: #102a43;
        }

        .company-header p {
            margin: 7px 0 0;
            color: #829ab1;
            font-size: 14px;
        }


        /* ==========================================
           TOP BUTTONS
        ========================================== */

        .company-actions {
            display: flex;
            gap: 12px;
            margin-bottom: 30px;
        }

        .company-btn {
            display: inline-block;
            padding: 11px 18px;
            border-radius: 7px;
            text-decoration: none;
            font-size: 14px;
            font-weight: 600;
            transition: 0.2s;
        }

        .products-btn {
            background: #1e88e5;
            color: white;
        }

        .products-btn:hover {
            background: #1565c0;
            color: white;
        }

        .cart-btn {
            background: #ffffff;
            color: #102a43;
            border: 1px solid #d6e0ea;
        }

        .cart-btn:hover {
            background: #eaf2f8;
            color: #102a43;
        }


        /* ==========================================
           COMPANY GRID
        ========================================== */

        .company-list {
            display: flex;
            flex-wrap: wrap;
            gap: 22px;
        }


        /* ==========================================
           COMPANY CARD
        ========================================== */

        .company-card {
            width: 190px;
            background: white;
            border: 1px solid #e1e8ef;
            border-radius: 12px;
            padding: 15px;
            box-sizing: border-box;
            text-align: center;
            box-shadow: 0 3px 12px rgba(16,42,67,0.06);
            transition: all 0.25s ease;
        }

        .company-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 22px rgba(16,42,67,0.14);
            border-color: #1e88e5;
        }


        /* ==========================================
           COMPANY IMAGE
        ========================================== */

        .company-image {
            width: 100%;
            height: 120px;
            object-fit: cover;
            border-radius: 9px;
            display: block;
            margin-bottom: 13px;
        }


        /* ==========================================
           COMPANY NAME
        ========================================== */

        .company-name {
            display: block;
            color: #102a43;
            font-size: 16px;
            font-weight: 600;
            text-decoration: none;
            padding: 7px 5px;
            border-radius: 6px;
            transition: 0.2s;
        }

        .company-name:hover {
            background: #eaf4ff;
            color: #1e88e5;
        }


        /* ==========================================
           EMPTY MESSAGE
        ========================================== */

        .empty-company {
            padding: 30px;
            background: white;
            border: 1px solid #e1e8ef;
            border-radius: 10px;
            color: #829ab1;
            text-align: center;
            width: 100%;
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
           RESPONSIVE
        ========================================== */

        @media (max-width: 1000px) {

            .company-list {
                justify-content: flex-start;
            }

            .company-card {
                width: 180px;
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

            .company-header {
                display: block;
            }

            .company-actions {
                margin-top: 20px;
                flex-wrap: wrap;
            }

            .company-list {
                justify-content: center;
            }

            .company-card {
                width: 180px;
            }
        }


        @media (max-width: 450px) {

            .company-card {
                width: 100%;
                max-width: 280px;
            }

            .company-list {
                flex-direction: column;
                align-items: center;
            }

            .company-actions {
                flex-direction: column;
            }

            .company-btn {
                text-align: center;
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
                 MAIN CONTENT
            ========================================== -->

            <section class="admin-main">

                <!-- PAGE HEADER -->

                <div class="company-header">

                    <div>
                        <h1>Companies</h1>

                        <p>
                            Select a company to view its available products.
                        </p>
                    </div>

                </div>


                <!-- ACTION BUTTONS -->

                <div class="company-actions">

                    <asp:HyperLink
                        ID="ShowCompany"
                        runat="server"
                        NavigateUrl="Show_Products.aspx"
                        CssClass="company-btn products-btn">
                        View Products
                    </asp:HyperLink>


                    <asp:HyperLink
                        ID="ShowCart"
                        runat="server"
                        NavigateUrl="Add_To_Cart.aspx"
                        CssClass="company-btn cart-btn">
                        🛒 Add to Cart
                    </asp:HyperLink>
                                    
                   <a href="Add_Products.aspx" class="back-company">
    &larr; Back to Add Products
</a>
                

                </div>


                <!-- COMPANY LIST -->

                <div class="company-list">

                    <asp:DataList
                        ID="DataList1"
                        runat="server"
                        OnItemCommand="DataList1_ItemCommand"
                        RepeatDirection="Horizontal">

                        <ItemTemplate>

                            <div class="company-card">

                                <asp:Image
                                    ID="Image1"
                                    runat="server"
                                    CssClass="company-image"
                                    ImageUrl='<%# Eval("Comp_Cover_Img") %>' />

                                <asp:LinkButton
                                    ID="LinkButton1"
                                    runat="server"
                                    CssClass="company-name"
                                    CommandName="cmd_cid"
                                    CommandArgument='<%# Eval("Comp_Id") %>'
                                    Text='<%# Eval("Comp_Name") %>'>
                                </asp:LinkButton>

                            </div>

                        </ItemTemplate>

                    </asp:DataList>

                </div>

            </section>

        </div>

    </main>

</asp:Content>
