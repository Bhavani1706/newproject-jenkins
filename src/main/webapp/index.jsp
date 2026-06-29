<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Vela · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #fafbfc;
      color: #0b1a2f;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { text-decoration: none; color: inherit; }
    img { display: block; max-width: 100%; }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }
    /* header */
    .header {
      background: rgba(255,255,255,0.92);
      backdrop-filter: blur(6px);
      border-bottom: 1px solid rgba(0,0,0,0.03);
      position: sticky;
      top: 0;
      z-index: 50;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 14px 0;
      gap: 16px;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 6px;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.3px;
    }
    .brand i { color: #2b7be4; font-size: 24px; }
    .nav-desktop {
      display: flex;
      align-items: center;
      gap: 28px;
    }
    .nav-desktop a {
      font-weight: 500;
      color: #1d2b3f;
      transition: color 0.2s;
      font-size: 15px;
    }
    .nav-desktop a:hover { color: #2b7be4; }
    .nav-desktop a i { margin-right: 6px; opacity: 0.7; }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 18px;
    }
    .search-wrap {
      background: #f0f2f5;
      border-radius: 60px;
      padding: 8px 16px;
      display: flex;
      align-items: center;
      gap: 8px;
      transition: 0.2s;
      border: 1px solid transparent;
    }
    .search-wrap:focus-within {
      background: #fff;
      border-color: #2b7be4;
      box-shadow: 0 0 0 3px rgba(43,123,228,0.15);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      font-size: 14px;
      width: 180px;
      font-weight: 400;
    }
    .search-wrap button {
      background: transparent;
      border: none;
      color: #5d6f88;
      cursor: pointer;
      font-size: 15px;
    }
    .cart-icon {
      position: relative;
      font-size: 22px;
      color: #1d2b3f;
      transition: 0.2s;
      cursor: pointer;
    }
    .cart-icon:hover { color: #2b7be4; }
    .cart-count {
      position: absolute;
      top: -8px;
      right: -10px;
      background: #2b7be4;
      color: white;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 24px;
      color: #1d2b3f;
      cursor: pointer;
    }
    /* mobile nav */
    .mobile-nav {
      display: none;
      padding: 18px 0;
      border-top: 1px solid rgba(0,0,0,0.04);
      background: white;
    }
    .mobile-nav a {
      display: block;
      padding: 10px 0;
      font-weight: 500;
      border-bottom: 1px solid #f0f2f5;
    }
    .mobile-nav a:last-child { border-bottom: none; }

    /* hero */
    .hero {
      background: linear-gradient(135deg, #0b1a2f 0%, #1a3150 100%);
      border-radius: 24px;
      margin: 28px auto 20px;
      padding: 56px 48px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 30px;
    }
    .hero-content { flex: 1 1 300px; }
    .hero-content h1 {
      font-size: 38px;
      font-weight: 700;
      letter-spacing: -0.5px;
      line-height: 1.2;
    }
    .hero-content p {
      margin: 16px 0 24px;
      opacity: 0.8;
      max-width: 480px;
    }
    .hero-actions { display: flex; gap: 12px; flex-wrap: wrap; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: 0.2s;
      font-size: 15px;
    }
    .btn-primary { background: #2b7be4; color: white; }
    .btn-primary:hover { background: #1f66c9; transform: scale(1.01); }
    .btn-outline { background: transparent; border: 1.5px solid rgba(255,255,255,0.3); color: white; }
    .btn-outline:hover { background: rgba(255,255,255,0.08); }

    /* categories */
    .section { padding: 40px 0; }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin-bottom: 24px;
      flex-wrap: wrap;
    }
    .section-header h2 {
      font-size: 26px;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section-header .muted { color: #5d6f88; font-weight: 400; font-size: 15px; }
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(150px,1fr));
      gap: 16px;
    }
    .cat-card {
      background: white;
      padding: 22px 12px;
      border-radius: 18px;
      text-align: center;
      box-shadow: 0 6px 18px rgba(0,0,0,0.02);
      border: 1px solid #f0f2f5;
      transition: 0.2s;
      cursor: pointer;
    }
    .cat-card:hover { border-color: #2b7be4; transform: translateY(-4px); box-shadow: 0 12px 28px rgba(43,123,228,0.08); }
    .cat-card i { font-size: 32px; color: #2b7be4; margin-bottom: 8px; }
    .cat-card h4 { font-weight: 600; font-size: 15px; }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px,1fr));
      gap: 24px;
    }
    .product-card {
      background: white;
      border-radius: 20px;
      overflow: hidden;
      box-shadow: 0 4px 14px rgba(0,0,0,0.02);
      border: 1px solid #f0f2f5;
      transition: 0.2s;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover { border-color: #d0d9e6; transform: translateY(-4px); box-shadow: 0 20px 30px rgba(0,0,0,0.04); }
    .product-card img {
      height: 200px;
      width: 100%;
      object-fit: cover;
      background: #f4f6fa;
    }
    .product-body {
      padding: 16px 14px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .product-body h5 { font-weight: 600; font-size: 16px; }
    .product-meta { font-size: 13px; color: #5d6f88; }
    .product-price {
      font-weight: 700;
      font-size: 18px;
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .old-price { font-weight: 400; color: #8a9bb0; text-decoration: line-through; font-size: 14px; }
    .rating { color: #f5b342; font-size: 14px; letter-spacing: 1px; }
    .product-footer {
      padding: 10px 14px 14px;
      display: flex;
      gap: 10px;
      border-top: 1px solid #f0f2f5;
    }
    .add-btn {
      flex: 1;
      background: #0b1a2f;
      color: white;
      border: none;
      padding: 10px 0;
      border-radius: 40px;
      font-weight: 600;
      font-size: 14px;
      cursor: pointer;
      transition: 0.2s;
    }
    .add-btn:hover { background: #2b7be4; }
    .wish-btn {
      background: transparent;
      border: 1px solid #e2e8f0;
      border-radius: 40px;
      width: 42px;
      color: #5d6f88;
      cursor: pointer;
      transition: 0.2s;
    }
    .wish-btn:hover { background: #f0f2f5; color: #c00; }

    /* deal */
    .deal-card {
      display: flex;
      background: white;
      border-radius: 28px;
      overflow: hidden;
      border: 1px solid #eef2f6;
      flex-wrap: wrap;
    }
    .deal-card img {
      width: 40%;
      min-height: 240px;
      object-fit: cover;
      background: #f4f6fa;
    }
    .deal-content {
      padding: 32px 36px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 { font-size: 28px; font-weight: 700; }
    .deal-timer {
      display: flex;
      gap: 12px;
      margin: 18px 0 12px;
    }
    .time-box {
      background: #0b1a2f;
      color: white;
      padding: 12px 8px;
      min-width: 64px;
      text-align: center;
      border-radius: 14px;
    }
    .time-box div:first-child { font-size: 24px; font-weight: 700; }
    .time-box div:last-child { font-size: 11px; opacity: 0.7; }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 16px;
      margin: 10px 0 8px;
    }
    .deal-price .current { font-size: 32px; font-weight: 700; }
    .deal-price .old { color: #8a9bb0; text-decoration: line-through; font-size: 18px; }
    .badge-discount {
      background: #e53e3e;
      color: white;
      padding: 4px 12px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 14px;
    }

    /* testimonials */
    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px,1fr));
      gap: 20px;
    }
    .testimonial-card {
      background: white;
      padding: 24px;
      border-radius: 24px;
      border: 1px solid #f0f2f5;
    }
    .testimonial-card .rating { margin-bottom: 8px; }
    .testimonial-card p { font-size: 15px; color: #1d2b3f; }
    .testimonial-author {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 16px;
    }
    .testimonial-author img {
      width: 42px;
      height: 42px;
      border-radius: 60px;
      object-fit: cover;
      background: #e2e8f0;
    }

    /* newsletter */
    .newsletter-box {
      background: #0b1a2f;
      border-radius: 30px;
      padding: 40px 32px;
      color: white;
      text-align: center;
    }
    .newsletter-box h3 { font-size: 28px; font-weight: 700; }
    .newsletter-box p { opacity: 0.7; margin: 8px 0 18px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 14px 20px;
      border-radius: 60px;
      border: none;
      width: 280px;
      font-size: 15px;
      background: #fff;
    }
    .newsletter-form button { background: #2b7be4; color: white; border: none; padding: 14px 32px; border-radius: 60px; font-weight: 600; cursor: pointer; }

    /* footer */
    .footer {
      padding: 40px 0 20px;
      border-top: 1px solid #e2e8f0;
      margin-top: 20px;
    }
    .footer-inner {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 30px;
    }
    .footer-brand p { color: #5d6f88; max-width: 260px; margin-top: 6px; }
    .footer-links { display: flex; gap: 48px; flex-wrap: wrap; }
    .footer-links div { font-weight: 500; }
    .footer-links div span { display: block; font-weight: 400; color: #5d6f88; margin-top: 6px; line-height: 1.8; }
    .footer-bottom { text-align: center; margin-top: 28px; color: #8a9bb0; font-size: 14px; }

    @media (max-width: 900px) {
      .nav-desktop { display: none; }
      .mobile-toggle { display: block; }
      .search-wrap input { width: 120px; }
      .hero { padding: 36px 24px; }
      .deal-card img { width: 100%; height: 200px; }
      .deal-content { padding: 24px; }
    }
    @media (max-width: 600px) {
      .hero-content h1 { font-size: 28px; }
      .product-grid { grid-template-columns: 1fr 1fr; }
    }
  </style>
</head>
<body>

<header class="header">
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:14px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a href="#" class="brand"><i class="fas fa-cube"></i> Vela</a>
    </div>
    <nav class="nav-desktop">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#categories"><i class="fas fa-th"></i> Categories</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
      <a href="#"><i class="fas fa-fire"></i> Trending</a>
    </nav>
    <div class="header-actions">
      <div class="search-wrap">
        <input type="text" id="searchInput" placeholder="Search..." aria-label="Search">
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <a href="#" style="color:#1d2b3f;"><i class="far fa-heart"></i></a>
      <div class="cart-icon" id="cartBtn">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-count" id="cartCount">0</span>
      </div>
    </div>
  </div>
  <!-- mobile -->
  <div class="mobile-nav" id="mobileMenu">
    <div class="container">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#categories"><i class="fas fa-th"></i> Categories</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
      <a href="#"><i class="fas fa-fire"></i> Trending</a>
    </div>
  </div>
</header>

<main>
  <div class="container">
    <!-- hero -->
    <section class="hero">
      <div class="hero-content">
        <h1>Elevate your everyday</h1>
        <p>Discover premium essentials — from tech to lifestyle. Curated with care, delivered fast.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
        </div>
      </div>
      <div style="flex:1; min-width:160px; display:flex; justify-content:center;">
        <i class="fas fa-shopping-bag" style="font-size:80px; opacity:0.2; color:white;"></i>
      </div>
    </section>

    <!-- categories -->
    <section id="categories" class="section">
      <div class="section-header">
        <h2>Shop by category</h2>
        <span class="muted">Find what you love</span>
      </div>
      <div class="category-grid" id="categoriesGrid"></div>
    </section>

    <!-- products -->
    <section id="products" class="section">
      <div class="section-header">
        <h2>Trending now</h2>
        <span class="muted">Most popular this week</span>
      </div>
      <div class="product-grid" id="productsGrid"></div>
    </section>

    <!-- deal -->
    <section id="deals" class="section">
      <div class="section-header">
        <h2>Flash sale</h2>
        <span class="muted">Limited time</span>
      </div>
      <div class="deal-card">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="deal product">
        <div class="deal-content">
          <h3>MacBook Air M2</h3>
          <p style="color:#5d6f88;">Lightning-fast performance, all‑day battery.</p>
          <div class="deal-timer">
            <div class="time-box"><div id="dealDays">0</div><div>days</div></div>
            <div class="time-box"><div id="dealHours">00</div><div>hrs</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div>min</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div>sec</div></div>
          </div>
          <div class="deal-price">
            <span class="current">$999</span>
            <span class="old">$1,199</span>
            <span class="badge-discount">-17%</span>
          </div>
          <p style="margin:6px 0 12px; color:#5d6f88;"><strong>12</strong> items left</p>
          <button class="btn btn-primary" id="buyDeal" style="align-self:flex-start;"><i class="fas fa-bolt"></i> Grab deal</button>
        </div>
      </div>
    </section>

    <!-- testimonials -->
    <section class="section">
      <div class="section-header">
        <h2>Customer voices</h2>
        <span class="muted">Real reviews</span>
      </div>
      <div class="testimonial-grid" id="testimonials">
        <div class="testimonial-card">
          <div class="rating">★★★★★</div>
          <p>"Absolutely love the quality and fast shipping. Will order again."</p>
          <div class="testimonial-author">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar">
            <div><strong>Ava Martin</strong><div style="font-size:13px;color:#5d6f88;">verified</div></div>
          </div>
        </div>
        <div class="testimonial-card">
          <div class="rating">★★★★☆</div>
          <p>"Great selection and easy checkout. My new favorite store."</p>
          <div class="testimonial-author">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar">
            <div><strong>Michael Lee</strong><div style="font-size:13px;color:#5d6f88;">frequent buyer</div></div>
          </div>
        </div>
        <div class="testimonial-card">
          <div class="rating">★★★★★</div>
          <p>"Incredible customer support and the products are top-tier."</p>
          <div class="testimonial-author">
            <img src="https://images.unsplash.com/photo-1554151228-14d9def656e4?auto=format&fit=crop&w=80&q=80" alt="avatar">
            <div><strong>Sophia Chen</strong><div style="font-size:13px;color:#5d6f88;">verified</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- newsletter -->
    <section class="section">
      <div class="newsletter-box">
        <h3>Stay ahead</h3>
        <p>Get early access to drops and exclusive deals.</p>
        <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="your@email.com" required>
          <button id="subscribeBtn">Subscribe <i class="fas fa-arrow-right"></i></button>
        </form>
        <div id="newsletterMsg" style="margin-top:12px; font-size:14px; display:none;"></div>
      </div>
    </section>
  </div>
</main>

<footer class="footer">
  <div class="container">
    <div class="footer-inner">
      <div class="footer-brand">
        <div style="display:flex;align-items:center;gap:6px;font-weight:700;font-size:22px;"><i class="fas fa-cube" style="color:#2b7be4;"></i> Vela</div>
        <p>Modern commerce, thoughtfully designed.</p>
        <div style="display:flex;gap:12px;margin-top:12px;">
          <a href="#" style="color:#5d6f88;"><i class="fab fa-twitter"></i></a>
          <a href="#" style="color:#5d6f88;"><i class="fab fa-instagram"></i></a>
          <a href="#" style="color:#5d6f88;"><i class="fab fa-github"></i></a>
        </div>
      </div>
      <div class="footer-links">
        <div>Company <span>About<br>Careers<br>Press</span></div>
        <div>Support <span>Help Center<br>Returns<br>Contact</span></div>
        <div>Legal <span>Privacy<br>Terms<br>Cookies</span></div>
      </div>
    </div>
    <div class="footer-bottom">© <span id="year"></span> Vela. All rights reserved.</div>
  </div>
</footer>

<script>
  // ----- data -----
  const CATEGORIES = [
    { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
  ];

  const PRODUCTS = [
    { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'phones' },
    { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'laptops' },
    { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'footwear' },
    { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
    { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
  ];

  let cartCount = 0;
  const cartCountEl = document.getElementById('cartCount');
  const productsGrid = document.getElementById('productsGrid');
  const categoriesGrid = document.getElementById('categoriesGrid');
  const searchInput = document.getElementById('searchInput');

  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(cat => {
      const div = document.createElement('div');
      div.className = 'cat-card';
      div.innerHTML = `<i class="fas ${cat.icon}"></i><h4>${cat.name}</h4>`;
      div.addEventListener('click', ()=>{
        searchInput.value = cat.name;
        filterProducts(cat.name);
        document.getElementById('products').scrollIntoView({ behavior:'smooth', block:'start' });
      });
      categoriesGrid.appendChild(div);
    });
  }

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    list.forEach(p => {
      const card = document.createElement('div');
      card.className = 'product-card';
      const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5-Math.round(p.rating));
      card.innerHTML = `
        <img src="${p.img}" alt="${p.title}" loading="lazy">
        <div class="product-body">
          <h5>${p.title}</h5>
          <div class="product-meta">${p.category}</div>
          <div class="product-price">
            $${p.price.toLocaleString()}
            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
            ${p.badge ? `<span style="background:#e53e3e;color:#fff;font-size:11px;padding:2px 10px;border-radius:40px;">${p.badge}</span>` : ''}
          </div>
          <div class="rating">${stars} <span style="color:#5d6f88;font-weight:400;font-size:13px;">(${p.reviews})</span></div>
        </div>
        <div class="product-footer">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
          <button class="wish-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
        </div>
      `;
      productsGrid.appendChild(card);
    });
    document.querySelectorAll('.add-btn').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const id = Number(btn.dataset.id);
        const product = PRODUCTS.find(x => x.id === id);
        if (!product) return;
        cartCount++;
        cartCountEl.textContent = cartCount;
        btn.innerHTML = '<i class="fas fa-check"></i> Added';
        btn.style.background = '#2b7be4';
        setTimeout(() => { btn.innerHTML = '<i class="fas fa-plus"></i> Add'; btn.style.background = '#0b1a2f'; }, 1000);
      });
    });
  }

  function filterProducts(query) {
    const q = query.trim().toLowerCase();
    if (!q) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    renderProducts(filtered);
  }

  // search
  document.getElementById('searchBtn').addEventListener('click', ()=> filterProducts(searchInput.value));
  searchInput.addEventListener('keydown', e => { if(e.key === 'Enter') filterProducts(e.target.value); });

  // mobile toggle
  document.getElementById('mobileToggle').addEventListener('click', ()=>{
    const menu = document.getElementById('mobileMenu');
    menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
  });

  // hero buttons
  document.getElementById('shopNow').addEventListener('click', ()=> document.getElementById('products').scrollIntoView({ behavior:'smooth' }));
  document.getElementById('exploreDeals').addEventListener('click', ()=> document.getElementById('deals').scrollIntoView({ behavior:'smooth' }));

  // deal buy
  document.getElementById('buyDeal').addEventListener('click', ()=>{
    cartCount += 1;
    cartCountEl.textContent = cartCount;
    alert('Deal added to cart!');
  });

  // newsletter
  document.getElementById('newsletterForm').addEventListener('submit', (e)=>{
    e.preventDefault();
    const email = document.getElementById('newsletterEmail').value.trim();
    const msg = document.getElementById('newsletterMsg');
    if (!email || !email.includes('@')) {
      msg.style.display = 'block';
      msg.textContent = 'Please enter a valid email.';
      msg.style.color = '#fbb';
      return;
    }
    msg.style.display = 'block';
    msg.textContent = 'Subscribed! Check your inbox.';
    msg.style.color = '#b8d9ff';
    document.getElementById('newsletterEmail').value = '';
    setTimeout(()=> msg.style.display = 'none', 3000);
  });

  // deal timer
  (function() {
    const target = new Date(Date.now() + (24*3600 + 36*60)*1000);
    function tick() {
      const diff = target - new Date();
      const days = Math.floor(diff/(24*3600*1000));
      const hours = Math.floor((diff%(24*3600*1000))/(3600*1000));
      const mins = Math.floor((diff%(3600*1000))/(60*1000));
      const secs = Math.floor((diff%(60*1000))/1000);
      document.getElementById('dealDays').textContent = days;
      document.getElementById('dealHours').textContent = String(hours).padStart(2,'0');
      document.getElementById('dealMinutes').textContent = String(mins).padStart(2,'0');
      document.getElementById('dealSeconds').textContent = String(secs).padStart(2,'0');
      if (diff <= 0) clearInterval(interval);
    }
    tick();
    const interval = setInterval(tick, 1000);
  })();

  // init
  renderCategories();
  renderProducts(PRODUCTS);
  document.getElementById('year').textContent = new Date().getFullYear();
</script>
</body>
</html>
