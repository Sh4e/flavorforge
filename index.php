<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Flovor Forge | home</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/index.css">
  <link rel="stylesheet" href="css/flavorforge.css">
  <link rel="stylesheet" href="css/hero.css">
  <link rel="stylesheet" href="css/header.css">
  <link rel="stylesheet" href="css/footer.css">

</head>
<body>
<?php include 'partials/header.php';?>
    <main>
        <!-- Hero Section -->
        <section class="hero" id="home">
            <div class="hero-content">
                <div class="hero-text">
                    <h1>Got Ingredients?<br>We've Got Recipes!</h1>
                    <p>With Flavor Forge, you'll never wonder what to cook again.<br>
                    Enter what you already have in your fridge.<br>
                    In seconds, we'll transform it into a recipe you can enjoy.</p><br>
                    <a href="login.php" class="cta-button" id="findRecipesBtn">Find Recipes Now</a>
                </div>
            </div>
        </section>

        <!-- How It Works Section -->
        <section class="how-it-works">
            <div class="container">
                <h2>How It Works</h2>
                <div class="steps-grid">
                    <div class="step-card">
                        <div class="step-icon">
                            <svg width="40" height="40" viewBox="0 0 40 40" fill="none">
                                <path d="M20 5L25 15H35L27.5 22.5L30 32.5L20 27.5L10 32.5L12.5 22.5L5 15H15L20 5Z" stroke="#ff6b35" stroke-width="2" fill="#ff6b35"/>
                            </svg>
                        </div>
                        <h3>1. Enter Ingredients</h3>
                        <p>Type what's in your fridge - rice, chicken, or even leftovers.</p>
                    </div>
                    
                    <div class="step-card">
                        <div class="step-icon">
                            <svg width="40" height="40" viewBox="0 0 40 40" fill="none">
                                <path d="M20 5C22.5 7.5 25 10 25 15C25 20 22.5 22.5 20 25C17.5 22.5 15 20 15 15C15 10 17.5 7.5 20 5Z" stroke="#ff6b35" stroke-width="2" fill="#ff6b35"/>
                                <rect x="15" y="25" width="10" height="10" stroke="#ff6b35" stroke-width="2"/>
                            </svg>
                        </div>
                        <h3>2. Pick a Recipe</h3>
                        <p>Browse recipe suggestions that match your taste and cooking time.</p>
                    </div>
                    
                    <div class="step-card">
                        <div class="step-icon">
                            <svg width="40" height="40" viewBox="0 0 40 40" fill="none">
                                <path d="M8 12H32V32C32 33.1046 31.1046 34 30 34H10C8.89543 34 8 33.1046 8 32V12Z" stroke="#ff6b35" stroke-width="2"/>
                                <path d="M12 8H28V12H12V8Z" stroke="#ff6b35" stroke-width="2"/>
                                <path d="M16 16V20M20 16V20M24 16V20" stroke="#ff6b35" stroke-width="2"/>
                            </svg>
                        </div>
                        <h3>3. Start Cooking</h3>
                        <p>Follow easy steps and enjoy a home-cooked meal in minutes.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Why Flavor Forge Section -->
        <section class="why-flavor-forge">
            <div class="container">
                <h2>Why Flavor Forge</h2>
                <div class="features-grid">
                    <div class="feature-card">
                        <div class="feature-icon">
                            <svg width="40" height="40" viewBox="0 0 40 40" fill="none">
                                <circle cx="20" cy="20" r="15" stroke="#4a7c59" stroke-width="2"/>
                                <path d="M12 20L18 26L28 16" stroke="#4a7c59" stroke-width="2" fill="none"/>
                            </svg>
                        </div>
                        <h3>Localized Recipes</h3>
                        <p>We focus on Filipino cuisine so you can enjoy dishes that feel like home.</p>
                    </div>
                    
                    <div class="feature-card">
                        <div class="feature-icon">
                            <svg width="40" height="40" viewBox="0 0 40 40" fill="none">
                                <rect x="8" y="8" width="24" height="24" rx="4" stroke="#4a7c59" stroke-width="2"/>
                                <path d="M16 12V16M24 12V16M12 20H28" stroke="#4a7c59" stroke-width="2"/>
                            </svg>
                        </div>
                        <h3>Smart Suggestions</h3>
                        <p>Get AI-powered recipes based on the exact ingredients you already have.</p>
                    </div>
                    
                    <div class="feature-card">
                        <div class="feature-icon">
                            <svg width="40" height="40" viewBox="0 0 40 40" fill="none">
                                <circle cx="20" cy="20" r="15" stroke="#4a7c59" stroke-width="2"/>
                                <path d="M20 8V20L28 24" stroke="#4a7c59" stroke-width="2"/>
                            </svg>
                        </div>
                        <h3>Save Time & Money</h3>
                        <p>No more wasted groceries – turn what's in your fridge into meals fast.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Popular Recipes Section -->
        <section class="popular-recipes">
            <div class="container">
              <h2>Popular Recipes</h2>
              <div class="recipes-slider-container">

                <!-- Prev Button -->
                <button class="slider-btn prev-btn" id="prevBtn">
                  <svg width="20" height="20" viewBox="0 0 20 20" fill="none">
                    <path d="M12.5 15L7.5 10L12.5 5" stroke="currentColor" stroke-width="2"/>
                  </svg>
                </button>

                <!-- Slider -->
                <div class="recipes-slider" id="recipesSlider">
                  <div class="recipe-card">
                    <div class="recipe-image">
                      <img src="assets/adobo.jpg" alt="Adobo Chicken">
                    </div>
                    <h4>Adobo Chicken</h4>
                    <p>30 mins • Filipino</p>
                  </div>

                  <div class="recipe-card">
                    <div class="recipe-image">
                      <img src="assets/sinigang.jpg" alt="Beef Sinigang">
                    </div>
                    <h4>Beef Sinigang</h4>
                    <p>45 mins • Filipino</p>
                  </div>

                  <div class="recipe-card">
                    <div class="recipe-image">
                      <img src="assets/pancit.jpg" alt="Pancit Canton">
                    </div>
                    <h4>Pancit Canton</h4>
                    <p>25 mins • Filipino</p>
                  </div>

                  <div class="recipe-card">
                    <div class="recipe-image">
                      <img src="assets/lechon.jpg" alt="Lechon Kawali">
                    </div>
                    <h4>Lechon Kawali</h4>
                    <p>40 mins • Filipino</p>
                  </div>

                  <div class="recipe-card">
                    <div class="recipe-image">
                      <img src="assets/karekare.jpg" alt="Kare-Kare">
                    </div>
                    <h4>Kare-Kare</h4>
                    <p>60 mins • Filipino</p>
                  </div>

                  <div class="recipe-card">
                    <div class="recipe-image">
                      <img src="assets/lumpia.jpg" alt="Lumpia">
                    </div>
                    <h4>Lumpia</h4>
                    <p>35 mins • Filipino</p>
                  </div>
                </div>

                <!-- Next Button -->
                <button class="slider-btn next-btn" id="nextBtn">
                  <svg width="20" height="20" viewBox="0 0 20 20" fill="none">
                    <path d="M7.5 5L12.5 10L7.5 15" stroke="currentColor" stroke-width="2"/>
                  </svg>
                </button>

              </div>
            </div>
          </section>

  </main>
  <script src="js/header.js"> </script>
  <script src="js/nextbutton.js"> </script>

<?php include 'partials/footer.php';?>
  <script src="js/footer.js"></script>
  <script src="js/theme.js"></script>

</body>
</html>
