const ActiveBtn = () => {
  const btnActive = document.querySelector("nav-link");
    btnActive.addEventListener("click", (change) => {
    change.classList.add('active');
    });
}


document.addEventListener("click", btnActive);
