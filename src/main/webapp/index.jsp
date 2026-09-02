<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <title>NexusShop — Modern E-Commerce</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
  />

  <style>
    :root {
      --primary: #0a2540;
      --primary-2: #12395f;
      --accent: #00c8f8;
      --accent-dark: #00a9d3;
      --success: #22a447;
      --danger: #ff4757;
      --warning: #ffc107;

      --bg: #f7f9fc;
      --surface: #ffffff;
      --surface-2: #eef4f8;
      --text: #102a43;
      --muted: #718096;
      --border: #e6edf3;

      --radius: 18px;
      --radius-sm: 12px;

      --shadow-sm: 0 5px 18px rgba(10, 37, 64, .06);
      --shadow-md: 0 15px 35px rgba(10, 37, 64, .10);

      --container: 1200px;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: Inter, system-ui, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    body.no-scroll {
      overflow: hidden;
    }

    button,
    input {
      font: inherit;
    }

    button {
      cursor: pointer;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    img {
      max-width: 100%;
    }

    .container {
      width: min(100% - 32px, var(--container));
      margin-inline: auto;
    }

    /* =========================
       HEADER
    ========================== */

    .topbar {
      background: var(--primary);
      color: white;
      font-size: 13px;
      padding: 8px 0;
    }

    .topbar-inner {
      display: flex;
      justify-content: space-between;
      gap: 15px;
      align-items: center;
    }

    .topbar-right {
      display: flex;
      gap: 18px;
    }

    .header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255, 255, 255, .94);
      backdrop-filter: blur(15px);
      border-bottom: 1px solid var(--border);
    }

    .header-main {
      min-height: 76px;
      display: flex;
      align-items: center;
      gap: 25px;
    }

    .logo {
      flex-shrink: 0;
      font-family: Poppins, sans-serif;
      font-size: 23px;
      font-weight: 800;
      letter-spacing: -.5px;
    }

    .logo span {
      color: var(--accent);
    }

    .desktop-nav {
      display: flex;
      align-items: center;
      gap: 5px;
      flex: 1;
    }

    .nav-link {
      border: 0;
      background: transparent;
      padding: 10px 12px;
      border-radius: 10px;
      color: var(--text);
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 7px;
    }

    .nav-link:hover,
    .nav-link.active {
      background: #eef9fd;
      color: var(--accent-dark);
    }

    .header-tools {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .search-box {
      display: flex;
      align-items: center;
      gap: 9px;
      background: var(--surface-2);
      border: 1px solid transparent;
      border-radius: 999px;
      width: 260px;
      padding: 9px 13px;
      transition: .2s;
    }

    .search-box:focus-within {
      background: white;
      border-color: var(--accent);
      box-shadow: 0 0 0 3px rgba(0, 200, 248, .10);
    }

    .search-box i {
      color: var(--muted);
    }

    .search-box input {
      width: 100%;
      border: 0;
      outline: 0;
      background: transparent;
      color: var(--text);
      font-size: 14px;
    }

    .icon-button {
      position: relative;
      width: 42px;
      height: 42px;
      display: grid;
      place-items: center;
      border: 0;
      border-radius: 12px;
      background: transparent;
      color: var(--text);
      transition: .2s;
    }

    .icon-button:hover {
      background: var(--surface-2);
      color: var(--accent-dark);
    }

    .badge-count {
      position: absolute;
      top: 0;
      right: 0;
      min-width: 19px;
      height: 19px;
      padding: 0 4px;
      border-radius: 999px;
      background: var(--danger);
      color: white;
      display: grid;
      place-items: center;
      font-size: 10px;
      font-weight: 800;
      border: 2px solid white;
    }

    .mobile-menu-btn {
      display: none;
    }

    /* =========================
       HERO
    ========================== */

    .hero {
      position: relative;
      min-height: 470px;
      display: flex;
      align-items: center;
      overflow: hidden;
      color: white;
      background:
        linear-gradient(90deg, rgba(4, 20, 38, .92), rgba(4, 20, 38, .55), rgba(4, 20, 38, .18)),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85")
        center/cover no-repeat;
    }

    .hero-content {
      max-width: 680px;
      padding: 70px 0;
    }

    .hero-label {
      display: inline-flex;
      align-items: center;
      gap: 7px;
      padding: 7px 12px;
      border-radius: 999px;
      background: rgba(0, 200, 248, .16);
      border: 1px solid rgba(255,255,255,.18);
      color: #b9f4ff;
      font-size: 13px;
      font-weight: 700;
      margin-bottom: 17px;
    }

    .hero h1 {
      font-family: Poppins, sans-serif;
      font-size: clamp(35px, 5vw, 58px);
      line-height: 1.08;
      letter-spacing: -1.5px;
      margin-bottom: 17px;
    }

    .hero h1 span {
      color: var(--accent);
    }

    .hero p {
      max-width: 590px;
      color: rgba(255,255,255,.84);
      font-size: 16px;
      margin-bottom: 27px;
    }

    .hero-buttons {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    /* =========================
       BUTTONS
    ========================== */

    .btn {
      border: 0;
      border-radius: 999px;
      padding: 12px 20px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 9px;
      font-weight: 700;
      transition: .2s;
    }

    .btn-primary {
      background: var(--accent);
      color: #062333;
    }

    .btn-primary:hover {
      background: #23d8ff;
      transform: translateY(-2px);
    }

    .btn-dark {
      background: var(--primary);
      color: white;
    }

    .btn-dark:hover {
      background: var(--primary-2);
    }

    .btn-outline {
      color: white;
      background: transparent;
      border: 1px solid rgba(255,255,255,.35);
    }

    .btn-outline:hover {
      background: rgba(255,255,255,.1);
    }

    /* =========================
       TRUST STRIP
    ========================== */

    .trust-strip {
      background: white;
      border-bottom: 1px solid var(--border);
    }

    .trust-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
    }

    .trust-item {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 12px;
      padding: 18px 10px;
      border-right: 1px solid var(--border);
    }

    .trust-item:last-child {
      border-right: 0;
    }

    .trust-icon {
      color: var(--accent-dark);
      font-size: 20px;
    }

    .trust-item strong {
      display: block;
      font-size: 13px;
    }

    .trust-item span {
      color: var(--muted);
      font-size: 12px;
    }

    /* =========================
       SECTIONS
    ========================== */

    .section {
      padding: 65px 0;
    }

    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: end;
      gap: 20px;
      margin-bottom: 25px;
    }

    .section-heading h2 {
      font-family: Poppins, sans-serif;
      font-size: 28px;
      margin-bottom: 5px;
    }

    .section-heading p {
      color: var(--muted);
      font-size: 14px;
    }

    .view-all {
      color: var(--accent-dark);
      font-size: 14px;
      font-weight: 700;
      white-space: nowrap;
    }

    /* =========================
       CATEGORIES
    ========================== */

    .category-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 15px;
    }

    .category-card {
      background: white;
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 22px 12px;
      text-align: center;
      cursor: pointer;
      transition: .2s;
    }

    .category-card:hover,
    .category-card.active {
      transform: translateY(-4px);
      border-color: rgba(0,200,248,.4);
      box-shadow: var(--shadow-md);
    }

    .category-icon {
      width: 54px;
      height: 54px;
      display: grid;
      place-items: center;
      margin: auto auto 12px;
      border-radius: 16px;
      color: var(--accent-dark);
      background: #ecfaff;
      font-size: 22px;
    }

    .category-card h3 {
      font-size: 14px;
      margin-bottom: 4px;
    }

    .category-card p {
      color: var(--muted);
      font-size: 11px;
    }

    /* =========================
       PRODUCT GRID
    ========================== */

    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }

    .product-card {
      position: relative;
      overflow: hidden;
      background: white;
      border: 1px solid var(--border);
      border-radius: var(--radius);
      transition: .25s;
    }

    .product-card:hover {
      transform: translateY(-5px);
      box-shadow: var(--shadow-md);
    }

    .product-image {
      position: relative;
      height: 235px;
      background: #f1f5f8;
      overflow: hidden;
    }

    .product-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform .35s;
    }

    .product-card:hover .product-image img {
      transform: scale(1.05);
    }

    .product-badge {
      position: absolute;
      top: 12px;
      left: 12px;
      z-index: 2;
      padding: 6px 9px;
      border-radius: 7px;
      color: white;
      background: var(--success);
      font-size: 11px;
      font-weight: 800;
    }

    .product-badge.sale {
      background: var(--danger);
    }

    .wishlist-btn {
      position: absolute;
      top: 11px;
      right: 11px;
      z-index: 2;
      width: 38px;
      height: 38px;
      display: grid;
      place-items: center;
      border: 0;
      border-radius: 50%;
      background: rgba(255,255,255,.92);
      color: var(--text);
      box-shadow: 0 5px 15px rgba(0,0,0,.08);
    }

    .wishlist-btn.active {
      color: var(--danger);
    }

    .product-info {
      padding: 15px;
    }

    .product-category {
      color: var(--muted);
      text-transform: uppercase;
      font-size: 10px;
      letter-spacing: .6px;
      font-weight: 700;
      margin-bottom: 5px;
    }

    .product-title {
      font-size: 15px;
      margin-bottom: 8px;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }

    .rating-row {
      display: flex;
      align-items: center;
      gap: 6px;
      margin-bottom: 11px;
    }

    .stars {
      color: #ffb400;
      font-size: 12px;
    }

    .review-count {
      color: var(--muted);
      font-size: 11px;
    }

    .price-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-bottom: 13px;
    }

    .price {
      font-size: 18px;
      font-weight: 800;
    }

    .old-price {
      color: var(--muted);
      font-size: 12px;
      text-decoration: line-through;
    }

    .add-to-cart {
      width: 100%;
      border: 0;
      padding: 10px;
      border-radius: 10px;
      background: var(--primary);
      color: white;
      font-size: 13px;
      font-weight: 700;
      transition: .2s;
    }

    .add-to-cart:hover {
      background: var(--accent-dark);
    }

    .empty-products {
      grid-column: 1/-1;
      text-align: center;
      padding: 50px 20px;
      background: white;
      border-radius: var(--radius);
      color: var(--muted);
    }

    .empty-products i {
      font-size: 40px;
      margin-bottom: 12px;
      color: #c7d3dd;
    }

    /* =========================
       FLASH SALE
    ========================== */

    .deal-section {
      background: linear-gradient(135deg, #eafaff, #f8fbfd);
    }

    .deal-card {
      display: grid;
      grid-template-columns: 1fr 1fr;
      background: white;
      border-radius: 22px;
      overflow: hidden;
      box-shadow: var(--shadow-sm);
    }

    .deal-image {
      min-height: 380px;
    }

    .deal-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-content {
      padding: 45px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-tag {
      color: var(--danger);
      font-size: 12px;
      font-weight: 800;
      text-transform: uppercase;
      letter-spacing: 1px;
      margin-bottom: 10px;
    }

    .deal-content h2 {
      font-family: Poppins, sans-serif;
      font-size: 32px;
      margin-bottom: 8px;
    }

    .deal-content p {
      color: var(--muted);
      margin-bottom: 20px;
    }

    .timer {
      display: flex;
      gap: 10px;
      margin-bottom: 23px;
    }

    .timer-box {
      min-width: 66px;
      padding: 10px 7px;
      text-align: center;
      color: white;
      background: var(--primary);
      border-radius: 10px;
    }

    .timer-box strong {
      display: block;
      font-size: 20px;
    }

    .timer-box span {
      font-size: 9px;
      opacity: .75;
      text-transform: uppercase;
    }

    .deal-price {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-bottom: 5px;
    }

    .deal-price strong {
      font-size: 29px;
    }

    .discount {
      background: #ffe9ec;
      color: var(--danger);
      padding: 5px 8px;
      border-radius: 7px;
      font-size: 11px;
      font-weight: 800;
    }

    /* =========================
       TESTIMONIALS
    ========================== */

    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 18px;
    }

    .testimonial {
      background: white;
      padding: 22px;
      border: 1px solid var(--border);
      border-radius: var(--radius);
    }

    .testimonial-stars {
      color: #ffb400;
      margin-bottom: 13px;
    }

    .testimonial-text {
      color: #526579;
      font-size: 14px;
      margin-bottom: 20px;
    }

    .customer {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .customer img {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      object-fit: cover;
    }

    .customer strong {
      display: block;
      font-size: 13px;
    }

    .customer span {
      color: var(--muted);
      font-size: 11px;
    }

    /* =========================
       NEWSLETTER
    ========================== */

    .newsletter {
      position: relative;
      overflow: hidden;
      padding: 45px 25px;
      border-radius: 22px;
      text-align: center;
      color: white;
      background:
        radial-gradient(circle at top right, rgba(0,200,248,.35), transparent 35%),
        var(--primary);
    }

    .newsletter h2 {
      font-family: Poppins, sans-serif;
      font-size: 28px;
      margin-bottom: 7px;
    }

    .newsletter p {
      color: rgba(255,255,255,.72);
      font-size: 14px;
      margin-bottom: 20px;
    }

    .newsletter-form {
      display: flex;
      justify-content: center;
      max-width: 500px;
      margin: auto;
      gap: 8px;
    }

    .newsletter-form input {
      flex: 1;
      min-width: 0;
      border: 0;
      outline: 0;
      padding: 13px 17px;
      border-radius: 999px;
    }

    .newsletter-message {
      margin-top: 12px;
      font-size: 13px;
      min-height: 18px;
    }

    /* =========================
       FOOTER
    ========================== */

    footer {
      background: white;
      border-top: 1px solid var(--border);
      padding: 45px 0 20px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 35px;
      margin-bottom: 35px;
    }

    .footer-brand p {
      max-width: 330px;
      color: var(--muted);
      font-size: 13px;
      margin-top: 10px;
    }

    .footer-title {
      font-size: 14px;
      font-weight: 800;
      margin-bottom: 12px;
    }

    .footer-links {
      display: flex;
      flex-direction: column;
      gap: 9px;
      color: var(--muted);
      font-size: 13px;
    }

    .footer-links a:hover {
      color: var(--accent-dark);
    }

    .socials {
      display: flex;
      gap: 8px;
      margin-top: 17px;
    }

    .social {
      width: 36px;
      height: 36px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      background: var(--surface-2);
      color: var(--primary);
    }

    .copyright {
      border-top: 1px solid var(--border);
      padding-top: 18px;
      text-align: center;
      color: var(--muted);
      font-size: 12px;
    }

    /* =========================
       CART DRAWER
    ========================== */

    .overlay {
      position: fixed;
      inset: 0;
      z-index: 200;
      background: rgba(0,0,0,.42);
      opacity: 0;
      visibility: hidden;
      transition: .25s;
    }

    .overlay.show {
      opacity: 1;
      visibility: visible;
    }

    .cart-drawer {
      position: fixed;
      top: 0;
      right: 0;
      z-index: 210;
      width: min(420px, 100%);
      height: 100%;
      display: flex;
      flex-direction: column;
      background: white;
      transform: translateX(100%);
      transition: .3s ease;
      box-shadow: -15px 0 40px rgba(0,0,0,.15);
    }

    .cart-drawer.show {
      transform: translateX(0);
    }

    .cart-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px;
      border-bottom: 1px solid var(--border);
    }

    .cart-header h2 {
      font-family: Poppins, sans-serif;
      font-size: 20px;
    }

    .cart-items {
      flex: 1;
      overflow-y: auto;
      padding: 15px;
    }

    .cart-item {
      display: grid;
      grid-template-columns: 70px 1fr auto;
      gap: 11px;
      align-items: center;
      padding: 10px 0;
      border-bottom: 1px solid var(--border);
    }

    .cart-item img {
      width: 70px;
      height: 70px;
      border-radius: 10px;
      object-fit: cover;
    }

    .cart-item h4 {
      font-size: 13px;
      margin-bottom: 4px;
    }

    .cart-item-price {
      color: var(--accent-dark);
      font-size: 13px;
      font-weight: 800;
    }

    .quantity {
      display: flex;
      align-items: center;
      gap: 5px;
      margin-top: 7px;
    }

    .quantity button {
      width: 25px;
      height: 25px;
      border: 1px solid var(--border);
      border-radius: 6px;
      background: white;
    }

    .remove-item {
      border: 0;
      background: transparent;
      color: #a0aab4;
    }

    .remove-item:hover {
      color: var(--danger);
    }

    .empty-cart {
      height: 100%;
      display: grid;
      place-items: center;
      text-align: center;
      color: var(--muted);
    }

    .empty-cart i {
      font-size: 45px;
      color: #ccd7df;
      margin-bottom: 10px;
    }

    .cart-footer {
      border-top: 1px solid var(--border);
      padding: 18px;
    }

    .subtotal {
      display: flex;
      justify-content: space-between;
      font-size: 16px;
      font-weight: 800;
      margin-bottom: 13px;
    }

    .checkout-btn {
      width: 100%;
      border: 0;
      border-radius: 11px;
      padding: 13px;
      background: var(--primary);
      color: white;
      font-weight: 800;
    }

    /* =========================
       MOBILE NAV
    ========================== */

    .mobile-nav {
      display: none;
    }

    .mobile-menu {
      position: fixed;
      inset: 0;
      z-index: 150;
      padding: 85px 20px 20px;
      background: white;
      transform: translateX(-100%);
      transition: .25s;
    }

    .mobile-menu.show {
      transform: translateX(0);
    }

    .mobile-menu a {
      display: flex;
      align-items: center;
      gap: 13px;
      padding: 15px;
      border-radius: 12px;
      font-weight: 700;
      margin-bottom: 5px;
    }

    .mobile-menu a:hover {
      background: var(--surface-2);
    }

    .mobile-menu-close {
      position: absolute;
      top: 20px;
      right: 20px;
    }

    /* =========================
       TOAST
    ========================== */

    .toast {
      position: fixed;
      left: 50%;
      bottom: 25px;
      z-index: 500;
      transform: translate(-50%, 120px);
      opacity: 0;
      background: var(--primary);
      color: white;
      padding: 12px 17px;
      border-radius: 999px;
      box-shadow: var(--shadow-md);
      font-size: 13px;
      font-weight: 600;
      transition: .3s;
    }

    .toast.show {
      transform: translate(-50%, 0);
      opacity: 1;
    }

    /* =========================
       RESPONSIVE
    ========================== */

    @media (max-width: 1050px) {
      .desktop-nav {
        display: none;
      }

      .mobile-menu-btn {
        display: grid;
      }

      .search-box {
        width: 220px;
      }

      .category-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      .product-grid {
        grid-template-columns: repeat(3, 1fr);
      }
    }

    @media (max-width: 800px) {
      .topbar {
        display: none;
      }

      .header-main {
        min-height: 68px;
        gap: 8px;
      }

      .logo {
        font-size: 20px;
      }

      .search-box {
        flex: 1;
        width: auto;
        max-width: none;
      }

      .header-tools .account-btn,
      .header-tools .wishlist-header {
        display: none;
      }

      .hero {
        min-height: 510px;
      }

      .hero-content {
        padding: 50px 0;
      }

      .trust-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .trust-item:nth-child(2) {
        border-right: 0;
      }

      .trust-item:nth-child(-n+2) {
        border-bottom: 1px solid var(--border);
      }

      .deal-card {
        grid-template-columns: 1fr;
      }

      .deal-image {
        min-height: 250px;
      }

      .deal-content {
        padding: 30px 25px;
      }

      .testimonial-grid {
        grid-template-columns: 1fr;
      }

      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }

      .mobile-nav {
        position: fixed;
        bottom: 0;
        left: 0;
        right: 0;
        z-index: 100;
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        background: white;
        border-top: 1px solid var(--border);
        box-shadow: 0 -5px 20px rgba(0,0,0,.06);
      }

      .mobile-nav button {
        border: 0;
        background: transparent;
        color: var(--muted);
        padding: 10px 5px 9px;
        font-size: 10px;
      }

      .mobile-nav button i {
        display: block;
        font-size: 17px;
        margin-bottom: 3px;
      }

      .mobile-nav button.active {
        color: var(--accent-dark);
      }

      body {
        padding-bottom: 58px;
      }
    }

    @media (max-width: 600px) {
      .container {
        width: min(100% - 24px, var(--container));
      }

      .section {
        padding: 45px 0;
      }

      .section-header {
        align-items: center;
      }

      .section-heading h2 {
        font-size: 23px;
      }

      .category-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .product-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 12px;
      }

      .product-image {
        height: 175px;
      }

      .product-info {
        padding: 12px;
      }

      .product-title {
        font-size: 13px;
      }

      .price {
        font-size: 16px;
      }

      .hero {
        min-height: 500px;
      }

      .hero h1 {
        font-size: 34px;
      }

      .hero p {
        font-size: 14px;
      }

      .hero-buttons {
        flex-direction: column;
        align-items: stretch;
      }

      .hero-buttons .btn {
        width: 100%;
      }

      .newsletter-form {
        flex-direction: column;
      }

      .newsletter-form input,
      .newsletter-form button {
        width: 100%;
      }

      .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 25px 15px;
      }

      .footer-brand {
        grid-column: 1/-1;
      }

      .deal-content h2 {
        font-size: 26px;
      }

      .timer {
        gap: 5px;
      }

      .timer-box {
        min-width: 58px;
      }

      .timer-box strong {
        font-size: 17px;
      }
    }

    @media (max-width: 400px) {
      .search-box {
        display: none;
      }

      .product-grid {
        grid-template-columns: 1fr;
      }

      .product-image {
        height: 230px;
      }

      .category-grid {
        gap: 10px;
      }
    }
  </style>
</head>

<body>

  <!-- TOP BAR -->
  <div class="topbar">
    <div class="container topbar-inner">
      <span>🚚 Free shipping on orders over $50</span>

      <div class="topbar-right">
        <span>Help Center</span>
        <span>Track Order</span>
      </div>
    </div>
  </div>

  <!-- HEADER -->
  <header class="header">
    <div class="container header-main">

      <button
        class="icon-button mobile-menu-btn"
        id="mobileMenuBtn"
        aria-label="Open menu"
      >
        <i class="fa-solid fa-bars"></i>
      </button>

      <a href="#" class="logo">
        Nexus<span>Shop</span>
      </a>

      <nav class="desktop-nav">
        <button class="nav-link active" data-scroll="home">
          <i class="fa-solid fa-house"></i>
          Home
        </button>

        <button class="nav-link" data-scroll="categories">
          <i class="fa-solid fa-layer-group"></i>
          Categories
        </button>

        <button class="nav-link" data-scroll="products">
          <i class="fa-solid fa-fire"></i>
          Trending
        </button>

        <button class="nav-link" data-scroll="deals">
          <i class="fa-solid fa-tag"></i>
          Deals
        </button>

        <button class="nav-link" data-scroll="about">
          <i class="fa-solid fa-circle-info"></i>
          About
        </button>
      </nav>

      <div class="header-tools">

        <div class="search-box">
          <i class="fa-solid fa-magnifying-glass"></i>

          <input
            type="search"
            id="searchInput"
            placeholder="Search products..."
            autocomplete="off"
          />
        </div>

        <button
          class="icon-button account-btn"
          aria-label="Account"
          onclick="showToast('Account page coming soon')"
        >
          <i class="fa-regular fa-user"></i>
        </button>

        <button
          class="icon-button wishlist-header"
          aria-label="Wishlist"
          onclick="showWishlist()"
        >
          <i class="fa-regular fa-heart"></i>
        </button>

        <button
          class="icon-button"
          id="cartButton"
          aria-label="Shopping cart"
        >
          <i class="fa-solid fa-bag-shopping"></i>
          <span class="badge-count" id="cartCount">0</span>
        </button>

      </div>
    </div>
  </header>

  <!-- MOBILE MENU -->
  <div class="mobile-menu" id="mobileMenu">

    <button
      class="icon-button mobile-menu-close"
      id="mobileMenuClose"
      aria-label="Close menu"
    >
      <i class="fa-solid fa-xmark"></i>
    </button>

    <a href="#home" data-mobile-scroll="home">
      <i class="fa-solid fa-house"></i>
      Home
    </a>

    <a href="#categories" data-mobile-scroll="categories">
      <i class="fa-solid fa-layer-group"></i>
      Categories
    </a>

    <a href="#products" data-mobile-scroll="products">
      <i class="fa-solid fa-fire"></i>
      Trending Products
    </a>

    <a href="#deals" data-mobile-scroll="deals">
      <i class="fa-solid fa-tag"></i>
      Flash Deals
    </a>

    <a href="#about" data-mobile-scroll="about">
      <i class="fa-solid fa-circle-info"></i>
      About
    </a>

  </div>

  <!-- HERO -->
  <main>

    <section class="hero" id="home">

      <div class="container">

        <div class="hero-content">

          <div class="hero-label">
            <i class="fa-solid fa-sparkles"></i>
            New Season Collection
          </div>

          <h1>
            Premium picks.
            <span>Better prices.</span>
          </h1>

          <p>
            Discover trending fashion, smart technology and everyday
            essentials — carefully selected for modern living.
          </p>

          <div class="hero-buttons">

            <button class="btn btn-primary" id="shopNow">
              Shop Now
              <i class="fa-solid fa-arrow-right"></i>
            </button>

            <button class="btn btn-outline" id="heroDeals">
              View Deals
            </button>

          </div>

        </div>

      </div>

    </section>

    <!-- TRUST -->
    <section class="trust-strip">

      <div class="container trust-grid">

        <div class="trust-item">
          <div class="trust-icon">
            <i class="fa-solid fa-truck-fast"></i>
          </div>
          <div>
            <strong>Fast Delivery</strong>
            <span>Quick & reliable</span>
          </div>
        </div>

        <div class="trust-item">
          <div class="trust-icon">
            <i class="fa-solid fa-shield-halved"></i>
          </div>
          <div>
            <strong>Secure Payment</strong>
            <span>100% protected</span>
          </div>
        </div>

        <div class="trust-item">
          <div class="trust-icon">
            <i class="fa-solid fa-rotate-left"></i>
          </div>
          <div>
            <strong>Easy Returns</strong>
            <span>30-day returns</span>
          </div>
        </div>

        <div class="trust-item">
          <div class="trust-icon">
            <i class="fa-solid fa-headset"></i>
          </div>
          <div>
            <strong>24/7 Support</strong>
            <span>We're here to help</span>
          </div>
        </div>

      </div>

    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories">

      <div class="container">

        <div class="section-header">

          <div class="section-heading">
            <h2>Shop by Category</h2>
            <p>Find exactly what you're looking for.</p>
          </div>

          <button
            class="view-all"
            id="allCategories"
          >
            View all
            <i class="fa-solid fa-arrow-right"></i>
          </button>

        </div>

        <div
          class="category-grid"
          id="categoryGrid"
        ></div>

      </div>

    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products">

      <div class="container">

        <div class="section-header">

          <div class="section-heading">
            <h2>Trending Products</h2>
            <p id="productSubtitle">
              Popular picks our customers love.
            </p>
          </div>

          <button
            class="view-all"
            id="clearFilter"
            style="display:none"
          >
            Clear filter
          </button>

        </div>

        <div
          class="product-grid"
          id="productGrid"
        ></div>

      </div>

    </section>

    <!-- DEAL -->
    <section class="section deal-section" id="deals">

      <div class="container">

        <div class="section-header">
          <div class="section-heading">
            <h2>Flash Sale</h2>
            <p>Limited-time offer. Don't miss it.</p>
          </div>
        </div>

        <div class="deal-card">

          <div class="deal-image">
            <img
              src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
              alt="MacBook laptop"
            />
          </div>

          <div class="deal-content">

            <div class="deal-tag">
              <i class="fa-solid fa-bolt"></i>
              Limited Time Deal
            </div>

            <h2>MacBook Air M2</h2>

            <p>
              Thin, light and powerful. Get exceptional performance
              for work, study and creativity.
            </p>

            <div class="timer">

              <div class="timer-box">
                <strong id="dealDays">00</strong>
                <span>Days</span>
              </div>

              <div class="timer-box">
                <strong id="dealHours">00</strong>
                <span>Hours</span>
              </div>

              <div class="timer-box">
                <strong id="dealMinutes">00</strong>
                <span>Minutes</span>
              </div>

              <div class="timer-box">
                <strong id="dealSeconds">00</strong>
                <span>Seconds</span>
              </div>

            </div>

            <div class="deal-price">

              <strong>$999</strong>

              <span class="old-price">
                $1,199
              </span>

              <span class="discount">
                17% OFF
              </span>

            </div>

            <p style="font-size:12px;margin-bottom:17px;">
              <strong style="color:#ff4757;">Only 12 left</strong>
              at this price.
            </p>

            <button
              class="btn btn-primary"
              id="buyDeal"
              style="width:max-content;"
            >
              Add Deal to Cart
              <i class="fa-solid fa-cart-plus"></i>
            </button>

          </div>

        </div>

      </div>

    </section>

    <!-- TESTIMONIALS -->
    <section class="section">

      <div class="container">

        <div class="section-header">

          <div class="section-heading">
            <h2>What customers say</h2>
            <p>Real experiences from our shoppers.</p>
          </div>

        </div>

        <div class="testimonial-grid">

          <article class="testimonial">

            <div class="testimonial-stars">
              ★★★★★
            </div>

            <p class="testimonial-text">
              "Fast shipping and excellent customer support.
              The product exceeded my expectations!"
            </p>

            <div class="customer">

              <img
                src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                alt="Ava Martin"
              />

              <div>
                <strong>Ava Martin</strong>
                <span>Verified buyer</span>
              </div>

            </div>

          </article>

          <article class="testimonial">

            <div class="testimonial-stars">
              ★★★★☆
            </div>

            <p class="testimonial-text">
              "Great selection and checkout was incredibly
              smooth. I'll definitely shop here again."
            </p>

            <div class="customer">

              <img
                src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                alt="Michael Lee"
              />

              <div>
                <strong>Michael Lee</strong>
                <span>Frequent buyer</span>
              </div>

            </div>

          </article>

          <article class="testimonial">

            <div class="testimonial-stars">
              ★★★★★
            </div>

            <p class="testimonial-text">
              "Beautiful products, good prices and very quick
              delivery. NexusShop is now one of my favorites."
            </p>

            <div class="customer">

              <img
                src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                alt="Sophia Williams"
              />

              <div>
                <strong>Sophia Williams</strong>
                <span>Verified buyer</span>
              </div>

            </div>

          </article>

        </div>

      </div>

    </section>

    <!-- NEWSLETTER -->
    <section class="section">

      <div class="container">

        <div class="newsletter" id="about">

          <h2>Stay in the loop</h2>

          <p>
            Get new arrivals, exclusive discounts and special offers.
          </p>

          <form
            class="newsletter-form"
            id="newsletterForm"
          >

            <input
              type="email"
              id="newsletterEmail"
              placeholder="Enter your email address"
              required
            />

            <button
              class="btn btn-primary"
              type="submit"
            >
              Subscribe
            </button>

          </form>

          <div
            class="newsletter-message"
            id="newsletterMessage"
          ></div>

        </div>

      </div>

    </section>

  </main>

  <!-- FOOTER -->
  <footer>

    <div class="container">

      <div class="footer-grid">

        <div class="footer-brand">

          <div class="logo">
            Nexus<span>Shop</span>
          </div>

          <p>
            A modern e-commerce experience designed for
            simple shopping, great products and happy customers.
          </p>

          <div class="socials">

            <a href="#" class="social" aria-label="Facebook">
              <i class="fa-brands fa-facebook-f"></i>
            </a>

            <a href="#" class="social" aria-label="Instagram">
              <i class="fa-brands fa-instagram"></i>
            </a>

            <a href="#" class="social" aria-label="Twitter">
              <i class="fa-brands fa-x-twitter"></i>
            </a>

          </div>

        </div>

        <div>

          <div class="footer-title">
            Company
          </div>

          <div class="footer-links">
            <a href="#about">About</a>
            <a href="#">Careers</a>
            <a href="#">Press</a>
            <a href="#">Blog</a>
          </div>

        </div>

        <div>

          <div class="footer-title">
            Support
          </div>

          <div class="footer-links">
            <a href="#">Help Center</a>
            <a href="#">Shipping</a>
            <a href="#">Returns</a>
            <a href="#">Contact</a>
          </div>

        </div>

        <div>

          <div class="footer-title">
            Legal
          </div>

          <div class="footer-links">
            <a href="#">Privacy</a>
            <a href="#">Terms</a>
            <a href="#">Cookies</a>
            <a href="#">Refund Policy</a>
          </div>

        </div>

      </div>

      <div class="copyright">
        © <span id="year"></span> NexusShop. All rights reserved.
      </div>

    </div>

  </footer>

  <!-- CART OVERLAY -->
  <div
    class="overlay"
    id="cartOverlay"
  ></div>

  <!-- CART DRAWER -->
  <aside
    class="cart-drawer"
    id="cartDrawer"
    aria-label="Shopping cart"
  >

    <div class="cart-header">

      <h2>
        Your Cart
        <span
          style="font-size:12px;color:var(--muted);"
          id="cartHeaderCount"
        >
          0 items
        </span>
      </h2>

      <button
        class="icon-button"
        id="closeCart"
        aria-label="Close cart"
      >
        <i class="fa-solid fa-xmark"></i>
      </button>

    </div>

    <div
      class="cart-items"
      id="cartItems"
    ></div>

    <div class="cart-footer">

      <div class="subtotal">

        <span>Subtotal</span>

        <span id="cartSubtotal">
          $0.00
        </span>

      </div>

      <button
        class="checkout-btn"
        id="checkoutButton"
      >
        Proceed to Checkout
        <i class="fa-solid fa-arrow-right"></i>
      </button>

    </div>

  </aside>

  <!-- MOBILE BOTTOM NAV -->
  <nav class="mobile-nav">

    <button
      class="active"
      data-mobile-bottom="home"
    >
      <i class="fa-solid fa-house"></i>
      Home
    </button>

    <button data-mobile-bottom="categories">
      <i class="fa-solid fa-layer-group"></i>
      Categories
    </button>

    <button data-mobile-bottom="products">
      <i class="fa-solid fa-store"></i>
      Shop
    </button>

    <button id="mobileCartButton">
      <i class="fa-solid fa-bag-shopping"></i>
      Cart
    </button>

  </nav>

  <!-- TOAST -->
  <div
    class="toast"
    id="toast"
  ></div>


  <script>

    /* =========================================
       PRODUCT DATA
    ========================================== */

    const CATEGORIES = [
      {
        id: "phones",
        name: "Smartphones",
        icon: "fa-mobile-screen-button"
      },
      {
        id: "laptops",
        name: "Laptops",
        icon: "fa-laptop"
      },
      {
        id: "clothing",
        name: "Clothing",
        icon: "fa-shirt"
      },
      {
        id: "gadgets",
        name: "Gadgets",
        icon: "fa-headphones"
      },
      {
        id: "footwear",
        name: "Footwear",
        icon: "fa-shoe-prints"
      },
      {
        id: "accessories",
        name: "Accessories",
        icon: "fa-watch"
      }
    ];


    const PRODUCTS = [

      {
        id: 1,
        title: "iPhone 14 Pro Max",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        category: "phones",
        image:
          "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        category: "laptops",
        image:
          "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "-25%",
        category: "accessories",
        image:
          "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        category: "footwear",
        image:
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        category: "gadgets",
        image:
          "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 6,
        title: "Premium Fragrance",
        price: 120,
        rating: 5,
        reviews: 189,
        badge: "Popular",
        category: "accessories",
        image:
          "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "Sale",
        category: "accessories",
        image:
          "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        category: "gadgets",
        image:
          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
      }

    ];


    /* =========================================
       STATE
    ========================================== */

    let cart = [];

    let wishlist = new Set();

    let activeCategory = null;


    /* =========================================
       DOM
    ========================================== */

    const categoryGrid =
      document.getElementById("categoryGrid");

    const productGrid =
      document.getElementById("productGrid");

    const searchInput =
      document.getElementById("searchInput");

    const cartCount =
      document.getElementById("cartCount");

    const cartDrawer =
      document.getElementById("cartDrawer");

    const cartOverlay =
      document.getElementById("cartOverlay");

    const cartItems =
      document.getElementById("cartItems");

    const cartSubtotal =
      document.getElementById("cartSubtotal");

    const cartHeaderCount =
      document.getElementById("cartHeaderCount");

    const toast =
      document.getElementById("toast");


    /* =========================================
       HELPERS
    ========================================== */

    function formatPrice(value) {
      return "$" + value.toLocaleString("en-US", {
        minimumFractionDigits: 2,
        maximumFractionDigits: 2
      });
    }


    function showToast(message) {

      toast.textContent = message;

      toast.classList.add("show");

      clearTimeout(window.toastTimer);

      window.toastTimer = setTimeout(() => {
        toast.classList.remove("show");
      }, 2200);

    }


    function getCartQuantity() {

      return cart.reduce(
        (total, item) => total + item.quantity,
        0
      );

    }


    function getCartSubtotal() {

      return cart.reduce(
        (total, item) =>
          total + item.price * item.quantity,
        0
      );

    }


    /* =========================================
       RENDER CATEGORIES
    ========================================== */

    function renderCategories() {

      categoryGrid.innerHTML = "";

      CATEGORIES.forEach(category => {

        const card =
          document.createElement("button");

        card.className =
          "category-card";

        card.type = "button";

        if (activeCategory === category.id) {
          card.classList.add("active");
        }

        card.innerHTML = `

          <div class="category-icon">
            <i class="fa-solid ${category.icon}"></i>
          </div>

          <h3>${category.name}</h3>

          <p>Explore collection</p>

        `;

        card.addEventListener("click", () => {

          activeCategory = category.id;

          searchInput.value = "";

          renderCategories();

          filterProducts();

          document
            .getElementById("products")
            .scrollIntoView({
              behavior: "smooth"
            });

        });

        categoryGrid.appendChild(card);

      });

    }


    /* =========================================
       RENDER PRODUCTS
    ========================================== */

    function renderProducts(products) {

      productGrid.innerHTML =
