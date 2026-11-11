<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="medrian_1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>

  <section class="page-section">

    <div class="container">
      <div class="page-hero">
        <span class="eyebrow">Get in touch</span>
        <h1>Questions before you plan a trip?</h1>
        <p>Write to us directly, or send a note through the form. We read every message ourselves and reply within one business day.</p>
      </div>
    </div>

    <hr class="divider">

    <!-- ============ CONTACT GRID ============ -->
    <div class="container mt-lg">
      <div class="contact-grid">

        <div>
          <span class="eyebrow">Reach us</span>
          <h2>A few ways to say hello</h2>
          <div class="info-list">
            <div class="info-item">
              <div class="label">Email</div>
              <div class="value">hello@meridiantravel.co<span>General questions and trip enquiries</span></div>
            </div>
            <div class="info-item">
              <div class="label">Phone</div>
              <div class="value">+1 (800) 555-1212<span>Weekdays, 9am–6pm GMT</span></div>
            </div>
            <div class="info-item">
              <div class="label">Studio</div>
              <div class="value">14 Harbour Row<span>Bristol, United Kingdom</span></div>
            </div>
            <div class="info-item">
              <div class="label">Response time</div>
              <div class="value">Within one business day<span>Usually much sooner</span></div>
            </div>
          </div>
        </div>

        <div class="form-panel">
          <form data-validate data-success-message="Thanks — your message has been sent. We'll reply within a business day.">
            <div class="field-row">
              <div class="field">
                <label for="c-name">Full name</label>
                <input type="text" id="c-name" name="name" required>
                <span class="error-msg">Please enter your name.</span>
              </div>
              <div class="field">
                <label for="c-email">Email</label>
                <input type="email" id="c-email" name="email" required>
                <span class="error-msg">Please enter a valid email.</span>
              </div>
            </div>
            <div class="field">
              <label for="c-subject">Subject</label>
              <input type="text" id="c-subject" name="subject" required>
              <span class="error-msg">Please add a subject.</span>
            </div>
            <div class="field">
              <label for="c-message">Message</label>
              <textarea id="c-message" name="message" required></textarea>
              <span class="error-msg">Please add a message.</span>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Send message</button>
            <div class="form-success"></div>
          </form>
        </div>

      </div>
    </div>

    <!-- ============ STUDIO HOURS ============ -->
    <div class="container mt-lg">
      <div class="section-head">
        <span class="eyebrow">Before you call</span>
        <h2>Studio hours</h2>
        <p>Message us any time — replies go out within these windows.</p>
      </div>
      <div class="hours-table" style="max-width:560px;">
        <div class="hours-row"><span class="day">Monday – Friday</span><span class="time">9:00am – 6:00pm GMT</span></div>
        <div class="hours-row"><span class="day">Saturday</span><span class="time">10:00am – 2:00pm GMT</span></div>
        <div class="hours-row"><span class="day">Sunday</span><span class="time">Closed — messages answered Monday</span></div>
        <div class="hours-row"><span class="day">During an active trip</span><span class="time">Your planner is reachable directly</span></div>
      </div>
    </div>

    <!-- ============ NEWSLETTER ============ -->
    <div class="container mt-lg">
      <div class="newsletter">
        <div>
          <h3>A short note, once a month</h3>
          <p>Route ideas, a few seasonal notes, no itinerary spam. Unsubscribe whenever.</p>
        </div>
        <form class="newsletter-form" data-validate data-success-message="You're on the list.">
          <input type="email" name="newsletter-email" placeholder="you@example.com" required>
          <button type="submit" class="btn btn-primary">Subscribe</button>
        </form>
      </div>
    </div>

    <!-- ============ FAQ ============ -->
    <div class="container mt-lg">
      <div class="section-head">
        <span class="eyebrow">Before you write in</span>
        <h2>A few common questions</h2>
      </div>
      <div class="faq">
        <div class="faq-item">
          <h3>How far in advance should I get in touch?</h3>
          <p>Six to eight weeks gives your planner enough room to arrange local guides and smaller stays properly. Sooner is fine too — we'll just move faster.</p>
        </div>
        <div class="faq-item">
          <h3>Do you plan trips outside Europe?</h3>
          <p>Not yet. Meridian currently covers Southern and Northern Europe, with a small bench of planners who live in the regions we cover.</p>
        </div>
        <div class="faq-item">
          <h3>Is there a fee just to talk?</h3>
          <p>No. The intake and first conversation are free — you only pay once you decide to move forward with a plan.</p>
        </div>
        <div class="faq-item">
          <h3>Can I make changes once the trip has started?</h3>
          <p>Yes. Your planner stays reachable for the duration of the trip, and it's normal to swap a stop or extend a stay once you're on the ground.</p>
        </div>
        <div class="faq-item">
          <h3>Do you work with groups or just solo travellers and couples?</h3>
          <p>Mostly solo travellers, couples, and small groups of up to six. Larger groups are handled case by case — ask us directly.</p>
        </div>
      </div>
    </div>

  </section>

</main>
</asp:Content>
