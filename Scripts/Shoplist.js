const cards = document.querySelectorAll('.product-card');

cards.forEach(card => {
    card.addEventListener('click', function () {
        const id = card.dataset.id;
        window.location.href = 'ProductDetails.aspx?id=' + id;
    });

   
    const buttons = card.querySelectorAll('button');
    buttons.forEach(button => {
        button.addEventListener('click', function (event) {
            event.stopPropagation(); 
        });
    });
});