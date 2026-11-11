<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="medrian_1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>

  <section class="page-section">

    <div class="container">
      <div class="page-hero" style="padding-bottom:0;">
        <span class="eyebrow">About Meridian</span>
        <h1>We plan fewer stops, on purpose.</h1>
        <p>Meridian started as a reaction to itineraries that read like scavenger hunts. We build trips around rest, distance, and the time it actually takes to know a place.</p>
      </div>
    </div>

    <!-- ============ STORY ============ -->
    <div class="container mt-lg">
      <div class="about-grid">
        <div>
          <span class="eyebrow">How we started</span>
          <h2>A smaller map, held for longer</h2>
          <p style="color:var(--ink-soft); margin-top:0.9rem;">Meridian began in 2021 after one too many trips that felt like a checklist — a new city every two nights, mornings lost to transfers, evenings spent recovering rather than exploring. We started planning differently: fewer places per trip, longer stays in each, and itineraries with real gaps in them. Five years on, that's still the entire method.</p>
          <p style="color:var(--ink-soft); margin-top:0.9rem;">What changed along the way wasn't the philosophy — it was the discipline to hold it under pressure. It's easy to promise a slower trip during the intake call. It's harder to say no to a fourth city when a client asks for one. We've gotten better at explaining why the answer is usually still no.</p>
        </div>
        <div class="about-media">
          <img src="https://loremflickr.com/700/540/map,notebook,desk,travel?lock=105" alt="A trip planner's desk with a map, notebook, and coffee">
        </div>
      </div>
    </div>

    <!-- ============ BY THE NUMBERS ============ -->
    <div class="container mt-lg">
      <div class="section-head center">
        <span class="eyebrow">By the numbers</span>
        <h2>Five years, measured a little differently</h2>
      </div>
      <div class="stats-grid">
        <div class="stat">
          <span class="num">640+</span>
          <span class="label">Trips planned since 2021</span>
        </div>
        <div class="stat">
          <span class="num">4.1</span>
          <span class="label">Average stops per two-week trip</span>
        </div>
        <div class="stat">
          <span class="num">3</span>
          <span class="label">Regions we currently plan in</span>
        </div>
        <div class="stat">
          <span class="num">92%</span>
          <span class="label">Clients who rebook a second trip</span>
        </div>
      </div>
    </div>

    <!-- ============ PRINCIPLES ============ -->
    <div class="bg-alt-section mt-lg">
      <div class="container">
        <div class="section-head center">
          <span class="eyebrow">What we hold onto</span>
          <h2>Three things we won't compromise on</h2>
        </div>
        <div class="principles">
          <div class="principle">
            <span class="num">i.</span>
            <h3>Unhurried by default</h3>
            <p>Every itinerary starts with open time, not a full schedule. Structure gets added only where it earns its place.</p>
          </div>
          <div class="principle">
            <span class="num">ii.</span>
            <h3>Local, not laminated</h3>
            <p>Recommendations come from people who live in a place, not from a top-ten list written for search engines.</p>
          </div>
          <div class="principle">
            <span class="num">iii.</span>
            <h3>Honest about trade-offs</h3>
            <p>If a route is efficient but tiring, we'll say so — and offer the slower version alongside it.</p>
          </div>
        </div>
      </div>
    </div>

    <!-- ============ TIMELINE ============ -->
    <div class="container mt-lg">
      <div class="section-head">
        <span class="eyebrow">Along the way</span>
        <h2>A few milestones</h2>
      </div>
      <div class="timeline">
        <div class="timeline-item">
          <div class="year">2021</div>
          <h3>Meridian founded</h3>
          <p>Started by two friends redesigning their own trips around rest instead of routes.</p>
        </div>
        <div class="timeline-item">
          <div class="year">2022</div>
          <h3>First 100 trips planned</h3>
          <p>Mostly across Southern Europe, mostly by train, mostly slower than expected — on purpose.</p>
        </div>
        <div class="timeline-item">
          <div class="year">2023</div>
          <h3>Local planner network doubled</h3>
          <p>Brought on a second planner in Portugal and our first in Slovenia to keep routes genuinely local.</p>
        </div>
        <div class="timeline-item">
          <div class="year">2024</div>
          <h3>Expanded to Northern Europe and Scandinavia</h3>
          <p>Added a small bench of local planners in Norway, Sweden, and Slovenia.</p>
        </div>
        <div class="timeline-item">
          <div class="year">2025</div>
          <h3>Introduced the open-morning guarantee</h3>
          <p>Formalised our no-early-transfer rule as a standing part of every itinerary, not just a preference.</p>
        </div>
        <div class="timeline-item">
          <div class="year">2026</div>
          <h3>Today</h3>
          <p>Still a small team, still planning one trip at a time rather than scaling past the parts that matter.</p>
        </div>
      </div>
    </div>

    <!-- ============ TEAM ============ -->
    <div class="container mt-lg">
      <div class="section-head">
        <span class="eyebrow">The people</span>
        <h2>A small, deliberately small team</h2>
        <p>Meridian is planned by a handful of people who each spend as much time travelling as they do at a desk.</p>
      </div>
      <div class="team">
        <div class="team-card">
          <div class="avatar">A.O.</div>
          <h3>Amara Odom</h3>
          <div class="role">Co-founder, Trip Design</div>
          <p class="bio">Ten years planning routes across Southern Europe and West Africa, mostly on trains.</p>
        </div>
        <div class="team-card">
          <div class="avatar">J.L.</div>
          <h3>Jonas Lindqvist</h3>
          <div class="role">Co-founder, Local Partnerships</div>
          <p class="bio">Builds Meridian's network of local guides and small operators, one long conversation at a time.</p>
        </div>
        <div class="team-card">
          <div class="avatar">R.K.</div>
          <h3>Rhea Kapoor</h3>
          <div class="role">Head of Planning</div>
          <p class="bio">Turns a five-minute intake into an itinerary that actually fits how you travel.</p>
        </div>
        <div class="team-card">
          <div class="avatar">S.B.</div>
          <h3>Sofia Bergman</h3>
          <div class="role">Planner, Scandinavia</div>
          <p class="bio">Grew up in Värmland and plans most of our Sweden and Norway routes personally.</p>
        </div>
        <div class="team-card">
          <div class="avatar">D.F.</div>
          <h3>Diego Ferreira</h3>
          <div class="role">Planner, Southern Europe</div>
          <p class="bio">Handles Portugal and Italy, with a running list of towns he refuses to over-schedule.</p>
        </div>
        <div class="team-card">
          <div class="avatar">M.C.</div>
          <h3>Maya Clarke</h3>
          <div class="role">Client Support</div>
          <p class="bio">First point of contact once you're travelling — usually reachable within the hour.</p>
        </div>
      </div>
    </div>

    <!-- ============ PRESS ============ -->
    <div class="container mt-lg">
      <div class="section-head">
        <span class="eyebrow">In the press</span>
        <h2>A few mentions along the way</h2>
      </div>
      <div class="press-list">
        <div class="press-item">
          <div class="outlet">Slow Travel Quarterly</div>
          <p>"One of the few planners who'll actively talk you out of a fourth city."</p>
        </div>
        <div class="press-item">
          <div class="outlet">The Weekend Edit</div>
          <p>"Meridian's itineraries read like they were written by someone who's actually rested on a trip."</p>
        </div>
        <div class="press-item">
          <div class="outlet">Northbound Journal</div>
          <p>"Their Scandinavia routes are the rare kind that respect the weather instead of fighting it."</p>
        </div>
      </div>
    </div>

  </section>

</main>
</asp:Content>
