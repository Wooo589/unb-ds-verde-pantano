const wrapper = document.querySelector(".wrapper"),
selectBtn = wrapper.querySelector(".select-btn"),
searchInp = wrapper.querySelector("input"),
options = wrapper.querySelector(".options");
 
//array of some UF.
let UF = ["AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO"];

function addUF(selectedUF) {
    options.innerHTML = "";
    UF.forEach(uf => {
        // if selected UF and UF value is same, then add selected class.
        let isSelected = uf == selectedUF ? "selected" : "";
        // adding each UF inside <li> and inserting all li inside options tag
        let li = `<li onclick="updateName(this)" class="${isSelected}">${uf}</li>`;
        options.insertAdjacentHTML("beforeend", li);
    });
}
addUF();

function updateName(selectedLi) {
    searchInp.value = "";
    addUF(selectedLi.innerText);
    wrapper.classList.remove("active");
    selectBtn.firstElementChild.innerText = selectedLi.innerText;
}

searchInp.addEventListener("keyup", () => {
    let arr = []; // creating empty array.
    let searchedVal = searchInp.value.toLowerCase();
    // returning all UF from array which are start with user searched value.
    // and mapping returned UF with <li> and joining them.
    arr = UF.filter(data => {
        return data.toLowerCase().startsWith(searchedVal);
    }).map(data => `<li onclick="updateName(this)">${data}</li>`).join("");
    options.innerHTML = arr ? arr : `<p>UF não encontrada.</p>`;
});

selectBtn.addEventListener("click", () => {
    wrapper.classList.toggle("active");
});