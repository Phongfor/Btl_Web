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


       document.addEventListener("DOMContentLoaded", function () {
           const productCards = document.querySelectorAll(".product-card");

           const brandCheckboxes = document.querySelectorAll(".brand-filter");
           const categoryCheckboxes = document.querySelectorAll(".Categories");
           const priceCheckboxes = document.querySelectorAll(".price-filter");

           function getCheckedValues(checkboxes) {
               return Array.from(checkboxes)
                   .filter(cb => cb.checked)
                   .map(cb => cb.value.trim());
           }

           function filterProducts() {
               const selectedBrands = getCheckedValues(brandCheckboxes);
               const selectedCategories = getCheckedValues(categoryCheckboxes);
               const selectedPrices = getCheckedValues(priceCheckboxes);

               console.log("Selected filters:", {
                   selectedBrands,
                   selectedCategories,
                   selectedPrices
               });

               productCards.forEach(card => {
                   const brand = card.getAttribute("data-brand")?.trim();
                   const category = card.getAttribute("data-category")?.trim();
                   const price = parseFloat(card.getAttribute("data-price"));

                   const matchBrand = selectedBrands.length === 0 || selectedBrands.includes(brand);
                   const matchCategory = selectedCategories.length === 0 || selectedCategories.includes(category);

                   let matchPrice = false;
                   if (selectedPrices.length === 0) {
                       matchPrice = true;
                   } else {
                       for (let range of selectedPrices) {
                           if (range === "500" && price >= 500) {
                               matchPrice = true;
                               break;
                           } else if (range.includes("-")) {
                               const [min, max] = range.split("-").map(Number);
                               if (price >= min && price <= max) {
                                   matchPrice = true;
                                   break;
                               }
                           }
                       }
                   }

                   // Reset class trước khi xử lý (fix lỗi sản phẩm bị "ẩn mãi")
                   card.classList.remove("hide");

                   if (!(matchBrand && matchCategory && matchPrice)) {
                       card.classList.add("hide");
                   }
               });
           }


           // Gắn sự kiện lọc khi checkbox thay đổi
           [...brandCheckboxes, ...categoryCheckboxes, ...priceCheckboxes].forEach(cb => {
               cb.addEventListener("change", filterProducts);
           });

           // Gọi filter lần đầu
           filterProducts();
       });


document.addEventListener("DOMContentLoaded", function () {
    const searchInput = document.getElementById("searchInput");
    const productCards = document.querySelectorAll(".product-card");

    searchInput.addEventListener("input", function () {
        const searchTerm = this.value.trim().toLowerCase();

        productCards.forEach(card => {
            const nameElement = card.querySelector("h4");
            const name = nameElement ? nameElement.textContent.trim().toLowerCase() : "";

            if (name.includes(searchTerm)) {
                card.classList.remove("hide");
            } else {
                card.classList.add("hide");
            }
        });
    });
});


