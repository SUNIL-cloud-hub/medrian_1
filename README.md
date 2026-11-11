# Meridian — Travel Template (Multi-page edition)

Same calm, minimal design system as the original one-page template, split into
separate HTML pages instead of anchor sections — plus extra content on every
page.

## Pages

- `index.html` — Home: hero, 6 destinations, how-it-works, 3 signature routes,
  principles, testimonials, CTA.
- `about.html` — About: story, stats strip, principles, 6-point timeline,
  6-person team, press mentions.
- `contact.html` — Contact: contact info + form, studio hours, newsletter
  signup, 5-question FAQ.
- `register.html` — Sign up form with expanded benefits list and a
  "what happens next" mini-guide.
- `login.html` — Log in form with a short trust/support section.

## Structure

```
travel-template/
├── index.html
├── about.html
├── contact.html
├── register.html
├── login.html
├── css/
│   └── style.css
└── js/
    └── script.js
```

## Notes

- Navigation now links between real files instead of `#anchors`; the active
  nav link is set from `data-page` on `<body>` (see `js/script.js`).
- All shared components (buttons, cards, forms, header, footer) reuse the
  original design tokens in `css/style.css`. New sections (testimonials,
  stats, press list, hours table, newsletter, mini-steps) were added at the
  bottom of the same file so the look stays consistent.
- Images are hotlinked placeholders (loremflickr.com) — swap in real photos
  before shipping.
