<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add_Products.aspx.cs" Inherits="medrian_1.Add_Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        /* ================================
           ADMIN DASHBOARD
        ================================ */

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
            box-shadow: 0 3px 18px rgba(0,0,0,0.06);
        }


        /* ================================
           SIDEBAR
        ================================ */

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


        /* ================================
           SIDEBAR MENU
        ================================ */

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


        /* ================================
           MAIN CONTENT
        ================================ */

        .admin-main {
            flex: 1;
            padding: 30px 35px 50px;
            overflow: hidden;
        }


        /* ================================
           ADD PRODUCT CONTENT AREA
        ================================ */

        .admin-wrapper > section {
            flex: 1;
            padding: 38px 45px 60px;
            background: #f8fafc;
            box-sizing: border-box;
        }


        /* ================================
           PAGE TITLE
        ================================ */

        .admin-wrapper > section > div:first-child {
            background: #ffffff;
            padding: 22px 28px;
            border-radius: 12px;
            border-left: 5px solid #1e88e5;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            margin-bottom: 20px;
        }

        .admin-wrapper > section > div:first-child h1 {
            margin: 0;
            color: #102a43;
            font-size: 29px;
            font-weight: 700;
        }


        /* ================================
           VIEW COMPANIES LINK
        ================================ */

        .admin-wrapper > section > div:nth-child(2) {
            margin-bottom: 12px;
        }

        #<%= ShowCompany.ClientID %> {
            display: inline-block;
            background: #102a43;
            color: white;
            text-decoration: none;
            padding: 11px 20px;
            border-radius: 7px;
            font-size: 14px;
            font-weight: 600;
            transition: 0.25s ease;
        }

        #<%= ShowCompany.ClientID %>:hover {
            background: #1e88e5;
            transform: translateY(-2px);
        }


        /* ================================
           LINK BUTTON
        ================================ */

        .admin-wrapper > section > div:nth-child(3) {
            margin-bottom: 20px;
        }

      


        /* ================================
           FORM CARD
        ================================ */

        .admin-wrapper > section > div:nth-child(n+4) {
            background: #ffffff;
            padding: 18px 22px;
            margin-bottom: 10px;
            border-radius: 9px;
            border: 1px solid #e6ebf1;
            box-shadow: 0 2px 8px rgba(0,0,0,0.03);
            box-sizing: border-box;
        }


        /* ================================
           FORM LABELS
        ================================ */

        .admin-wrapper > section > div label {
            display: inline-block;
            width: 155px;
            color: #34495e;
            font-size: 15px;
            font-weight: 600;
            vertical-align: top;
            padding-top: 10px;
            box-sizing: border-box;
        }


        /* ================================
           DROPDOWN
        ================================ */

        #<%= drpcompid.ClientID %> {
            width: calc(100% - 165px);
            max-width: 700px;
            height: 42px;
            padding: 8px 12px;
            border: 1px solid #ccd6e0;
            border-radius: 7px;
            background: #fbfcfe;
            color: #243447;
            font-size: 14px;
            outline: none;
            cursor: pointer;
            box-sizing: border-box;
            transition: 0.2s ease;
        }

        #<%= drpcompid.ClientID %>:focus {
            border-color: #1e88e5;
            background: #ffffff;
            box-shadow: 0 0 0 3px rgba(30,136,229,0.10);
        }


        /* ================================
           TEXTBOXES
        ================================ */

        #<%= txtmodel.ClientID %>,
        #<%= txtdesc.ClientID %>,
        #<%= txtweight.ClientID %>,
        #<%= txtconfig.ClientID %>,
        #<%= txtprice.ClientID %> {
            width: calc(100% - 165px);
            max-width: 700px;
            padding: 11px 13px;
            border: 1px solid #ccd6e0;
            border-radius: 7px;
            background: #fbfcfe;
            color: #243447;
            font-size: 14px;
            outline: none;
            box-sizing: border-box;
            transition: 0.2s ease;
        }

        #<%= txtmodel.ClientID %>,
        #<%= txtweight.ClientID %>,
        #<%= txtprice.ClientID %> {
            height: 42px;
        }

        #<%= txtdesc.ClientID %>,
        #<%= txtconfig.ClientID %> {
            min-height: 85px;
            resize: vertical;
            line-height: 1.5;
        }

        #<%= txtmodel.ClientID %>:focus,
        #<%= txtdesc.ClientID %>:focus,
        #<%= txtweight.ClientID %>:focus,
        #<%= txtconfig.ClientID %>:focus,
        #<%= txtprice.ClientID %>:focus {
            border-color: #1e88e5;
            background: #ffffff;
            box-shadow: 0 0 0 3px rgba(30,136,229,0.10);
        }


        /* ================================
           FILE UPLOAD
        ================================ */

        #<%= imgUpload.ClientID %> {
            width: calc(100% - 165px);
            max-width: 700px;
            padding: 9px;
            border: 1px solid #ccd6e0;
            border-radius: 7px;
            background: #fbfcfe;
            color: #536878;
            font-size: 13px;
            box-sizing: border-box;
        }


        /* ================================
           PRICE LABEL + TEXTBOX
           These are outside a div in your
           original HTML, so style them here.
        ================================ */

        #<%= Label7.ClientID %> {
            display: inline-block;
            width: 155px;
            color: #34495e;
            font-size: 15px;
            font-weight: 600;
            padding: 10px 0 0 22px;
            box-sizing: border-box;
            vertical-align: top;
        }


        /* ================================
           ADD PRODUCT BUTTON
        ================================ */

        #<%= btnAdd.ClientID %> {
            background: #1e88e5;
            color: white;
            border: none;
            padding: 12px 28px;
            border-radius: 7px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.25s ease;
            box-shadow: none;
        }

        #<%= btnAdd.ClientID %>:hover {
            background: #1565c0;
            transform: translateY(-2px);
            box-shadow: 0 5px 12px rgba(30,136,229,0.25);
        }

        #<%= btnAdd.ClientID %>:active {
            transform: translateY(0);
        }


        /* ================================
           FORM LAST BUTTON AREA
        ================================ */

        .admin-wrapper > section > div:last-child {
            margin-top: 18px;
            padding: 20px 22px;
            text-align: right;
        }



        /* ================================
           HOVER EFFECT FOR FORM CARDS
        ================================ */

        .admin-wrapper > section > div:nth-child(n+4):not(:last-child) {
            transition: 0.2s ease;
        }

        .admin-wrapper > section > div:nth-child(n+4):not(:last-child):hover {
            border-color: #d6e4f2;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
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



        /* ================================
           RESPONSIVE DESIGN
        ================================ */

        @media (max-width: 1000px) {

            .admin-wrapper {
                flex-direction: column;
            }

            .admin-sidebar {
                width: 100%;
            }

            .admin-wrapper > section {
                padding: 30px 25px 45px;
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

            .admin-wrapper > section {
                padding: 25px 18px 40px;
            }
        }


        @media (max-width: 600px) {

            .admin-wrapper > section > div:first-child {
                padding: 20px;
            }

            .admin-wrapper > section > div:first-child h1 {
                font-size: 24px;
            }

            .admin-wrapper > section > div:nth-child(n+4) {
                padding: 16px;
            }

            .admin-wrapper > section > div label {
                display: block;
                width: 100%;
                padding-top: 0;
                margin-bottom: 7px;
            }

            #<%= drpcompid.ClientID %>,
            #<%= txtmodel.ClientID %>,
            #<%= txtdesc.ClientID %>,
            #<%= txtweight.ClientID %>,
            #<%= txtconfig.ClientID %>,
            #<%= imgUpload.ClientID %>,
            #<%= txtprice.ClientID %> {
                width: 100%;
                max-width: 100%;
            }

            #<%= Label7.ClientID %> {
                display: block;
                width: 100%;
                padding: 0;
                margin-bottom: 7px;
            }

            .admin-wrapper > section > div:last-child {
                text-align: left;
            }

            #<%= btnAdd.ClientID %> {
                width: 100%;
            }
        }


        @media (max-width: 450px) {

            .admin-sidebar {
                padding: 12px;
            }

            .admin-wrapper > section {
                padding: 15px 10px 30px;
            }

            .sidebar-menu a {
                padding: 10px;
                font-size: 13px;
            }

            .admin-logo h2 {
                font-size: 20px;
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
                        <a href="ManageUsers.aspx" >
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


            <section>

                <div>
                    <h1>Add Products</h1>
                </div>

                <div>
                    <asp:HyperLink ID="ShowCompany" runat="server" NavigateUrl="~/Show_Company.aspx">View Companies</asp:HyperLink>
                </div>

                <div>
                   <a href="ManageShop.aspx" class="back-company">
    &larr; Back to Shop
</a>
                </div>

                <div>
                    <asp:Label ID="Label1" runat="server" Text="Company"></asp:Label>

                    <asp:DropDownList ID="drpcompid" runat="server" AutoPostBack="True">
                        <asp:ListItem>---Select Company---</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div>
                    <asp:Label ID="Label2" runat="server" Text="Product Model"></asp:Label>

                    <asp:TextBox ID="txtmodel" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>

                    <asp:TextBox ID="txtdesc" runat="server" Columns="4" TextMode="MultiLine"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label4" runat="server" Text="Weight"></asp:Label>

                    <asp:TextBox ID="txtweight" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label5" runat="server" Text="Configuration"></asp:Label>

                    <asp:TextBox ID="txtconfig" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label6" runat="server" Text="Product Image"></asp:Label>

                    <asp:FileUpload ID="imgUpload" runat="server" />
                </div>

                <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>

                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>

                <div>
                    <asp:Button ID="btnAdd" runat="server" Text="Add Products" OnClick="btnAdd_Click1" />
                </div>

            </section>

        </div>

    </main>

</asp:Content>
