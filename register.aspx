<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="medrian_1.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>

        <section class="page-section auth-section">
            <div class="container">
                <div class="auth-grid">

                    <div class="auth-art" style="background-image: url('https://loremflickr.com/700/900/ocean,calm,horizon?lock=106');">
                        <div class="auth-brand">Meridian<em>.</em></div>
                        <p class="quote-line">"Plan less. Notice more."</p>
                    </div>

                    <div class="auth-form-wrap">
                        <h1>Create your account</h1>
                        <p class="lede-sm">Takes about a minute. The real planning starts after.</p>



                        <form data-validate data-success-message="Account created. Welcome to Meridian.">
                            <div class="field">
                                <label for="txtName">
                                    Full name
                                <asp:TextBox
                                    ID="txtName"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter your full name">
                                </asp:TextBox>

                                    <asp:RequiredFieldValidator
                                        ID="rfvName"
                                        runat="server"
                                        ControlToValidate="txtName"
                                        ErrorMessage="Please enter your name."
                                        CssClass="error-msg"
                                        Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                            </div>
                            <div class="field">
                                <label for="txtEmail">
                                    Email
                               
                                </label>
                                <asp:TextBox
                                    ID="txtEmail"
                                    runat="server"
                                    TextMode="Email"
                                    CssClass="form-control"
                                    placeholder="Enter your email">
                                </asp:TextBox>

                                <asp:RequiredFieldValidator
                                    ID="rfvEmail"
                                    runat="server"
                                    ControlToValidate="txtEmail"
                                    ErrorMessage="Please enter your email."
                                    CssClass="error-msg"
                                    Display="Dynamic">
                                </asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator
                                    ID="revEmail"
                                    runat="server"
                                    ControlToValidate="txtEmail"
                                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                                    ErrorMessage="Please enter a valid email."
                                    CssClass="error-msg"
                                    Display="Dynamic">
                                </asp:RegularExpressionValidator>
                            </div>
                            <div class="field-row">
                                <div class="field">
                                    <label for="txtPassword">
                                        Password
                                   
                                    </label>
                                    <asp:TextBox
                                        ID="txtPassword"
                                        runat="server"
                                        TextMode="Password"
                                        CssClass="form-control"
                                        placeholder="Enter password">
                                    </asp:TextBox>
                                    <span class="hint">At least 8 characters</span>

                                    <asp:RequiredFieldValidator
                                        ID="rfvPassword"
                                        runat="server"
                                        ControlToValidate="txtPassword"
                                        ErrorMessage="Enter your password."
                                        CssClass="error-msg"
                                        Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="field">
                                    <label for="txtConfirmPassword">
                                        Confirm password
                                   
                                    </label>
                                    <asp:TextBox
                                        ID="txtConfirmPassword"
                                        runat="server"
                                        TextMode="Password"
                                        CssClass="form-control"
                                        placeholder="Confirm password">
                                    </asp:TextBox>
                                    <span class="error-msg">Passwords do not match.</span>
                                    <asp:CompareValidator
                                        ID="cvPassword"
                                        runat="server"
                                        ControlToValidate="txtConfirmPassword"
                                        ControlToCompare="txtPassword"
                                        ErrorMessage="Passwords do not match."
                                        CssClass="error-msg"
                                        Display="Dynamic">
                                    </asp:CompareValidator>
                                </div>
                            </div>
                            <div class="checkbox-row">
                                <asp:CheckBox
                                    ID="chkTerms"
                                    runat="server" />
                                <label for="<%= chkTerms.ClientID %>">
                                    I agree to the
                                   
                                    <a href="#">Terms of Service</a>
                                    and
                                   
                                    <a href="#">Privacy Policy</a>.
                               
                                </label>
                            </div>
                            <asp:Button
                                ID="btnRegister"
                                runat="server"
                                Text="Create account"
                                CssClass="btn btn-primary btn-block"
                                OnClick="btnRegister_Click" />
                            <div class="form-success"></div>

                            <asp:Label
                                ID="lblMessage"
                                runat="server"
                                CssClass="form-success">
                            </asp:Label>
                        </form>

                        <div class="divider-or">or continue with</div>
                        <div class="field-row">
                            <a href="#" class="btn btn-outline btn-block">Google</a>
                            <a href="#" class="btn btn-outline btn-block">Apple</a>
                        </div>

                        <p class="form-note">Already have an account? <a href="Login.aspx">Log in</a></p>

                        <div class="mini-steps">
                            <div class="mini-step">
                                <span class="num">1</span>
                                <p><strong>Finish the intake.</strong> Five minutes on pace, budget, and travel style, right after you sign up.</p>
                            </div>
                            <div class="mini-step">
                                <span class="num">2</span>
                                <p><strong>Meet your planner.</strong> You'll be matched to someone who knows the region you're headed to.</p>
                            </div>
                            <div class="mini-step">
                                <span class="num">3</span>
                                <p><strong>Review your first draft.</strong> Usually within three business days, ready for edits.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

    </main>
    </label>
</asp:Content>
