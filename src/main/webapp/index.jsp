<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>ShopEasy - E-Commerce App</title>

  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: Arial, sans-serif;
      background: #f7f8fa;
      color: #172033;
    }

    button,
    input {
      font: inherit;
    }

    button {
      cursor: pointer;
    }

    /* Header */
    header {
      background: white;
      padding: 16px 5%;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      position: sticky;
      top: 0;
      z-index: 100;
      box-shadow: 0 2px 12px rgba(0,0,0,.06);
    }

    .logo {
      font-size: 24px;
      font-weight: 800;
      color: #635bff;
    }

    .search {
      flex: 1;
      max-width: 500px;
      position: relative;
    }

    .search input {
      width: 100%;
      padding: 13px 45px 13px 18px;
      border: 1px solid #e1e5ec;
      border-radius: 30px;
      outline: none;
      background: #f7f8fa;
    }

    .search input:focus {
      border-color: #635bff;
      background: white;
    }

    .search span {
      position: absolute;
      right: 18px;
      top: 12px;
    }

    .header-actions {
      display: flex;
      gap: 12px;
    }

    .icon-btn {
      border: 0;
      background: #f1f2f6;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: -4px;
      right: -3px;
      background: #ff4d67;
      color: white;
      font-size: 11px;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      display: grid;
      place-items: center;
    }

    /* Hero */
    .hero {
      margin: 25px auto;
      width: 90%;
      max-width: 1200px;
      min-height: 330px;
      border-radius: 24px;
      padding: 50px;
      display: flex;
      align-items: center;
      background: linear-gradient(120deg, #635bff, #8b5cf6);
      color: white;
      overflow: hidden;
    }

    .hero-content {
      max-width: 560px;
    }

    .hero small {
      background: rgba(255,255,255,.18);
      padding: 8px 14px;
      border-radius: 20px;
      display: inline-block;
      margin-bottom: 15px;
    }

    .hero h1 {
      font-size: clamp(32px, 5vw, 54px);
      line-height: 1.05;
      margin-bottom: 15px;
    }

    .hero p {
      opacity: .9;
      margin-bottom: 25px;
      line-height: 1.6;
    }

    .primary-btn {
      border: 0;
      background: white;
      color: #635bff;
      padding: 13px 22px;
      border-radius: 30px;
      font-weight: 700;
    }

    /* Main */
    main {
      width: 90%;
      max-width: 1200px;
      margin: auto;
    }

    section {
      margin: 45px 0;
    }

    .section-heading {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 20px;
    }

    .section-heading h2 {
      font-size: 26px;
    }

    .view-all {
      color: #635bff;
      font-weight: 600;
      border: 0;
      background: none;
    }

    /* Categories */
    .categories {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 15px;
    }

    .category {
      border: 0;
      background: white;
      border-radius: 16px;
      padding: 22px 10px;
      box-shadow: 0 5px 18px rgba(0,0,0,.04);
      transition: .2s;
    }

    .category:hover {
      transform: translateY(-4px);
      box-shadow: 0 10px 25px rgba(0,0,0,.08);
    }

    .category-icon {
      width: 55px;
      height: 55px;
      margin: auto auto 10px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      background: #eeeaff;
      font-size: 25px;
    }

    .category p {
      font-weight: 600;
      font-size: 14px;
    }

    /* Products */
    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }

    .product {
      background: white;
      border-radius: 18px;
      overflow: hidden;
      box-shadow: 0 5px 18px rgba(0,0,0,.04);
      transition: .2s;
    }

    .product:hover {
      transform: translateY(-5px);
    }

    .product-image {
      height: 210px;
      background: #f1f3f7;
      display: grid;
      place-items: center;
      font-size: 75px;
      position: relative;
    }

    .heart {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 38px;
      height: 38px;
      border: 0;
      background: white;
      border-radius: 50%;
      font-size: 18px;
    }

    .product-info {
      padding: 16px;
    }

    .product-info small {
      color: #8991a3;
    }

    .product-info h3 {
      margin: 6px 0;
      font-size: 16px;
    }

    .rating {
      color: #f5b800;
      font-size: 14px;
    }

    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 12px;
    }

    .price {
      font-size: 20px;
      font-weight: 800;
    }

    .add-btn {
      border: 0;
      background: #635bff;
      color: white;
      padding: 9px 13px;
      border-radius: 10px;
      font-weight: 600;
    }

    .add-btn:hover {
      background: #5148e5;
    }

    /* Deal */
    .deal {
      background: #172033;
      color: white;
      border-radius: 22px;
      padding: 35px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 30px;
    }

    .deal h2 {
      font-size: 32px;
      margin-bottom: 10px;
    }

    .deal p {
      color: #b9c0ce;
      margin-bottom: 20px;
    }

    .timer {
      display: flex;
      gap: 10px;
    }

    .timer-box {
      background: #293247;
      padding: 12px;
      border-radius: 10px;
      min-width: 60px;
      text-align: center;
    }

    .timer-box strong {
      display: block;
      font-size: 20px;
    }

    /* Cart drawer */
    .overlay {
      position: fixed;
      inset: 0;
      background: rgba(0,0,0,.4);
      display: none;
      z-index: 200;
    }

    .cart-drawer {
      position: fixed;
      right: 0;
      top: 0;
      height: 100%;
      width: min(400px, 90%);
      background: white;
      z-index: 201;
      padding: 25px;
      transform: translateX(100%);
      transition: .3s;
      display: flex;
      flex-direction: column;
    }

    .cart-drawer.open {
      transform: translateX(0);
    }

    .overlay.open {
      display: block;
    }

    .cart-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 25px;
    }

    .close {
      border: 0;
      background: #f1f2f6;
      width: 36px;
      height: 36px;
      border-radius: 50%;
    }

    #cartItems {
      flex: 1;
      overflow-y: auto;
    }

    .cart-item {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 12px 0;
      border-bottom: 1px solid #eee;
    }

    .cart-item-icon {
      width: 50px;
      height: 50px;
      background: #f1f2f6;
      border-radius: 10px;
      display: grid;
      place-items: center;
      font-size: 25px;
    }

    .cart-total {
      border-top: 1px solid #eee;
      padding-top: 18px;
      margin-top: 15px;
    }

    .checkout {
      width: 100%;
      margin-top: 15px;
      padding: 14px;
      background: #635bff;
      color: white;
      border: 0;
      border-radius: 12px;
      font-weight: 700;
    }

    .empty {
      text-align: center;
      color: #8991a3;
      padding: 40px 10px;
    }

    /* Toast */
    .toast {
      position: fixed;
      bottom: 25px;
      left: 50%;
      transform: translate(-50%, 100px);
      background: #172033;
      color: white;
      padding: 13px 20px;
      border-radius: 30px;
      z-index: 500;
      transition: .3s;
    }

    .toast.show {
      transform: translate(-50%, 0);
    }

    /* Mobile */
    @media (max-width: 900px) {
      .categories {
        grid-template-columns: repeat(3, 1fr);
      }

      .products {
        grid-template-columns: repeat(2, 1fr);
      }
    }

    @media (max-width: 600px) {
      header {
        flex-wrap: wrap;
      }

      .logo {
        font-size: 20px;
      }

      .search {
        order: 3;
        flex-basis: 100%;
        max-width: none;
      }

      .hero {
        padding: 30px;
        min-height: 300px;
      }

      .hero h1 {
        font-size: 34px;
      }

      .categories {
        grid-template-columns: repeat(2, 1fr);
      }

      .products {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }

      .product-image {
        height: 150px;
        font-size: 55px;
      }

      .product-info {
        padding: 12px;
      }

      .price-row {
        align-items: flex-end;
        flex-direction: column;
        gap: 8px;
      }

      .add-btn {
        width: 100%;
      }

      .deal {
        padding: 25px;
      }

      .deal h2 {
        font-size: 25px;
      }

      .timer-box {
        min-width: 50px;
        padding: 8px;
      }
    }
  </style>
</head>

<body>

  <header>
    <div class="logo">ShopEasy</div>

    <div class="search">
      <input
        type="search"
        id="search"
        placeholder="Search products..."
      />
      <span>🔍</span>
    </div>

    <div class="header-actions">
      <button class="icon-btn">♡</button>

      <button class="icon-btn" id="cartButton">
        🛒
        <span class="cart-count" id="cartCount">0</span>
      </button>
    </div>
  </header>

  <div class="hero">
    <div class="hero-content">
      <small>🔥 Limited Time Offer</small>
      <h1>Everything you love, in one place.</h1>
      <p>
        Discover trending products, exclusive offers and everyday essentials
        with a simple shopping experience.
      </p>
      <button class="primary-btn" onclick="scrollToProducts()">
        Shop Now →
      </button>
    </div>
  </div>

  <main>

    <!-- Categories -->
    <section>
      <div class="section-heading">
        <h2>Categories</h2>
        <button class="view-all">View all</button>
      </div>

      <div class="categories">
        <button class="category" onclick="filterCategory('Electronics')">
          <div class="category-icon">📱</div>
          <p>Electronics</p>
        </button>

        <button class="category" onclick="filterCategory('Fashion')">
          <div class="category-icon">👕</div>
          <p>Fashion</p>
        </button>

        <button class="category" onclick="filterCategory('Shoes')">
          <div class="category-icon">👟</div>
          <p>Shoes</p>
        </button>

        <button class="category" onclick="filterCategory('Beauty')">
          <div class="category-icon">💄</div>
          <p>Beauty</p>
        </button>

        <button class="category" onclick="filterCategory('Home')">
          <div class="category-icon">🏠</div>
          <p>Home</p>
        </button>

        <button class="category" onclick="filterCategory('Sports')">
          <div class="category-icon">⚽</div>
          <p>Sports</p>
        </button>
      </div>
    </section>

    <!-- Products -->
    <section id="productsSection">
      <div class="section-heading">
        <div>
          <h2>Popular Products</h2>
          <p style="color:#8991a3;margin-top:5px">
            Best picks for you
          </p>
        </div>

        <button class="view-all" onclick="showAllProducts()">
          All Products
        </button>
      </div>

      <div class="products" id="products"></div>
    </section>

    <!-- Deal -->
    <section>
      <div class="deal">
        <div>
          <h2>Flash Sale ⚡</h2>
          <p>Get up to 40% off selected products today.</p>

          <div class="timer">
            <div class="timer-box">
              <strong id="hours">12</strong>
              <small>Hours</small>
            </div>

            <div class="timer-box">
              <strong id="minutes">30</strong>
              <small>Minutes</small>
            </div>

            <div class="timer-box">
              <strong id="seconds">45</strong>
              <small>Seconds</small>
            </div>
          </div>
        </div>

        <button class="primary-btn" onclick="scrollToProducts()">
          Shop Deals
        </button>
      </div>
    </section>

  </main>

  <!-- Cart overlay -->
  <div class="overlay" id="overlay"></div>

  <aside class="cart-drawer" id="cartDrawer">
    <div class="cart-header">
      <h2>Your Cart 🛒</h2>
      <button class="close" id="closeCart">✕</button>
    </div>

    <div id="cartItems">
      <div class="empty">
        Your cart is empty.
      </div>
    </div>

    <div class="cart-total">
      <div style="display:flex;justify-content:space-between;">
        <strong>Total</strong>
        <strong id="cartTotal">$0</strong>
      </div>

      <button class="checkout" onclick="checkout()">
        Proceed to Checkout
      </button>
    </div>
  </aside>

  <div class="toast" id="toast">
    Added to cart ✓
  </div>

  <script>
    const products = [
      {
        id: 1,
        name: "Wireless Headphones",
        category: "Electronics",
        price: 79,
        icon: "🎧"
      },
      {
        id: 2,
        name: "Smart Watch",
        category: "Electronics",
        price: 129,
        icon: "⌚"
      },
      {
        id: 3,
        name: "Premium Sneakers",
        category: "Shoes",
        price: 95,
        icon: "👟"
      },
      {
        id: 4,
        name: "Classic T-Shirt",
        category: "Fashion",
        price: 35,
        icon: "👕"
      },
      {
        id: 5,
        name: "Beauty Essentials",
        category: "Beauty",
        price: 49,
        icon: "💄"
      },
      {
        id: 6,
        name: "Modern Backpack",
        category: "Fashion",
        price: 59,
        icon: "🎒"
      },
      {
        id: 7,
        name: "Home Lamp",
        category: "Home",
        price: 45,
        icon: "💡"
      },
      {
        id: 8,
        name: "Sports Ball",
        category: "Sports",
        price: 29,
        icon: "⚽"
      }
    ];

    let cart = [];

    const productsContainer = document.getElementById("products");
    const searchInput = document.getElementById("search");

    function renderProducts(list) {
      productsContainer.innerHTML = "";

      if (list.length === 0) {
        productsContainer.innerHTML = `
          <div style="grid-column:1/-1;text-align:center;padding:50px;">
            <h3>No products found 😔</h3>
            <p style="color:#8991a3;margin-top:8px;">
              Try another search.
            </p>
          </div>
        `;
        return;
      }

      list.forEach(product => {
        productsContainer.innerHTML += `
          <article class="product">
            <div class="product-image">
              ${product.icon}

              <button
                class="heart"
                onclick="wishlist(this)"
                aria-label="Add to wishlist"
              >
                ♡
              </button>
            </div>

            <div class="product-info">
              <small>${product.category}</small>

              <h3>${product.name}</h3>

              <div class="rating">
                ★★★★★
              </div>

              <div class="price-row">
                <div class="price">
                  $${product.price}
                </div>

                <button
                  class="add-btn"
                  onclick="addToCart(${product.id})"
                >
                  Add +
                </button>
              </div>
            </div>
          </article>
        `;
      });
    }

    function addToCart(id) {
      const product = products.find(p => p.id === id);

      const existing = cart.find(item => item.id === id);

      if (existing) {
        existing.quantity++;
      } else {
        cart.push({
          ...product,
          quantity: 1
        });
      }

      updateCart();
      showToast(`${product.name} added to cart ✓`);
    }

    function updateCart() {
      const count = cart.reduce(
        (total, item) => total + item.quantity,
        0
      );

      document.getElementById("cartCount").textContent = count;

      const cartItems = document.getElementById("cartItems");

      if (cart.length === 0) {
        cartItems.innerHTML = `
          <div class="empty">
            Your cart is empty.
          </div>
        `;
      } else {
        cartItems.innerHTML = cart.map(item => `
          <div class="cart-item">
            <div class="cart-item-icon">
              ${item.icon}
            </div>

            <div style="flex:1;">
              <strong>${item.name}</strong>

              <div style="color:#8991a3;font-size:13px;">
                $${item.price} × ${item.quantity}
              </div>
            </div>

            <strong>
              $${item.price * item.quantity}
            </strong>
          </div>
        `).join("");
      }

      const total = cart.reduce(
        (sum, item) => sum + item.price * item.quantity,
        0
      );

      document.getElementById("cartTotal").textContent =
        "$" + total;
    }

    function filterCategory(category) {
      const filtered = products.filter(
        product => product.category === category
      );

      renderProducts(filtered);
      scrollToProducts();
    }

    function showAllProducts() {
      renderProducts(products);
    }

    searchInput.addEventListener("input", function () {
      const query = this.value.toLowerCase();

      const filtered = products.filter(product =>
        product.name.toLowerCase().includes(query) ||
        product.category.toLowerCase().includes(query)
      );

      renderProducts(filtered);
    });

    function wishlist(button) {
      button.textContent =
        button.textContent === "♡" ? "♥" : "♡";

      if (button.textContent === "♥") {
        button.style.color = "#ff4d67";
        showToast("Added to wishlist ❤️");
      }
    }

    function scrollToProducts() {
      document.getElementById("productsSection")
        .scrollIntoView({
          behavior: "smooth"
        });
    }

    function showToast(message) {
      const toast = document.getElementById("toast");

      toast.textContent = message;
      toast.classList.add("show");

      setTimeout(() => {
        toast.classList.remove("show");
      }, 1800);
    }

    function checkout() {
      if (cart.length === 0) {
        showToast("Your cart is empty");
        return;
      }

      showToast("Checkout started ✓");
    }

    /* Cart drawer */
    const cartButton = document.getElementById("cartButton");
    const cartDrawer = document.getElementById("cartDrawer");
    const overlay = document.getElementById("overlay");
    const closeCart = document.getElementById("closeCart");

    function openCart() {
      cartDrawer.classList.add("open");
      overlay.classList.add("open");
    }

    function closeCartDrawer() {
      cartDrawer.classList.remove("open");
      overlay.classList.remove("open");
    }

    cartButton.addEventListener("click", openCart);
    closeCart.addEventListener("click", closeCartDrawer);
    overlay.addEventListener("click", closeCartDrawer);

    /* Countdown */
    let totalSeconds = 12 * 60 * 60 + 30 * 60 + 45;

    function countdown() {
      if (totalSeconds <= 0) {
        totalSeconds = 24 * 60 * 60;
      }

      const hours =
        Math.floor(totalSeconds / 3600);

      const minutes =
        Math.floor((totalSeconds % 3600) / 60);

      const seconds =
        totalSeconds % 60;

      document.getElementById("hours").textContent =
        String(hours).padStart(2, "0");

      document.getElementById("minutes").textContent =
        String(minutes).padStart(2, "0");

      document.getElementById("seconds").textContent =
        String(seconds).padStart(2, "0");

      totalSeconds--;
    }

    renderProducts(products);
    updateCart();
    countdown();

    setInterval(countdown, 1000);
  </script>

</body>
</html>
