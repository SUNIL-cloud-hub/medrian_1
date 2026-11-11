
<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs"
    Inherits="medrian_1.AdminDashboard" %>

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
           TOP BAR
           ================================ */

        .admin-topbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
            gap: 20px;
        }

        .page-title h1 {
            margin: 0 0 5px;
            color: #102a43;
            font-size: 28px;
        }

        .page-title p {
            margin: 0;
            color: #718096;
            font-size: 14px;
        }

        .admin-user {
            display: flex;
            align-items: center;
            gap: 12px;
            background: white;
            padding: 8px 15px 8px 8px;
            border-radius: 30px;
            box-shadow: 0 3px 12px rgba(0,0,0,0.05);
        }

        .admin-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: #1e88e5;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
        }

        .admin-user strong {
            display: block;
            font-size: 14px;
            color: #243447;
        }

        .admin-user span {
            font-size: 11px;
            color: #718096;
        }


        /* ================================
           WELCOME BANNER
           ================================ */

        .welcome-banner {
            background: linear-gradient(120deg, #102a43, #1e88e5);
            border-radius: 14px;
            padding: 28px 32px;
            color: white;
            margin-bottom: 28px;
            position: relative;
            overflow: hidden;
        }

        .welcome-banner:after {
            content: "✈";
            position: absolute;
            right: 55px;
            top: 12px;
            font-size: 100px;
            opacity: 0.08;
            transform: rotate(-15deg);
        }

        .welcome-banner h2 {
            margin: 0 0 8px;
            color: white;
            font-size: 23px;
        }

        .welcome-banner p {
            margin: 0;
            color: #dbeafe;
            font-size: 14px;
        }


        /* ================================
           STATISTICS
           ================================ */

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
            margin-bottom: 28px;
        }

        .stat-card {
            background: white;
            border-radius: 12px;
            padding: 22px;
            border: 1px solid #e7edf3;
            box-shadow: 0 3px 12px rgba(0,0,0,0.04);
        }

        .stat-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 17px;
        }

        .stat-title {
            color: #718096;
            font-size: 13px;
        }

        .stat-icon {
            width: 38px;
            height: 38px;
            border-radius: 9px;
            background: #e8f3ff;
            color: #1e88e5;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 18px;
        }

        .stat-number {
            font-size: 27px;
            font-weight: bold;
            color: #102a43;
            margin-bottom: 7px;
        }

        .stat-change {
            font-size: 11px;
            color: #2e7d32;
        }


        /* ================================
           CONTENT GRID
           ================================ */

        .content-grid {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 22px;
        }

        .admin-card {
            background: white;
            border-radius: 12px;
            border: 1px solid #e7edf3;
            box-shadow: 0 3px 12px rgba(0,0,0,0.04);
            padding: 24px;
            margin-bottom: 22px;
        }

        .card-heading {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .card-heading h2 {
            margin: 0;
            color: #102a43;
            font-size: 18px;
        }

        .card-heading a {
            color: #1e88e5;
            text-decoration: none;
            font-size: 12px;
            font-weight: bold;
        }


        /* ================================
           RECENT BOOKINGS
           ================================ */

        .booking-table {
            width: 100%;
            border-collapse: collapse;
        }

        .booking-table th {
            text-align: left;
            padding: 12px 10px;
            background: #f7f9fc;
            color: #718096;
            font-size: 11px;
            text-transform: uppercase;
        }

        .booking-table td {
            padding: 15px 10px;
            border-bottom: 1px solid #edf1f5;
            font-size: 13px;
            color: #4a5568;
        }

        .booking-table tr:last-child td {
            border-bottom: none;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 9px;
        }

        .customer-avatar {
            width: 32px;
            height: 32px;
            background: #e8f3ff;
            color: #1e88e5;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 12px;
            font-weight: bold;
        }

        .customer strong {
            display: block;
            color: #243447;
            font-size: 12px;
        }

        .customer small {
            color: #8a96a3;
            font-size: 10px;
        }

        .status {
            display: inline-block;
            padding: 5px 9px;
            border-radius: 15px;
            font-size: 10px;
            font-weight: bold;
        }

        .status-confirmed {
            background: #e8f5e9;
            color: #2e7d32;
        }

        .status-pending {
            background: #fff4e5;
            color: #ef6c00;
        }

        .status-cancelled {
            background: #ffebee;
            color: #c62828;
        }


        /* ================================
           QUICK MANAGEMENT
           ================================ */

        .management-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 12px;
        }

        .management-item {
            border: 1px solid #e5ebf0;
            border-radius: 9px;
            padding: 16px;
            text-decoration: none;
            transition: 0.2s;
        }

        .management-item:hover {
            border-color: #1e88e5;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.06);
        }

        .management-item .m-icon {
            font-size: 22px;
            margin-bottom: 10px;
        }

        .management-item strong {
            display: block;
            color: #243447;
            font-size: 13px;
            margin-bottom: 4px;
        }

        .management-item span {
            color: #8a96a3;
            font-size: 10px;
        }


        /* ================================
           BOOKING STATUS
           ================================ */

        .progress-item {
            margin-bottom: 18px;
        }

        .progress-header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 7px;
            font-size: 12px;
        }

        .progress-header span:first-child {
            color: #4a5568;
        }

        .progress-header span:last-child {
            font-weight: bold;
            color: #243447;
        }

        .progress-bar {
            height: 7px;
            background: #edf1f5;
            border-radius: 10px;
            overflow: hidden;
        }

        .progress-fill {
            height: 100%;
            background: #1e88e5;
            border-radius: 10px;
        }

        .progress-fill.pending {
            background: #ff9800;
        }

        .progress-fill.cancelled {
            background: #ef5350;
        }


        /* ================================
           RESPONSIVE
           ================================ */

        @media (max-width: 1100px) {

            .stats-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .content-grid {
                grid-template-columns: 1fr;
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
        }


        @media (max-width: 600px) {

            .admin-topbar {
                flex-direction: column;
                align-items: flex-start;
            }

            .stats-grid {
                grid-template-columns: 1fr;
            }

            .management-grid {
                grid-template-columns: 1fr;
            }

            .booking-table {
                min-width: 650px;
            }

            .admin-card {
                overflow-x: auto;
            }

            .welcome-banner {
                padding: 25px 20px;
            }

            .welcome-banner:after {
                display: none;
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
                        <a href="AdminDashboard.aspx" class="active">
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


                <!-- TOP BAR -->

                <div class="admin-topbar">

                    <div class="page-title">

                        <h1>Dashboard</h1>

                        <p>
                            Manage and monitor your travel website.
                        </p>

                    </div>


                    <div class="admin-user">

                        <div class="admin-avatar">
                            A
                        </div>

                        <div>
                            <strong>Administrator</strong>
                            <span>Travel Manager</span>
                        </div>

                    </div>

                </div>


                <!-- WELCOME -->

                <div class="welcome-banner">

                    <h2>Welcome back, Admin! ✈️</h2>

                    <p>
                        Here's what's happening with your travel business today.
                        Manage bookings, packages and customers from one place.
                    </p>

                </div>


                <!-- ==========================================
                     STATISTICS
                     ========================================== -->

                <div class="stats-grid">


                    <div class="stat-card">

                        <div class="stat-top">

                            <span class="stat-title">
                                Total Users
                            </span>

                            <div class="stat-icon">
                                👥
                            </div>

                        </div>

                       <div class="stat-number">
    <asp:Label ID="lblTotalUsers" runat="server" Text="0"></asp:Label>
</div>

                        <div class="stat-change">
                            ↑ 12% this month
                        </div>

                    </div>


                    <div class="stat-card">

                        <div class="stat-top">

                            <span class="stat-title">
                                Travel Packages
                            </span>

                            <div class="stat-icon">
                                🌍
                            </div>

                        </div>

                        <div class="stat-number">
                            24
                        </div>

                        <div class="stat-change">
                            ↑ 4 new packages
                        </div>

                    </div>


                    <div class="stat-card">

                        <div class="stat-top">

                            <span class="stat-title">
                                Total Bookings
                            </span>

                            <div class="stat-icon">
                                🧳
                            </div>

                        </div>

                        <div class="stat-number">
                            86
                        </div>

                        <div class="stat-change">
                            ↑ 18% this month
                        </div>

                    </div>


                    <div class="stat-card">

                        <div class="stat-top">

                            <span class="stat-title">
                                Revenue
                            </span>

                            <div class="stat-icon">
                                ₹
                            </div>

                        </div>

                        <div class="stat-number">
                            ₹4.8L
                        </div>

                        <div class="stat-change">
                            ↑ 15% this month
                        </div>

                    </div>

                </div>


                <!-- ==========================================
                     CONTENT
                     ========================================== -->

                <div class="content-grid">


                    <!-- LEFT COLUMN -->

                    <div>


                        <!-- RECENT BOOKINGS -->

                        <div class="admin-card">

                            <div class="card-heading">

                                <h2>Recent Bookings</h2>

                                <a href="ManageBookings.aspx">
                                    View All
                                </a>

                            </div>


                            <table class="booking-table">

                                <thead>

                                    <tr>

                                        <th>Customer</th>

                                        <th>Destination</th>

                                        <th>Date</th>

                                        <th>Amount</th>

                                        <th>Status</th>

                                    </tr>

                                </thead>


                                <tbody>


                                    <tr>

                                        <td>

                                            <div class="customer">

                                                <div class="customer-avatar">
                                                    RK
                                                </div>

                                                <div>

                                                    <strong>
                                                        Rahul Kumar
                                                    </strong>

                                                    <small>
                                                        #BK00124
                                                    </small>

                                                </div>

                                            </div>

                                        </td>

                                        <td>
                                            Goa
                                        </td>

                                        <td>
                                            12 Oct 2026
                                        </td>

                                        <td>
                                            ₹15,999
                                        </td>

                                        <td>

                                            <span class="status status-confirmed">
                                                Confirmed
                                            </span>

                                        </td>

                                    </tr>


                                    <tr>

                                        <td>

                                            <div class="customer">

                                                <div class="customer-avatar">
                                                    PS
                                                </div>

                                                <div>

                                                    <strong>
                                                        Priya Shah
                                                    </strong>

                                                    <small>
                                                        #BK00123
                                                    </small>

                                                </div>

                                            </div>

                                        </td>

                                        <td>
                                            Manali
                                        </td>

                                        <td>
                                            18 Oct 2026
                                        </td>

                                        <td>
                                            ₹22,500
                                        </td>

                                        <td>

                                            <span class="status status-pending">
                                                Pending
                                            </span>

                                        </td>

                                    </tr>


                                    <tr>

                                        <td>

                                            <div class="customer">

                                                <div class="customer-avatar">
                                                    AM
                                                </div>

                                                <div>

                                                    <strong>
                                                        Amit Mehta
                                                    </strong>

                                                    <small>
                                                        #BK00122
                                                    </small>

                                                </div>

                                            </div>

                                        </td>

                                        <td>
                                            Rajasthan
                                        </td>

                                        <td>
                                            21 Oct 2026
                                        </td>

                                        <td>
                                            ₹18,999
                                        </td>

                                        <td>

                                            <span class="status status-confirmed">
                                                Confirmed
                                            </span>

                                        </td>

                                    </tr>


                                    <tr>

                                        <td>

                                            <div class="customer">

                                                <div class="customer-avatar">
                                                    NS
                                                </div>

                                                <div>

                                                    <strong>
                                                        Neha Singh
                                                    </strong>

                                                    <small>
                                                        #BK00121
                                                    </small>

                                                </div>

                                            </div>

                                        </td>

                                        <td>
                                            Kerala
                                        </td>

                                        <td>
                                            25 Oct 2026
                                        </td>

                                        <td>
                                            ₹19,500
                                        </td>

                                        <td>

                                            <span class="status status-cancelled">
                                                Cancelled
                                            </span>

                                        </td>

                                    </tr>


                                </tbody>

                            </table>

                        </div>


                        <!-- QUICK MANAGEMENT -->

                        <div class="admin-card">

                            <div class="card-heading">

                                <h2>Quick Management</h2>

                            </div>


                            <div class="management-grid">


                                <a href="ManageUsers.aspx"
                                   class="management-item">

                                    <div class="m-icon">
                                        👥
                                    </div>

                                    <strong>
                                        Manage Users
                                    </strong>

                                    <span>
                                        View and manage customers
                                    </span>

                                </a>


                                <a href="ManagePackages.aspx"
                                   class="management-item">

                                    <div class="m-icon">
                                        🌍
                                    </div>

                                    <strong>
                                        Travel Packages
                                    </strong>

                                    <span>
                                        Add or edit destinations
                                    </span>

                                </a>


                                <a href="ManageBookings.aspx"
                                   class="management-item">

                                    <div class="m-icon">
                                        🧳
                                    </div>

                                    <strong>
                                        Manage Bookings
                                    </strong>

                                    <span>
                                        Approve or reject bookings
                                    </span>

                                </a>


                                <a href="ManageFeedback.aspx"
                                   class="management-item">

                                    <div class="m-icon">
                                        💬
                                    </div>

                                    <strong>
                                        Customer Feedback
                                    </strong>

                                    <span>
                                        Review customer feedback
                                    </span>

                                </a>


                            </div>

                        </div>


                    </div>


                    <!-- RIGHT COLUMN -->

                    <div>


                        <!-- BOOKING STATUS -->

                        <div class="admin-card">

                            <div class="card-heading">

                                <h2>Booking Overview</h2>

                            </div>


                            <div class="progress-item">

                                <div class="progress-header">

                                    <span>
                                        Confirmed
                                    </span>

                                    <span>
                                        62
                                    </span>

                                </div>

                                <div class="progress-bar">

                                    <div class="progress-fill"
                                         style="width:72%;">
                                    </div>

                                </div>

                            </div>


                            <div class="progress-item">

                                <div class="progress-header">

                                    <span>
                                        Pending
                                    </span>

                                    <span>
                                        12
                                    </span>

                                </div>

                                <div class="progress-bar">

                                    <div class="progress-fill pending"
                                         style="width:35%;">
                                    </div>

                                </div>

                            </div>


                            <div class="progress-item">

                                <div class="progress-header">

                                    <span>
                                        Cancelled
                                    </span>

                                    <span>
                                        12
                                    </span>

                                </div>

                                <div class="progress-bar">

                                    <div class="progress-fill cancelled"
                                         style="width:25%;">
                                    </div>

                                </div>

                            </div>

                        </div>


                        <!-- ADMIN INFORMATION -->

                        <div class="admin-card">

                            <div class="card-heading">

                                <h2>Admin Information</h2>

                            </div>


                            <p style="color:#718096; font-size:13px; line-height:1.7;">

                                You are currently managing the
                                <strong>Meridian Travel</strong>
                                administration panel.

                            </p>


                            <div style="
                                background:#f7f9fc;
                                padding:15px;
                                border-radius:8px;
                                margin-top:15px;
                            ">

                                <strong style="
                                    display:block;
                                    color:#243447;
                                    font-size:13px;
                                    margin-bottom:5px;
                                ">
                                    Administrator Access
                                </strong>

                                <span style="
                                    color:#718096;
                                    font-size:11px;
                                ">
                                    Users • Packages • Bookings • Feedback
                                </span>

                            </div>

                        </div>


                        <!-- PENDING ACTION -->

                        <div class="admin-card">

                            <div class="card-heading">

                                <h2>Action Required</h2>

                            </div>


                            <div style="
                                background:#fff8e8;
                                border-left:4px solid #ff9800;
                                padding:15px;
                                border-radius:6px;
                            ">

                                <strong style="
                                    display:block;
                                    color:#e65100;
                                    font-size:13px;
                                    margin-bottom:6px;
                                ">
                                    12 bookings pending
                                </strong>

                                <span style="
                                    color:#795548;
                                    font-size:11px;
                                    line-height:1.5;
                                ">
                                    Review pending bookings and
                                    approve or reject them.
                                </span>

                            </div>


                            <a href="ManageBookings.aspx"
                               style="
                               display:block;
                               text-align:center;
                               background:#1e88e5;
                               color:white;
                               padding:11px;
                               border-radius:7px;
                               text-decoration:none;
                               font-size:12px;
                               font-weight:bold;
                               margin-top:15px;
                               ">
                                Review Bookings
                            </a>

                        </div>


                    </div>


                </div>

            </section>

        </div>

    </main>

</asp:Content>