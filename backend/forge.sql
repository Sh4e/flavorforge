create table flavor_forge

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('user','admin') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Recipes table
CREATE TABLE recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    ingredients TEXT NOT NULL,
    instructions TEXT NOT NULL,
    image VARCHAR(255) DEFAULT '../assets/default.jpg'
);

INSERT INTO recipes (name, ingredients, instructions)
VALUES
-- 1
('Adobo (Pork or Chicken)',
 'Pork or chicken, vinegar, soy sauce, garlic, onions, bay leaves, peppercorns',
 '1. Marinate pork or chicken in soy sauce, vinegar, garlic, peppercorns, and bay leaves for 30 minutes. 2. Sauté garlic and onions. 3. Add meat with marinade and simmer until tender. 4. Reduce sauce and serve.'),

-- 2
('Sinigang na Baboy (Pork Sinigang)',
 'Pork (shoulder or ribs), tomatoes, onions, garlic, vinegar, rice',
 '1. Boil pork with onions and tomatoes until tender. 2. Add tamarind or vinegar for sourness. 3. Simmer and season with salt. 4. Serve hot with rice.'),

-- 3
('Chicken Inasal',
 'Chicken, garlic, vinegar, soy sauce, lemongrass (optional), onions, rice',
 '1. Marinate chicken in vinegar, soy sauce, garlic, onions, and lemongrass. 2. Grill over charcoal while basting with marinade. 3. Serve with rice and dipping sauce.'),

-- 4
('Lechon Kawali (Crispy Fried Pork Belly)',
 'Pork belly, garlic, onions, vinegar, salt, pepper, rice',
 '1. Boil pork belly with garlic, onions, vinegar, salt, and pepper until tender. 2. Drain and cool. 3. Deep-fry until crispy. 4. Slice and serve with sauce.'),

-- 5
('Pancit Canton (Stir-Fried Noodles)',
 'Pork, chicken, garlic, onions, soy sauce, tomatoes, rice noodles',
 '1. Sauté garlic, onions, and tomatoes. 2. Add pork and chicken, cook until browned. 3. Add noodles and soy sauce. 4. Stir-fry until cooked. 5. Serve hot.'),

-- 6
('Bistek Tagalog (Filipino Beef Steak)',
 'Beef (or pork), soy sauce, vinegar, garlic, onions, rice',
 '1. Marinate beef in soy sauce, vinegar, and garlic. 2. Fry meat until brown. 3. Sauté onions and add back beef. 4. Simmer until tender. Serve with rice.'),

-- 7
('Kare-Kare (Peanut Stew)',
 'Pork, garlic, onions, tomatoes, vinegar, rice, peanut butter (optional)',
 '1. Boil pork until tender. 2. Sauté garlic, onions, and tomatoes. 3. Add pork and peanut butter. 4. Simmer until thick. 5. Serve with bagoong and rice.'),

-- 8
('Pinakbet',
 'Pork, garlic, onions, tomatoes, vinegar, rice, vegetables (eggplant, okra, bitter melon)',
 '1. Sauté garlic, onions, and tomatoes. 2. Add pork and cook until brown. 3. Add vegetables and vinegar. 4. Simmer until vegetables are tender. Serve hot.'),

-- 9
('Sizzling Sisig',
 'Pork, onions, vinegar, garlic, rice',
 '1. Boil or grill pork until cooked, then chop finely. 2. Sauté garlic and onions. 3. Add pork and vinegar. 4. Serve on sizzling plate with rice.'),

-- 10
('Tocino (Sweet Cured Pork)',
 'Pork belly, garlic, vinegar, soy sauce, sugar',
 '1. Marinate pork in soy sauce, vinegar, garlic, and sugar overnight. 2. Pan-fry until caramelized. 3. Serve with garlic rice and egg.'),

-- 11
('Giniling na Baboy (Ground Pork Stir-Fry)',
 'Ground pork, garlic, onions, tomatoes, soy sauce, vinegar, rice',
 '1. Sauté garlic, onions, and tomatoes. 2. Add ground pork and cook. 3. Season with soy sauce and vinegar. 4. Simmer until cooked. Serve with rice.'),

-- 12
('Laing',
 'Pork, onions, garlic, tomatoes, rice, dried taro leaves',
 '1. Sauté garlic, onions, and tomatoes. 2. Add pork and cook. 3. Add taro leaves and coconut milk. 4. Simmer until tender. Serve with rice.'),

-- 13
('Pinoy Fried Rice (Sinangag)',
 'Garlic, onions, rice, soy sauce, pork, chicken',
 '1. Sauté garlic and onions. 2. Add meat pieces. 3. Add leftover rice and soy sauce. 4. Stir-fry until heated through. Serve hot.'),

-- 14
('Puto (Filipino Rice Cakes)',
 'Rice flour, garlic, vinegar, sugar',
 '1. Mix rice flour, water, vinegar, and sugar into batter. 2. Pour into molds. 3. Steam until firm. 4. Serve as snack or dessert.'),

-- 15
('Betute (Stuffed Frog)',
 'Frogs, garlic, onions, vinegar, soy sauce, rice',
 '1. Clean frogs and stuff with garlic, onions, and spices. 2. Fry or stew in vinegar and soy sauce. 3. Serve with rice.'),

-- 16
('Ginisang Munggo (Mung Bean Stew)',
 'Pork, garlic, onions, tomatoes, mung beans, rice',
 '1. Boil mung beans until soft. 2. Sauté garlic, onions, and tomatoes. 3. Add pork and cook. 4. Combine with mung beans and simmer. 5. Serve with rice.'),

-- 17
('Torta (Filipino Omelette)',
 'Pork, garlic, onions, tomatoes, eggs, rice',
 '1. Sauté garlic, onions, and tomatoes. 2. Add pork and cook. 3. Mix with beaten eggs. 4. Fry until golden brown. 5. Serve with rice.'),

-- 18
('Pochero (Pork or Chicken Stew)',
 'Pork or chicken, garlic, onions, tomatoes, bananas, rice',
 '1. Sauté garlic, onions, and tomatoes. 2. Add pork or chicken and cook. 3. Add water and bananas. 4. Simmer until tender. Serve hot with rice.'),

-- 19
('Pinoy Spaghetti',
 'Pork, garlic, onions, tomatoes, spaghetti noodles',
 '1. Sauté garlic, onions, and tomatoes. 2. Add ground pork. 3. Add tomato sauce and hotdogs if desired. 4. Simmer and serve over spaghetti noodles.'),

-- 20
('Dinuguan (Pork Blood Stew)',
 'Pork, garlic, onions, vinegar, rice, pork blood',
 '1. Sauté garlic and onions. 2. Add pork and cook until brown. 3. Pour in vinegar and simmer. 4. Add pork blood and stir until thick. 5. Serve with rice or puto.'),

-- 21
('Chopsuey (Stir-fried Mixed Vegetables)',
 'Pork or chicken, garlic, onions, tomatoes, soy sauce, rice, mixed vegetables',
 '1. Sauté garlic, onions, and tomatoes. 2. Add meat and cook until browned. 3. Add vegetables and soy sauce. 4. Stir-fry until cooked. Serve with rice.'),

-- 22
('Lomi (Filipino Noodle Soup)',
 'Pork, garlic, onions, soy sauce, eggs, noodles',
 '1. Sauté garlic and onions. 2. Add pork and soy sauce. 3. Pour water and add noodles. 4. Simmer until cooked. 5. Add beaten eggs and stir. Serve hot.'),

-- 23
('Gising-Gising (Spicy Ground Pork with Vegetables)',
 'Ground pork, garlic, onions, tomatoes, green beans, rice',
 '1. Sauté garlic, onions, and tomatoes. 2. Add ground pork and cook. 3. Add green beans and chili. 4. Simmer and serve with rice.'),

-- 24
('Pansit Malabon',
 'Pork, garlic, onions, shrimp, rice noodles',
 '1. Boil noodles and set aside. 2. Sauté garlic, onions, pork, and shrimp. 3. Add sauce and toss noodles. 4. Garnish with eggs and serve.'),

-- 25
('Bulalo (Beef Shank Soup)',
 'Beef shank, garlic, onions, tomatoes, vinegar, rice',
 '1. Boil beef shank until tender. 2. Add garlic, onions, and tomatoes. 3. Season with vinegar and salt. 4. Serve hot with rice.'),

-- 26
('Tapsilog (Tapa, Sinangag, Itlog)',
 'Beef (or pork), garlic, vinegar, soy sauce, rice, egg',
 '1. Marinate beef in soy sauce, vinegar, and garlic. 2. Fry beef until cooked. 3. Serve with garlic fried rice and fried egg.'),

-- 27
('Papaitan',
 'Beef or goat meat, garlic, onions, tomatoes, vinegar, bile, rice',
 '1. Boil meat until tender. 2. Sauté garlic, onions, and tomatoes. 3. Add meat, vinegar, and bile. 4. Simmer and serve with rice.'),

-- 28
('Tinola (Chicken Ginger Soup)',
 'Chicken, garlic, onions, ginger, vinegar, rice',
 '1. Sauté garlic, onions, and ginger. 2. Add chicken and cook. 3. Pour in water and vinegar. 4. Simmer until chicken is tender. Serve hot with rice.'),

-- 29
('Adobong Pusit (Squid Adobo)',
 'Squid, garlic, onions, vinegar, soy sauce, rice',
 '1. Clean squid and set aside. 2. Sauté garlic and onions. 3. Add squid, vinegar, and soy sauce. 4. Simmer briefly until cooked. Serve with rice.'),

-- 30
('Bangus Sisig',
 'Bangus, garlic, onions, vinegar, rice',
 '1. Fry bangus until cooked, then flake meat. 2. Sauté garlic and onions. 3. Add flaked bangus and vinegar. 4. Serve on sizzling plate with rice.'),

-- 31
('Tinapang Bangus (Smoked Fish)',
 'Bangus, garlic, vinegar, soy sauce',
 '1. Clean bangus and marinate in garlic, vinegar, and soy sauce. 2. Smoke or grill until cooked. 3. Serve with rice.'),

-- 32
('Lumpiang Shanghai (Spring Rolls)',
 'Ground pork, garlic, onions, soy sauce, vinegar, rice paper',
 '1. Mix ground pork, garlic, onions, and soy sauce. 2. Wrap in rice paper. 3. Deep-fry until golden brown. 4. Serve with sauce.'),

-- 33
('Sautéed Kangkong (Water Spinach)',
 'Kangkong, garlic, onions, vinegar, soy sauce',
 '1. Sauté garlic and onions. 2. Add kangkong stems first, then leaves. 3. Season with soy sauce and vinegar. 4. Serve hot.'),

-- 34
('Goto (Porridge with Beef Tripe)',
 'Beef tripe, garlic, onions, vinegar, rice',
 '1. Boil beef tripe until tender. 2. Sauté garlic and onions. 3. Add rice and water. 4. Simmer until porridge consistency. Serve hot.'),

-- 35
('Puto Pao (Steamed Buns)',
 'Flour, garlic, sugar, vinegar, pork',
 '1. Make dough from flour, water, and sugar. 2. Cook pork filling with garlic and vinegar. 3. Fill dough with meat. 4. Steam until fluffy.'),

-- 36
('Paksiw na Lechon',
 'Leftover roasted pork, vinegar, garlic, onions, bay leaves, peppercorns',
 '1. In a pot, combine leftover pork, vinegar, garlic, onions, bay leaves, and peppercorns. 2. Simmer until sauce thickens. 3. Serve with rice.'),

-- 37
('Arroz Caldo (Filipino Rice Porridge)',
 'Chicken, garlic, onions, rice, ginger, vinegar, salt',
 '1. Sauté garlic, onions, and ginger. 2. Add chicken and rice. 3. Pour water and simmer until porridge consistency. 4. Season and serve hot.'),

-- 38
('Chicken Afritada',
 'Chicken, garlic, onions, tomatoes, vinegar, potatoes, rice',
 '1. Sauté garlic, onions, and tomatoes. 2. Add chicken and cook until browned. 3. Add vinegar and water. 4. Add potatoes and simmer until tender. Serve with rice.'),

-- 39
('Pork BBQ Skewers',
 'Pork, garlic, onions, vinegar, soy sauce, sugar',
 '1. Marinate pork in soy sauce, vinegar, garlic, onions, and sugar. 2. Skewer pork pieces. 3. Grill over charcoal until cooked. 4. Serve hot.'),

-- 40
('Chicken Curry',
 'Chicken, garlic, onions, tomatoes, vinegar, curry powder, rice',
 '1. Sauté garlic, onions, and tomatoes. 2. Add chicken and cook until browned. 3. Add vinegar, water, and curry powder. 4. Simmer until tender and sauce thickens. Serve with rice.'),

-- 41
('Chicken or Pork Empanada',
 'Ground pork or shredded chicken, garlic, onions, tomatoes, vinegar, flour',
 '1. Sauté garlic, onions, and tomatoes. 2. Add ground pork or chicken and cook. 3. Prepare dough, fill with meat, and fold. 4. Deep-fry or bake until golden brown.'),

-- 42
('Chicken or Pork Menudo',
 'Chicken or pork, garlic, onions, tomatoes, vinegar, potatoes, carrots, rice',
 '1. Sauté garlic, onions, and tomatoes. 2. Add chicken or pork and cook until browned. 3. Add vinegar and water, then simmer. 4. Add potatoes and carrots until tender. Serve with rice.'),

-- 43
('Tortang Talong (Eggplant Omelette)',
 'Eggplant, garlic, onions, eggs, rice',
 '1. Grill or roast eggplant until skin is charred. 2. Peel and flatten. 3. Dip in beaten egg with garlic and onions. 4. Fry until golden. Serve with rice.'),

-- 44
('Ginisang Ampalaya (Sautéed Bitter Melon)',
 'Bitter melon, garlic, onions, tomatoes, vinegar, rice',
 '1. Slice ampalaya and soak in salted water. 2. Sauté garlic, onions, and tomatoes. 3. Add ampalaya and vinegar. 4. Stir-fry until tender. Serve with rice.'),

-- 45
('Chicken or Pork Sisig',
 'Minced chicken or pork, garlic, onions, vinegar, soy sauce, rice',
 '1. Boil or grill meat, then chop finely. 2. Sauté garlic and onions. 3. Add meat and season with vinegar and soy sauce. 4. Serve sizzling with rice.'),

-- 46
('Chicken or Pork Kaldereta',
 'Chicken or pork, garlic, onions, tomatoes, vinegar, liver spread, rice',
 '1. Sauté garlic, onions, and tomatoes. 2. Add meat and cook until browned. 3. Add vinegar, water, and simmer. 4. Stir in liver spread and cook until thick. Serve with rice.'),

-- 47
('Chicken or Pork Pastel',
 'Chicken or pork, garlic, onions, tomatoes, vinegar, cream, rice',
 '1. Sauté garlic, onions, and tomatoes. 2. Add meat and cook. 3. Add vinegar, water, and simmer. 4. Stir in cream for rich sauce. Serve with rice.'),

-- 48
('Chicken or Pork Embutido',
 'Ground pork or chicken, garlic, onions, vinegar, eggs, bread crumbs',
 '1. Mix ground meat with garlic, onions, vinegar, eggs, and bread crumbs. 2. Form into logs and wrap in foil. 3. Steam until firm. 4. Slice and serve or fry.'),

-- 49
('Chicken or Pork Barbecue Rice Bowl',
 'Chicken or pork, garlic, onions, vinegar, soy sauce, rice',
 '1. Marinate meat in soy sauce, vinegar, garlic, and onions. 2. Grill or pan-fry until cooked. 3. Serve over steamed rice.'),

-- 50
('Chicken or Pork Longganisa',
 'Ground pork or chicken, garlic, vinegar, salt, sugar, pepper',
 '1. Mix ground meat with garlic, vinegar, salt, sugar, and pepper. 2. Form into sausages and wrap. 3. Chill overnight. 4. Fry until golden brown. Serve with rice.'),

-- 51
('Chicken or Pork Adobong Puti',
 'Chicken or pork, garlic, vinegar, salt, pepper, rice',
 '1. Combine meat, garlic, vinegar, salt, and pepper in a pot. 2. Simmer until meat is tender and sauce reduced. 3. Serve with rice.'),

-- 52
('Paksiw na Manok',
 'Chicken, vinegar, garlic, onions, ginger, rice',
 '1. In a pot, combine chicken, vinegar, garlic, onions, and ginger. 2. Simmer until chicken is cooked and sauce thickens. 3. Serve hot with rice.'),

-- 53
('Chicken or Pork Tinola',
 'Chicken or pork, garlic, onions, ginger, vinegar, rice',
 '1. Sauté garlic, onions, and ginger. 2. Add meat and cook until browned. 3. Add vinegar and water. 4. Simmer until tender. 5. Serve hot with rice.');


-- Ratings table
CREATE TABLE ratings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT NOT NULL,
    rating INT NOT NULL CHECK (rating BETWEEN 1 AND 5),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (recipe_id) REFERENCES recipes(id) ON DELETE CASCADE
);