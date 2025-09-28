function handleNewsletter(event) {
            event.preventDefault();
            const email = event.target.querySelector('input[type="email"]').value;
            alert(`Thank you for subscribing with email: ${email}`);
            event.target.reset();
        }