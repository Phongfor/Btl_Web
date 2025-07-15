function runSearch() {
    const keyword = document.getElementById("searchInputPage").value.trim();    

    if (keyword.length === 0) {
        document.getElementById("productsGrid").innerHTML = "";
        return;
    }

    fetch(`/Pages/SearchProduct.aspx?keyword=${encodeURIComponent(keyword)}`)
        .then(response => response.text())
        .then(html => {
            document.getElementById("productsGrid").innerHTML = html;
        })
        .catch(error => console.error(error));
}


document.getElementById("searchInputPage").addEventListener("keyup", runSearch);

document.getElementById("searchButtonPage").addEventListener("click", runSearch);
