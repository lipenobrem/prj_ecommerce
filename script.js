document.addEventListener("DOMContentLoaded", function() {
    const buttons = document.querySelectorAll('.add-to-cart');
    buttons.forEach(button => {
        button.addEventListener('click', function() {
            const productId = this.getAttribute('data-id');
            alert(`Produto ${productId} adicionado ao carrinho!`);
        });
    });z
});
