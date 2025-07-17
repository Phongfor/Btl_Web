const cards = document.querySelectorAll('.feature - card');

cards.forEach(card => {
    card.addEventListener('click', function () {
        const id = card.dataset.id;
        window.location.href = 'ProductDetails.aspx?id=' + id;
    });
