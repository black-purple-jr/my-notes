let cards = document.querySelectorAll(".cards-container");
cards.forEach(card => {
  card.addEventListener("contextmenu", e => {
    e.preventDefault();
    // context menu
  })
});