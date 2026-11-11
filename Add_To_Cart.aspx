<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add_To_Cart.aspx.cs" Inherits="medrian_1.Add_To_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* ================================
           MAIN CART PAGE
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

        /* ================================
           CART CONTENT
           ================================ */

        .cart-content {
            flex: 1;
            min-width: 0;
            padding: 35px;
            overflow-x: auto;
        }

        .cart-heading {
            margin-bottom: 25px;
        }

            .cart-heading h1 {
                color: #102a43;
                font-size: 32px;
                margin: 0 0 8px;
            }

            .cart-heading p {
                color: #627d98;
                font-size: 14px;
                margin: 0;
            }

        /* ================================
           GRIDVIEW TABLE
           ================================ */

        .cart-grid {
            width: 100%;
            min-width: 650px;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(16,42,67,0.08);
        }

            .cart-grid th {
                background: #102a43;
                color: white;
                padding: 16px 12px;
                text-align: center;
                font-size: 14px;
                border: 1px solid #29465f;
            }

            .cart-grid td {
                padding: 15px 12px;
                text-align: center;
                border: 1px solid #e5edf5;
                color: #334e68;
                font-size: 14px;
            }

            .cart-grid tr:nth-child(even) {
                background: #f8fbff;
            }

            .cart-grid tr:hover {
                background: #eef6ff;
            }

            .cart-grid img {
                object-fit: contain;
                border-radius: 6px;
            }

            /* ================================
           QUANTITY DROPDOWN
           ================================ */

            .cart-grid select {
                padding: 7px 10px;
                border: 1px solid #bcccdc;
                border-radius: 5px;
                background: white;
                color: #243447;
            }

            /* ================================
           GRIDVIEW BUTTONS
           ================================ */

            .cart-grid input[type="submit"],
            .cart-grid input[type="button"] {
                padding: 9px 13px;
                border: none;
                border-radius: 5px;
                background: #1e88e5;
                color: white;
                cursor: pointer;
                font-size: 13px;
                margin: 3px;
            }

                .cart-grid input[type="submit"]:hover,
                .cart-grid input[type="button"]:hover {
                    background: #1565c0;
                }

            .cart-grid input.remove-button {
                background: #e53935;
            }

                .cart-grid input.remove-button:hover {
                    background: #b71c1c;
                }

        /* ================================
           GRAND TOTAL
           ================================ */

        .cart-total {
            display: block;
            text-align: right;
            margin-top: 25px;
            padding: 20px;
            background: white;
            border-radius: 8px;
            border-right: 5px solid #1e88e5;
            box-shadow: 0 4px 15px rgba(16,42,67,0.06);
            color: #102a43;
            font-size: 23px;
            font-weight: bold;
        }

        /* ================================
           BACK BUTTON
           ================================ */

        .back-button {
            display: inline-block;
            margin-top: 22px;
            padding: 12px 22px;
            background: #627d98;
            color: white;
            text-decoration: none;
            border: none;
            border-radius: 6px;
            font-size: 14px;
            cursor: pointer;
            transition: 0.2s;
        }

            .back-button:hover {
                background: #334e68;
                color: white;
            }

        /* ================================
           RESPONSIVE DESIGN
           ================================ */

        @media (max-width: 800px) {
            .admin-wrapper {
                display: block;
            }

            .admin-sidebar {
                width: auto;
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

            .cart-content {
                padding: 25px 15px;
            }

            .cart-heading h1 {
                font-size: 26px;
            }

            .cart-total {
                font-size: 20px;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="admin-page">

        <div class="admin-wrapper">

            <!-- SIDEBAR -->

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

            <!-- CART CONTENT -->

            <section class="cart-content">

                <div class="cart-heading">
                    <h1>My Shopping Cart</h1>
                    <p>Review your travel accessories and update quantities.</p>
                </div>

                <div>

                    <asp:GridView ID="GridView1" runat="server"
                        CssClass="cart-grid"
                        AutoGenerateColumns="False"
                        DataKeyNames="Prod_Id"
                        OnRowCommand="GridView1_RowCommand"
                        OnRowEditing="GridView1_RowEditing"
                        OnRowCancelingEdit="GridView1_RowCancelingEdit"
                        OnRowUpdating="GridView1_RowUpdating"
                        EmptyDataText="Your shopping cart is empty.">

                        <Columns>

                            <asp:TemplateField HeaderText="Product ID">
                                <ItemTemplate>
                                    <asp:Label ID="lblProductId" runat="server"
                                        Text='<%# Eval("Prod_Id") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Product Image">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server"
                                        Height="60px"
                                        Width="65px"
                                        ImageUrl='<%# Eval("Prod_Img") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Product Model">
                                <ItemTemplate>
                                    <asp:Label ID="lblProductModel" runat="server"
                                        Text='<%# Eval("Prod_Model") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="lblProductPrice" runat="server"
                                        Text='<%# Eval("Prod_Price") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Quantity">

                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server"
                                        SelectedValue='<%# Bind("Quentity") %>'>

                                        <asp:ListItem Value="1">1</asp:ListItem>
                                        <asp:ListItem Value="2">2</asp:ListItem>
                                        <asp:ListItem Value="3">3</asp:ListItem>
                                        <asp:ListItem Value="4">4</asp:ListItem>
                                        <asp:ListItem Value="5">5</asp:ListItem>
                                        <asp:ListItem Value="6">6</asp:ListItem>

                                    </asp:DropDownList>
                                </EditItemTemplate>

                                <ItemTemplate>
                                    <asp:Label ID="lblQuantity" runat="server"
                                        Text='<%# Eval("Quentity") %>'>
                                    </asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>

                            <asp:CommandField HeaderText="Change Quantity"
                                ShowEditButton="True"
                                EditText="Change"
                                UpdateText="Save"
                                CancelText="Cancel" />

                            <asp:TemplateField HeaderText="Remove">
                                <ItemTemplate>
                                    <asp:Button ID="btnRemove" runat="server"
                                        CssClass="remove-button"
                                        CommandName="cmd_remove"
                                        CommandArgument='<%# Eval("Cart_Id") %>'
                                        Text="Remove"
                                        CausesValidation="False" />
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>

                <div>
                    <asp:Label ID="grand_total" runat="server"
                        CssClass="cart-total">
                    </asp:Label>
                </div>

                <!-- BACK BUTTON -->

                <div>
                    <asp:Button ID="btnBack" runat="server"
                        Text="← Back"
                        CssClass="back-button"
                        PostBackUrl="Show_Company.aspx"
                        CausesValidation="False" />
                </div>

            </section>

        </div>

    </main>


</asp:Content>
