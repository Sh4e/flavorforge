function toggleMobileMenu() {
    const mobileNav = document.getElementById('mobileNav');
    mobileNav.classList.toggle('active');
}

// Close mobile menu when clicking outside
document.addEventListener('click', function(event) {
    const mobileNav = document.getElementById('mobileNav');
    const mobileMenuBtn = document.querySelector('.mobile-menu-btn');
    
    if (!mobileNav.contains(event.target) && !mobileMenuBtn.contains(event.target)) {
        mobileNav.classList.remove('active');
    }
});
function openLogoutModal(e) {
    e.preventDefault(); // para hindi agad mag logout
    document.getElementById("logoutModal").style.display = "flex";
}

function closeLogoutModal() {
    document.getElementById("logoutModal").style.display = "none";
}

// Para kapag nag-click sa labas ng modal, magsasara
window.onclick = function(event) {
    const modal = document.getElementById("logoutModal");
    if (event.target === modal) {
        modal.style.display = "none";
    }
}
