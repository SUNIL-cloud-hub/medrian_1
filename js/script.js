// Meridian — shared behaviour

document.addEventListener("DOMContentLoaded", function () {
  /* Mobile nav toggle */
  var toggle = document.querySelector(".nav-toggle");
  var nav = document.querySelector(".nav");
  if (toggle && nav) {
    toggle.addEventListener("click", function () {
      var isOpen = nav.classList.toggle("open");
      toggle.setAttribute("aria-expanded", isOpen ? "true" : "false");
    });
    nav.querySelectorAll(".nav-links a").forEach(function (link) {
      link.addEventListener("click", function () {
        nav.classList.remove("open");
        toggle.setAttribute("aria-expanded", "false");
      });
    });
  }

  /* Active nav link: driven by data-page on <body>, one page per file */
  var navLinks = document.querySelectorAll(".nav-links a[data-nav]");
  var currentPage = document.body.getAttribute("data-page");
  if (navLinks.length && currentPage) {
    navLinks.forEach(function (link) {
      link.classList.toggle("active", link.dataset.nav === currentPage);
    });
  }

  /* Generic front-end validation for any form with [data-validate] */
  document.querySelectorAll("form[data-validate]").forEach(function (form) {
    form.addEventListener("submit", function (e) {
      e.preventDefault();
      var valid = true;

      form.querySelectorAll("[required]").forEach(function (input) {
        var field = input.closest(".field");
        var errorEl = field ? field.querySelector(".error-msg") : null;
        var fieldValid = true;

        if (!input.value.trim()) {
          fieldValid = false;
          if (errorEl) errorEl.textContent = "This field is required.";
        } else if (input.type === "email" && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(input.value)) {
          fieldValid = false;
          if (errorEl) errorEl.textContent = "Enter a valid email address.";
        } else if (input.type === "password" && input.value.length < 8) {
          fieldValid = false;
          if (errorEl) errorEl.textContent = "Use at least 8 characters.";
        }

        if (field) field.classList.toggle("invalid", !fieldValid);
        if (!fieldValid) valid = false;
      });

      /* Password confirmation match (register page) */
      var pw = form.querySelector('input[name="password"]');
      var confirm = form.querySelector('input[name="confirm_password"]');
      if (pw && confirm) {
        var confirmField = confirm.closest(".field");
        if (confirm.value !== pw.value) {
          valid = false;
          if (confirmField) {
            confirmField.classList.add("invalid");
            var em = confirmField.querySelector(".error-msg");
            if (em) em.textContent = "Passwords do not match.";
          }
        }
      }

      var successEl = form.querySelector(".form-success");
      if (valid) {
        if (successEl) {
          successEl.classList.add("show");
          successEl.textContent = form.dataset.successMessage || "Success. Thank you.";
        }
        form.reset();
        form.querySelectorAll(".field.invalid").forEach(function (f) {
          f.classList.remove("invalid");
        });
      } else if (successEl) {
        successEl.classList.remove("show");
      }
    });
  });
});
