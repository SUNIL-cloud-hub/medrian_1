<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="medrian_1.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            box-sizing: border-box;
        }

        .dashboard {
            font-family: Arial, sans-serif;
            background: #f5f7fa;
            min-height: 100vh;
            padding-bottom: 50px;
        }

        /* Welcome Section */
        .welcome {
            background: linear-gradient(135deg, #1e88e5, #42a5f5);
            color: white;
            padding: 55px 8%;
        }

        .welcome-content {
            max-width: 1200px;
            margin: auto;
        }

        .welcome h1 {
            font-size: 38px;
            margin-bottom: 10px;
        }

        .welcome p {
            font-size: 17px;
            margin-bottom: 25px;
        }

        .search-box {
            background: white;
            padding: 8px;
            border-radius: 8px;
            display: flex;
            max-width: 650px;
        }

        .search-box input {
            flex: 1;
            border: none;
            outline: none;
            padding: 15px;
            font-size: 15px;
        }

        .search-btn {
            background: #ff9800;
            color: white;
            border: none;
            padding: 0 25px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 15px;
        }

        .search-btn:hover {
            background: #f57c00;
        }

        /* Main Container */
        .container {
            max-width: 1200px;
            margin: 35px auto;
            padding: 0 20px;
        }

        /* Statistics */
        .stats {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            margin-bottom: 45px;
        }

        .stat-card {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 3px 12px rgba(0,0,0,0.08);
        }

        .stat-card h3 {
            font-size: 30px;
            margin: 0 0 8px;
            color: #1e88e5;
        }

        .stat-card p {
            margin: 0;
            color: #777;
        }

        /* Section Heading */
        .section-title {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .section-title h2 {
            color: #222;
            margin: 0;
        }

        .view-all {
            color: #1e88e5;
            text-decoration: none;
            font-weight: bold;
        }

        /* Destination Cards */
        .destinations {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
            margin-bottom: 50px;
        }

        .destination-card {
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 3px 12px rgba(0,0,0,0.08);
            transition: 0.3s;
        }

        .destination-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .destination-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .destination-content {
            padding: 18px;
        }

        .destination-content h3 {
            margin: 0 0 8px;
            color: #222;
        }

        .destination-content p {
            color: #777;
            line-height: 1.5;
            margin-bottom: 15px;
        }

        .price {
            color: #1e88e5;
            font-size: 18px;
            font-weight: bold;
        }

        .details-btn {
            float: right;
            background: #1e88e5;
            color: white;
            padding: 9px 15px;
            border-radius: 5px;
            text-decoration: none;
        }

        .details-btn:hover {
            background: #1565c0;
        }

        /* Quick Actions */
        .quick-actions {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .action-card {
            background: white;
            padding: 25px;
            text-align: center;
            border-radius: 12px;
            box-shadow: 0 3px 12px rgba(0,0,0,0.08);
            text-decoration: none;
            color: #333;
            transition: 0.3s;
        }

        .action-card:hover {
            transform: translateY(-4px);
            background: #e3f2fd;
        }

        .action-icon {
            font-size: 35px;
            margin-bottom: 12px;
        }

        .action-card h3 {
            margin: 5px 0;
        }

        .action-card p {
            color: #777;
            font-size: 14px;
        }

        /* Responsive */
        @media (max-width: 900px) {

            .stats {
                grid-template-columns: repeat(2, 1fr);
            }

            .destinations {
                grid-template-columns: repeat(2, 1fr);
            }

            .quick-actions {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 600px) {

            .welcome {
                padding: 40px 20px;
            }

            .welcome h1 {
                font-size: 28px;
            }

            .search-box {
                flex-direction: column;
                gap: 8px;
            }

            .search-btn {
                padding: 13px;
            }

            .stats,
            .destinations,
            .quick-actions {
                grid-template-columns: 1fr;
            }
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard">

        <!-- Welcome Section -->
        <section class="welcome">
            <div class="welcome-content">

                <h1>Welcome to TravelX! ✈️</h1>

                <p>
                    Discover amazing destinations, plan your next journey
                    and make unforgettable memories.
                </p>

                <div class="search-box">

                    <asp:TextBox ID="txtSearch"
                        runat="server"
                        placeholder="Search destination...">
                    </asp:TextBox>

                    <asp:Button ID="btnSearch"
                        runat="server"
                        Text="Search"
                        CssClass="search-btn" />

                </div>

            </div>
        </section>


        <!-- Main Dashboard -->
        <div class="container">

            <!-- Statistics -->
            <div class="stats">

                <div class="stat-card">
                    <h3>05</h3>
                    <p>My Bookings</p>
                </div>

                <div class="stat-card">
                    <h3>03</h3>
                    <p>Upcoming Trips</p>
                </div>

                <div class="stat-card">
                    <h3>08</h3>
                    <p>Wishlist</p>
                </div>

                <div class="stat-card">
                    <h3>12</h3>
                    <p>Destinations Visited</p>
                </div>

            </div>


            <!-- Popular Destinations -->
            <div class="section-title">

                <h2>Popular Destinations</h2>

                <a href="Packages.aspx" class="view-all">
                    View All
                </a>

            </div>


            <div class="destinations">

                <!-- Destination 1 -->
                <div class="destination-card">

                    <img src="images/goa.jpg"
                         alt="Goa" />

                    <div class="destination-content">

                        <h3>Goa</h3>

                        <p>
                            Enjoy beautiful beaches, nightlife,
                            adventure and relaxing holidays.
                        </p>

                        <span class="price">₹12,999</span>

                        <a href="PackageDetails.aspx"
                           class="details-btn">
                            View
                        </a>

                    </div>

                </div>


                <!-- Destination 2 -->
                <div class="destination-card">

                    <img src="images/manali.jpg"
                         alt="Manali" />

                    <div class="destination-content">

                        <h3>Manali</h3>

                        <p>
                            Experience mountains, snow,
                            adventure and peaceful nature.
                        </p>

                        <span class="price">₹15,999</span>

                        <a href="PackageDetails.aspx"
                           class="details-btn">
                            View
                        </a>

                    </div>

                </div>


                <!-- Destination 3 -->
                <div class="destination-card">

                    <img src="images/rajasthan.jpg"
                         alt="Rajasthan" />

                    <div class="destination-content">

                        <h3>Rajasthan</h3>

                        <p>
                            Explore royal palaces, forts,
                            culture and traditional food.
                        </p>

                        <span class="price">₹18,999</span>

                        <a href="PackageDetails.aspx"
                           class="details-btn">
                            View
                        </a>

                    </div>

                </div>

            </div>


            <!-- Quick Actions -->
            <div class="section-title">

                <h2>Quick Actions</h2>

            </div>


            <div class="quick-actions">

                <a href="Packages.aspx" class="action-card">

                    <div class="action-icon">🌍</div>

                    <h3>Browse Packages</h3>

                    <p>
                        Explore available travel packages
                    </p>

                </a>


                <a href="BookingHistory.aspx" class="action-card">

                    <div class="action-icon">📋</div>

                    <h3>My Bookings</h3>

                    <p>
                        Check your booking history
                    </p>

                </a>


                <a href="Wishlist.aspx" class="action-card">

                    <div class="action-icon">❤️</div>

                    <h3>Wishlist</h3>

                    <p>
                        View your saved destinations
                    </p>

                </a>


                <a href="Profile.aspx" class="action-card">

                    <div class="action-icon">👤</div>

                    <h3>My Profile</h3>

                    <p>
                        Manage your account details
                    </p>

                </a>

            </div>

        </div>

    </div>

</asp:Content>
