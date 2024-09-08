function toggleMenu() {
    var sideNav = document.getElementById("side-nav");
    
    if (sideNav.style.width === "250px") {
        sideNav.style.width = "0";  // Tutup navbar
    } else {
        sideNav.style.width = "250px";  // Buka navbar
    }
}

function showDetails() {
    var detailsSection = document.getElementById("book-details");
    if (detailsSection.style.display === "none") {
        detailsSection.style.display = "block";
    } else {
        detailsSection.style.display = "none";
    }
}
