
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="medrian_1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>

  <!-- ============ HERO ============ -->
  <section class="page-section">
    <div class="hero">
      <div class="container hero-inner">
        <div>
          <span class="eyebrow">Trip planning, unhurried</span>
          <h1>Travel like the <em>horizon</em> is the only itinerary you need.</h1>
          <p class="lede">Meridian builds slower trips around fewer stops, longer mornings, and the kind of pace that lets a place actually settle in. No rush, no checklist tourism — just well-considered days.</p>
          <div class="hero-actions">
            <a href="register.html" class="btn btn-primary">Plan your first trip</a>
            <a href="about.html" class="btn btn-outline">How it works</a>
          </div>
          <p class="hero-note">Free to start · No itinerary is ever longer than it needs to be</p>
        </div>
        <div class="hero-art">
          <img src="https://loremflickr.com/900/1125/coast,cliff,ocean?lock=101" alt="Quiet coastline at golden hour, waves meeting a cliff edge">
          <span class="cap">Sagres, Portugal</span>
        </div>
      </div>
    </div>

    <!-- ============ DESTINATIONS ============ -->
    <div class="container">
      <div class="section-head">
        <span class="eyebrow">Where to go</span>
        <h2>A short list, kept deliberately short</h2>
        <p>Six places worth slowing down for this season — chosen for quiet mornings and a light footprint, not for how they photograph.</p>
      </div>
      <div class="grid-3">

        <article class="dest-card">
          <div class="dest-art">
            <img src="https://loremflickr.com/500/400/coast,cliff,portugal?lock=102" alt="Cliffside coastal path in Sagres, Portugal">
          </div>
          <div class="dest-body">
            <div class="dest-region">Northern Coast</div>
            <h3>Sagres, Portugal</h3>
            <p>Cliffside quiet at the edge of the continent — best held in the early light before the wind picks up.</p>
          </div>
        </article>

        <article class="dest-card">
          <div class="dest-art">
            <img src="https://loremflickr.com/500/400/mountain,snow,norway?lock=103" alt="Snow-covered mountain ridgeline in Hemsedal, Norway">
          </div>
          <div class="dest-body">
            <div class="dest-region">High Valley</div>
            <h3>Hemsedal, Norway</h3>
            <p>Long ridgelines and short days. A place that rewards travelling slowly through it, on foot.</p>
          </div>
        </article>

        <article class="dest-card">
          <div class="dest-art">
            <img src="https://loremflickr.com/500/400/lake,mountains,europe?lock=104" alt="Still lake with a small island in Bled, Slovenia">
          </div>
          <div class="dest-body">
            <div class="dest-region">Inland Lakes</div>
            <h3>Bled, Slovenia</h3>
            <p>One lake, one island, and enough stillness in the water to justify staying more than a night.</p>
          </div>
        </article>

        <article class="dest-card">
          <div class="dest-art">
            <img src="https://loremflickr.com/500/400/village,italy,hills?lock=108" alt="Stone hill village in Le Marche, Italy">
          </div>
          <div class="dest-body">
            <div class="dest-region">Inland Hills</div>
            <h3>Le Marche, Italy</h3>
            <p>Terracotta rooftops and long lunches, away from the coastal crowds an hour east.</p>
          </div>
        </article>

        <article class="dest-card">
          <div class="dest-art">
            <img src="https://loremflickr.com/500/400/harbor,scotland,coast?lock=109" alt="Small fishing harbour on the coast of Scotland">
          </div>
          <div class="dest-body">
            <div class="dest-region">Island Coast</div>
            <h3>Isle of Skye, Scotland</h3>
            <p>Weather that changes hourly and a coastline built for slow, deliberate driving days.</p>
          </div>
        </article>

        <article class="dest-card">
          <div class="dest-art">
            <img src="https://loremflickr.com/500/400/forest,cabin,sweden?lock=110" alt="Wooden cabin in a quiet Swedish forest">
          </div>
          <div class="dest-body">
            <div class="dest-region">Deep Forest</div>
            <h3>Värmland, Sweden</h3>
            <p>Cabins, lakes, and a stillness that takes about two days to actually settle into.</p>
          </div>
        </article>

      </div>
    </div>

    <!-- ============ HOW IT WORKS ============ -->
    <div class="container mt-lg">
      <div class="section-head">
        <span class="eyebrow">How it works</span>
        <h2>From intake to itinerary in four steps</h2>
        <p>No lengthy questionnaires or back-and-forth quoting. Just a short conversation, then a plan you can actually picture yourself living in.</p>
      </div>
      <div class="steps">
        <div class="step" data-step="1">
          <h3>Tell us how you travel</h3>
          <p>A five-minute intake on pace, budget, and the kind of mornings you want.</p>
        </div>
        <div class="step" data-step="2">
          <h3>We draft a route</h3>
          <p>A planner sketches a short list of places, with open time built in from the start.</p>
        </div>
        <div class="step" data-step="3">
          <h3>Refine it together</h3>
          <p>Swap a stop, add a day, cut a transfer — the plan moves until it fits.</p>
        </div>
        <div class="step" data-step="4">
          <h3>Travel, lightly</h3>
          <p>Your itinerary, local contacts, and a direct line to your planner the whole way.</p>
        </div>
      </div>
    </div>

    <!-- ============ SIGNATURE ROUTES ============ -->
    <div class="container mt-lg">
      <div class="section-head">
        <span class="eyebrow">Ready-made starting points</span>
        <h2>Three routes travellers keep coming back to</h2>
        <p>Not fixed packages — starting drafts. Every route below gets reshaped around your pace before it's final.</p>
      </div>
      <div class="grid-3">
        <article class="dest-card">
          <div class="dest-art">
            <img src="https://loremflickr.com/500/400/train,europe,countryside?lock=111" alt="Train winding through the European countryside">
          </div>
          <div class="dest-body">
            <div class="dest-region">12 days · by rail</div>
            <h3>Southern Slow Loop</h3>
            <p>Lisbon, Sagres, and inland Andalusia, linked by trains and long afternoons rather than airports.</p>
          </div>
        </article>
        <article class="dest-card">
          <div class="dest-art">
            <img src="https://loremflickr.com/500/400/fjord,norway,ferry?lock=112" alt="Ferry crossing a Norwegian fjord">
          </div>
          <div class="dest-body">
            <div class="dest-region">9 days · by ferry & car</div>
            <h3>Fjord to Ridge</h3>
            <p>Bergen's coastline into Hemsedal's high valleys, with two full rest days built into the middle.</p>
          </div>
        </article>
        <article class="dest-card">
          <div class="dest-art">
            <img src="https://loremflickr.com/500/400/road,scotland,mountains?lock=113" alt="Coastal road through the Scottish Highlands">
          </div>
          <div class="dest-body">
            <div class="dest-region">10 days · self-drive</div>
            <h3>Highlands, Unhurried</h3>
            <p>Skye and the Northwest Highlands, paced for weather delays rather than fighting against them.</p>
          </div>
        </article>
      </div>
    </div>

    <!-- ============ PRINCIPLES ============ -->
    <div class="bg-alt-section mt-lg">
      <div class="container">
        <div class="section-head center">
          <span class="eyebrow">Our approach</span>
          <h2>Three ideas behind every trip we plan</h2>
        </div>
        <div class="principles">
          <div class="principle">
            <span class="num">i.</span>
            <h3>Fewer places, more time</h3>
            <p>We'd rather leave a city off the map than rush you through it. Depth over distance, every time.</p>
          </div>
          <div class="principle">
            <span class="num">ii.</span>
            <h3>Mornings are sacred</h3>
            <p>No 6 a.m. transfers unless you ask for them. Every itinerary protects the first few hours of the day.</p>
          </div>
          <div class="principle">
            <span class="num">iii.</span>
            <h3>Built around you</h3>
            <p>A short intake, a real conversation, and a plan shaped by how you actually like to travel.</p>
          </div>
        </div>
      </div>
    </div>

    <!-- ============ TESTIMONIALS ============ -->
    <div class="container mt-lg">
      <div class="section-head center">
        <span class="eyebrow">What travellers say</span>
        <h2>A few notes from the road</h2>
      </div>
      <div class="testimonial-grid">
        <div class="testimonial-card">
          <p>"The first trip where I didn't feel like I needed a holiday afterward."</p>
          <cite>— Priya N., travelled to Slovenia</cite>
        </div>
        <div class="testimonial-card">
          <p>"Our planner cut our original list from nine stops to four. Best edit anyone's made to our travel plans."</p>
          <cite>— Marcus T., travelled to Portugal</cite>
        </div>
        <div class="testimonial-card">
          <p>"I didn't think a fixed morning-off rule would matter this much. It changed the whole trip."</p>
          <cite>— Elin H., travelled to Norway</cite>
        </div>
      </div>
    </div>

    <!-- ============ CTA ============ -->
    <div class="container mt-lg">
      <div class="cta-band">
        <div class="container">
          <div>
            <h2>Start with a five-minute intake</h2>
            <p>Tell us how you like to travel. We'll take it from there.</p>
          </div>
          <a href="register.html" class="btn btn-primary">Create your account</a>
        </div>
      </div>
    </div>

  </section>

</main>
</asp:Content>
