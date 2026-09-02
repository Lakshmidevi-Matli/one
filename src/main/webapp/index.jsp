<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FoodieGo - Food Delivery</title>

<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background: #f8f9fb;
    color: #20242c;
    padding-bottom: 80px;
}

/* HEADER */
header {
    background: white;
    padding: 18px 6%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: sticky;
    top: 0;
    z-index: 100;
    box-shadow: 0 2px 12px rgba(0,0,0,.06);
}

.logo {
    font-size: 24px;
    font-weight: bold;
    color: #ff5a36;
}

.location {
    font-size: 13px;
    color: #777;
}

.location strong {
    display: block;
    color: #222;
    margin-top: 3px;
}

.profile {
    width: 42px;
    height: 42px;
    border-radius: 50%;
    border: none;
    background: #fff0eb;
    font-size: 20px;
}

/* HERO */
.hero {
    width: 90%;
    max-width: 1100px;
    margin: 25px auto;
    padding: 45px;
    border-radius: 25px;
    color: white;
    background: linear-gradient(120deg, #ff5a36, #ff8a5b);
}

.hero h1 {
    font-size: clamp(32px, 5vw, 52px);
    max-width: 600px;
    line-height: 1.1;
}

.hero p {
    margin: 15px 0 25px;
    max-width: 550px;
    line-height: 1.6;
    opacity: .95;
}

.hero button {
    background: white;
    color: #ff5a36;
    border: none;
    padding: 13px 22px;
    border-radius: 30px;
    font-weight: bold;
    cursor: pointer;
}

/* SEARCH */
.search-container {
    width: 90%;
    max-width: 1100px;
    margin: 25px auto;
}

.search {
    position: relative;
}

.search input {
    width: 100%;
    padding: 16px 50px 16px 20px;
    border: 1px solid #ddd;
    border-radius: 30px;
    outline: none;
    font-size: 15px;
    background: white;
}

.search input:focus {
    border-color: #ff5a36;
}

.search span {
    position: absolute;
    right: 20px;
    top: 14px;
    font-size: 20px;
}

/* MAIN */
main {
    width: 90%;
    max-width: 1100px;
    margin: auto;
}

section {
    margin: 40px 0;
}

.heading {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 18px;
}

.heading h2 {
    font-size: 25px;
}

.heading button {
    border: none;
    background: none;
    color: #ff5a36;
    font-weight: bold;
    cursor: pointer;
}

/* CATEGORIES */
.categories {
    display: flex;
    gap: 15px;
    overflow-x: auto;
    padding: 5px;
}

.category {
    min-width: 100px;
    border: none;
    background: white;
    padding: 15px 10px;
    border-radius: 18px;
    cursor: pointer;
    box-shadow: 0 5px 15px rgba(0,0,0,.04);
}

.category.active {
    background: #ff5a36;
    color: white;
}

.category-icon {
    width: 55px;
    height: 55px;
    margin: auto auto 8px;
    background: #fff0eb;
    border-radius: 50%;
    display: grid;
    place-items: center;
    font-size: 27px;
}

.category.active .category-icon {
    background: rgba(255,255,255,.2);
}

/* FOOD CARDS */
.food-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}

.food-card {
    background: white;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 5px 20px rgba(0,0,0,.05);
    transition: .2s;
}

.food-card:hover {
    transform: translateY(-5px);
}

.food-image {
    height: 190px;
    background: #ffe9e2;
    display: grid;
    place-items: center;
    font-size: 75px;
    position: relative;
}

.favorite {
    position: absolute;
    top: 12px;
    right: 12px;
    width: 38px;
    height: 38px;
    border: none;
    border-radius: 50%;
    background: white;
    cursor: pointer;
    font-size: 18px;
}

.food-info {
    padding: 17px;
}

.food-info h3 {
    margin-bottom: 7px;
}

.description {
    color: #888;
    font-size: 13px;
    line-height: 1.4;
}

.rating {
    color: #ffae00;
    margin: 10px 0;
    font-size: 14px;
}

.food-bottom {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.price {
    font-size: 20px;
    font-weight: bold;
}

.add {
    border: none;
    background: #ff5a36;
    color: white;
    width: 40px;
    height: 40px;
    border-radius: 12px;
    font-size: 22px;
    cursor: pointer;
}

/* PROMO */
.promo {
    background: #20242c;
    color: white;
    padding: 30px;
    border-radius: 22px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 20px;
}

.promo h2 {
    margin-bottom: 8px;
}

.promo p {
    color: #bbb;
}

.promo button {
    background: #ff5a36;
    color: white;
    border: none;
    padding: 13px 22px;
    border-radius: 30px;
    font-weight: bold;
}

/* CART */
.cart {
    position: fixed;
    right: 20px;
    bottom: 90px;
    background: #ff5a36;
    color: white;
    width: 58px;
    height: 58px;
    border: none;
    border-radius: 50%;
    font-size: 24px;
    box-shadow: 0 8px 25px rgba(255,90,54,.35);
    z-index: 50;
}

.cart-count {
    position: absolute;
    top: -3px;
    right: -3px;
    background: #20242c;
    color: white;
    width: 20px;
    height: 20px;
    border-radius: 50%;
    font-size: 11px;
    display: grid;
    place-items: center;
}

/* BOTTOM NAV */
.bottom-nav {
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    height: 70px;
    background: white;
    display: flex;
    justify-content: space-around;
    align-items: center;
    box-shadow: 0 -3px 15px rgba(0,0,0,.08);
    z-index: 40;
}

.nav-item {
    border: none;
    background: none;
    color: #888;
    font-size: 12px;
}

.nav-item span {
    display: block;
    font-size: 21px;
    margin-bottom: 3px;
}

.nav-item.active {
    color: #ff5a36;
}

/* TOAST */
.toast {
    position: fixed;
    left: 50%;
    bottom: 85px;
    transform: translate(-50%, 100px);
    background: #20242c;
    color: white;
    padding: 13px 20px;
    border-radius: 30px;
    transition: .3s;
    z-index: 500;
}

.toast.show {
    transform: translate(-50%, 0);
}

/* MOBILE */
@media(max-width:800px) {
    .food-grid {
        grid-template-columns: repeat(2, 1fr);
    }

    .hero {
        padding: 30px;
    }
}

@media(max-width:550px) {
    header {
        padding: 14px 5%;
    }

    .logo {
        font-size: 20px;
    }

    .location {
        display: none;
    }

    .hero {
        width: 92%;
        min-height: 280px;
        padding: 28px;
    }

    .hero h1 {
        font-size: 34px;
    }

    .food-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
    }

    .food-image {
        height: 140px;
        font-size: 55px;
    }

    .food-info {
        padding: 12px;
    }

    .food-info h3 {
        font-size: 15px;
    }

    .promo {
        flex-direction: column;
        align-items: flex-start;
    }
}

@media(max-width:380px) {
    .food-grid {
        grid-template-columns: 1fr;
    }
}
</style>
</head>

<body>

<header>
    <div>
        <div class="logo">FoodieGo 🍔</div>
        <div class="location">
            Deliver to
            <strong>📍 Your Location</strong>
        </div>
    </div>

    <button class="profile">👤</button>
</header>

<div class="hero">
    <h1>Delicious food, delivered to you.</h1>

    <p>
        Discover your favorite meals from the best restaurants
        around you.
    </p>

    <button onclick="scrollToFood()">
        Order Now →
    </button>
</div>

<div class="search-container">
    <div class="search">
        <input
            type="search"
            id="search"
            placeholder="Search for pizza, burger, biryani..."
        >
        <span>🔍</span>
    </div>
</div>

<main>

<section>
    <div class="heading">
        <h2>Categories</h2>
        <button onclick="showAll()">View All</button>
    </div>

    <div class="categories">

        <button class="category active"
                onclick="filterFood('All', this)">
            <div class="category-icon">🍽️</div>
            All
        </button>

        <button class="category"
                onclick="filterFood('Pizza', this)">
            <div class="category-icon">🍕</div>
            Pizza
        </button>

        <button class="category"
                onclick="filterFood('Burger', this)">
            <div class="category-icon">🍔</div>
            Burger
        </button>

        <button class="category"
                onclick="filterFood('Indian', this)">
            <div class="category-icon">🍛</div>
            Indian
        </button>

        <button class="category"
                onclick="filterFood('Dessert', this)">
            <div class="category-icon">🍰</div>
            Dessert
        </button>

        <button class="category"
                onclick="filterFood('Drinks', this)">
            <div class="category-icon">🥤</div>
            Drinks
        </button>

    </div>
</section>

<section id="foodSection">

    <div class="heading">
        <div>
            <h2>Popular Near You</h2>
            <p style="color:#888;margin-top:5px">
                Fresh and delicious choices
            </p>
        </div>
    </div>

    <div class="food-grid" id="foodGrid"></div>

</section>

<section>

    <div class="promo">

        <div>
            <h2>🔥 Special Offer</h2>
            <p>Get 30% off your first order.</p>
        </div>

        <button onclick="showToast('Offer applied 🎉')">
            Claim Offer
        </button>

    </div>

</section>

</main>

<button class="cart" onclick="showCart()">
    🛒
    <span class="cart-count" id="cartCount">0</span>
</button>

<nav class="bottom-nav">

    <button class="nav-item active">
        <span>🏠</span>
        Home
    </button>

    <button class="nav-item">
        <span>🔍</span>
        Search
    </button>

    <button class="nav-item" onclick="showCart()">
        <span>🛒</span>
        Cart
    </button>

    <button class="nav-item">
        <span>❤️</span>
        Favorites
    </button>

    <button class="nav-item">
        <span>👤</span>
        Profile
    </button>

</nav>

<div class="toast" id="toast">
    Added to cart ✓
</div>

<script>

const foods = [

    {
        id: 1,
        name: "Cheese Pizza",
        category: "Pizza",
        description: "Cheesy, crispy and delicious",
        price: 12,
        icon: "🍕"
    },

    {
        id: 2,
        name: "Classic Burger",
        category: "Burger",
        description: "Juicy beef burger with cheese",
        price: 9,
        icon: "🍔"
    },

    {
        id: 3,
        name: "Chicken Biryani",
        category: "Indian",
        description: "Aromatic rice with spicy chicken",
        price: 11,
        icon: "🍛"
    },

    {
        id: 4,
        name: "Chocolate Cake",
        category: "Dessert",
        description: "Rich and creamy chocolate cake",
        price: 7,
        icon: "🍰"
    },

    {
        id: 5,
        name: "French Fries",
        category: "Burger",
        description: "Golden crispy french fries",
        price: 5,
        icon: "🍟"
    },

    {
        id: 6,
        name: "Cold Coffee",
        category: "Drinks",
        description: "Creamy chilled coffee",
        price: 6,
        icon: "🥤"
    },

    {
        id: 7,
        name: "Veg Pizza",
        category: "Pizza",
        description: "Fresh vegetables and mozzarella",
        price: 10,
        icon: "🍕"
    },

    {
        id: 8,
        name: "Gulab Jamun",
        category: "Indian",
        description: "Soft sweet Indian dessert",
        price: 5,
        icon: "🍮"
    }

];

let cart = 0;

const foodGrid = document.getElementById("foodGrid");
const search = document.getElementById("search");

function renderFoods(list) {

    foodGrid.innerHTML = "";

    if(list.length === 0) {

        foodGrid.innerHTML = `
            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:50px;
            ">
                <h3>No food found 😔</h3>
                <p style="color:#888;margin-top:8px">
                    Try searching for something else.
                </p>
            </div>
        `;

        return;
    }

    list.forEach(food => {

        foodGrid.innerHTML += `

            <article class="food-card">

                <div class="food-image">

                    ${food.icon}

                    <button
                        class="favorite"
                        onclick="favorite(this)"
                    >
                        ♡
                    </button>

                </div>

                <div class="food-info">

                    <h3>${food.name}</h3>

                    <div class="description">
                        ${food.description}
                    </div>

                    <div class="rating">
                        ★★★★★
                    </div>

                    <div class="food-bottom">

                        <div class="price">
                            $${food.price}
                        </div>

                        <button
                            class="add"
                            onclick="addToCart('${food.name}')"
                        >
                            +
                        </button>

                    </div>

                </div>

            </article>

        `;

    });

}

function filterFood(category, button) {

    document
        .querySelectorAll(".category")
        .forEach(btn => btn.classList.remove("active"));

    button.classList.add("active");

    if(category === "All") {

        renderFoods(foods);

    } else {

        renderFoods(
            foods.filter(food =>
                food.category === category
            )
        );

    }

    scrollToFood();
}

function showAll() {

    document
        .querySelectorAll(".category")
        .forEach(btn => btn.classList.remove("active"));

    document
        .querySelector(".category")
        .classList.add("active");

    renderFoods(foods);

}

search.addEventListener("input", function() {

    const query = this.value.toLowerCase();

    const results = foods.filter(food =>
        food.name.toLowerCase().includes(query) ||
        food.category.toLowerCase().includes(query)
    );

    renderFoods(results);

});

function addToCart(name) {

    cart++;

    document.getElementById("cartCount")
        .textContent = cart;

    showToast(`${name} added to cart ✓`);

}

function favorite(button) {

    if(button.textContent === "♡") {

        button.textContent = "♥";
        button.style.color = "#ff5a36";

        showToast("Added to favorites ❤️");

    } else {

        button.textContent = "♡";
        button.style.color = "#222";

    }

}

function showCart() {

    if(cart === 0) {

        showToast("Your cart is empty 🛒");

    } else {

        showToast(`You have ${cart} item(s) in your cart 🛒`);

    }

}

function showToast(message) {

    const toast = document.getElementById("toast");

    toast.textContent = message;

    toast.classList.add("show");

    setTimeout(() => {

        toast.classList.remove("show");

    }, 2000);

}

function scrollToFood() {

    document
        .getElementById("foodSection")
        .scrollIntoView({
            behavior: "smooth"
        });

}

renderFoods(foods);

</script>

</body>
</html>
