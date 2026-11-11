
<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="login.aspx.cs"
    Inherits="medrian_1.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .auth-section {
            padding: 60px 0;
        }

        .auth-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            max-width: 1100px;
            margin: auto;
            min-height: 650px;
            border-radius: 18px;
            overflow: hidden;
            box-shadow: 0 10px 35px rgba(0,0,0,0.10);
        }

        .auth-art {
            background-size: cover;
            background-position: center;
            min-height: 650px;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            color: white;
            position: relative;
        }

        .auth-art::before {
            content: "";
            position: absolute;
            inset: 0;
            background: rgba(0,0,0,0.25);
        }

        .auth-brand,
        .quote-line {
            position: relative;
            z-index: 1;
        }

        .auth-brand {
            font-size: 30px;
            font-weight: 700;
        }

        .auth-brand em {
            color: #2d7ff9;
            font-style: normal;
        }

        .quote-line {
            font-size: 22px;
            line-height: 1.5;
            max-width: 400px;
        }

        .auth-form-wrap {
            padding: 55px 50px;
            background: white;
        }

        .auth-form-wrap h1 {
            font-size: 38px;
            margin-bottom: 10px;
        }

        .lede-sm {
            color: #777;
            margin-bottom: 30px;
        }

        .field {
            margin-bottom: 20px;
        }

        .field label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
        }

        .form-control {
            width: 100%;
            padding: 13px 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 15px;
            box-sizing: border-box;
        }

        .form-foot-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
            font-size: 14px;
        }

        .form-foot-row a,
        .form-note a,
        .support-note a {
            color: #2563eb;
            text-decoration: none;
        }

        .btn-block {
            width: 100%;
        }

        .divider-or {
            text-align: center;
            margin: 25px 0;
            color: #888;
        }

        .field-row {
            display: flex;
            gap: 15px;
        }

        .form-note {
            text-align: center;
            margin-top: 25px;
        }

        .support-note {
            font-size: 13px;
            color: #777;
            line-height: 1.6;
            margin-top: 25px;
        }

        .mini-steps {
            margin-top: 30px;
            border-top: 1px solid #eee;
            padding-top: 20px;
        }

        .mini-step {
            display: flex;
            gap: 12px;
            margin-bottom: 15px;
        }

        .mini-step .num {
            font-size: 22px;
            color: #2563eb;
        }

        .mini-step p {
            margin: 0;
            font-size: 13px;
            line-height: 1.5;
            color: #666;
        }

        .error-msg {
            color: #d93025;
            font-size: 13px;
            display: block;
            margin-top: 5px;
        }

        .login-message {
            display: block;
            margin-bottom: 15px;
            color: #d93025;
            font-size: 14px;
        }

        @media (max-width: 768px) {

            .auth-grid {
                grid-template-columns: 1fr;
            }

            .auth-art {
                min-height: 300px;
            }

            .auth-form-wrap {
                padding: 35px 25px;
            }

            .field-row {
                flex-direction: column;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <main>

        <section class="page-section auth-section">

            <div class="container">

                <div class="auth-grid">

                    <!-- LEFT IMAGE -->
                    <div class="auth-art"
                         style="background-image:url('https://loremflickr.com/700/900/lake,mountains,calm?lock=107');">

                        <div class="auth-brand">
                            Meridian<em>.</em>
                        </div>

                        <p class="quote-line">
                            "The first trip where I didn't need a holiday afterward."
                        </p>

                    </div>


                    <!-- RIGHT LOGIN FORM -->
                    <div class="auth-form-wrap">

                        <h1>Welcome back</h1>

                        <p class="lede-sm">
                            Log in to pick up where your planning left off.
                        </p>


                        <!-- MESSAGE -->
                        <asp:Label ID="lblMessage"
                            runat="server"
                            CssClass="login-message">
                        </asp:Label>


                        <!-- EMAIL -->

                        <div class="field">

                            <label for="txtEmail">
                                Email
                            </label>


                            <asp:TextBox ID="txtEmail"
                                runat="server"
                                TextMode="Email"
                                CssClass="form-control">
                            </asp:TextBox>

                            <asp:RequiredFieldValidator
                                ID="rfvEmail"
                                runat="server"
                                ControlToValidate="txtEmail"
                                ErrorMessage="Please enter your email."
                                CssClass="error-msg"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>

                        </div>


                        <!-- PASSWORD -->
                        <div class="field">

                            <label for="txtPassword">
                                Password
                            </label>

                            <asp:TextBox ID="txtPassword"
                                runat="server"
                                TextMode="Password"
                                CssClass="form-control">
                            </asp:TextBox>

                            <asp:RequiredFieldValidator
                                ID="rfvPassword"
                                runat="server"
                                ControlToValidate="txtPassword"
                                ErrorMessage="Please enter your password."
                                CssClass="error-msg"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>

                        </div>


                        <!-- REMEMBER ME + FORGOT PASSWORD -->
                        <div class="form-foot-row">

                            <span>
                                <asp:CheckBox ID="chkRemember"
                                    runat="server" />

                                Remember me
                            </span>

                            <a href="#">
                                Forgot password?
                            </a>

                        </div>


                        <!-- LOGIN BUTTON -->
                        <asp:Button ID="btnLogin"
                            runat="server"
                            Text="Log in"
                            CssClass="btn btn-primary btn-block"
                            OnClick="btnLogin_Click" />


                        <!-- SOCIAL LOGIN -->
                        <div class="divider-or">
                            or continue with
                        </div>

                        <div class="field-row">

                            <a href="#"
                               class="btn btn-outline btn-block">
                                Google
                            </a>

                            <a href="#"
                               class="btn btn-outline btn-block">
                                Apple
                            </a>

                        </div>


                        <!-- REGISTER LINK -->
                        <p class="form-note">

                            New to Meridian?

                            <a href="register.aspx">
                                Create an account
                            </a>

                        </p>


                        <!-- SUPPORT -->
                        <p class="support-note">

                            Having trouble signing in?
                            Reach your planner directly, or

                            <a href="Contact.aspx">
                                contact support
                            </a>

                            and we'll help you get back into your account.

                        </p>


                        <!-- MINI STEPS -->
                        <div class="mini-steps">

                            <div class="mini-step">

                                <span class="num">•</span>

                                <p>
                                    <strong>Your itinerary stays put.</strong>
                                    Draft routes, edits, and messages with your planner
                                    are all saved to your account.
                                </p>

                            </div>


                            <div class="mini-step">

                                <span class="num">•</span>

                                <p>
                                    <strong>One login, every trip.</strong>
                                    Past and upcoming itineraries live in the same place.
                                </p>

                            </div>


                            <div class="mini-step">

                                <span class="num">•</span>

                                <p>
                                    <strong>Support doesn't stop at booking.</strong>
                                    Your planner stays reachable while you're travelling.
                                </p>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </section>

    </main>

</asp:Content>
