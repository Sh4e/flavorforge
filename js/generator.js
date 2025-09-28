function sendMessage() {
      const input = document.getElementById("user-input");
      const message = input.value.trim();
      if (!message) return;
      
      // Show user message
      const chatBox = document.getElementById("chat-box");
      chatBox.innerHTML += `<div class="user-msg">${message}</div>`;
      chatBox.scrollTop = chatBox.scrollHeight;
      
      // Fetch recipes from API endpoint
      fetch("api.php?query=" + encodeURIComponent(message))
        .then(res => res.text())
        .then(data => {
          chatBox.innerHTML += `<div class="bot-msg">${data}</div>`;
          chatBox.scrollTop = chatBox.scrollHeight;
        });
      
      input.value = "";
    }
    
    function selectRecipe(recipeName) {
      const chatBox = document.getElementById("chat-box");
      chatBox.innerHTML += `<div class="user-msg">${recipeName}</div>`;
      
      fetch("api.php?recipe_name=" + encodeURIComponent(recipeName))
        .then(res => res.text())
        .then(data => {
          chatBox.innerHTML += `<div class="bot-msg">${data}</div>`;
          chatBox.scrollTop = chatBox.scrollHeight;
        });
    }
    
    function rateRecipe(recipeId, stars) {
      fetch("api.php", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: "recipe_id=" + recipeId + "&rating=" + stars
      }).then(res => res.text())
        .then(data => {
          const chatBox = document.getElementById("chat-box");
          chatBox.innerHTML += `<div class="bot-msg">Thanks for rating! ${data}</div>`;
          chatBox.scrollTop = chatBox.scrollHeight;
        });
    }