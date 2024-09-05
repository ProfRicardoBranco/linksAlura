let currentPage = 0;
const pages = document.querySelectorAll('.page');

document.body.addEventListener('click', () => {
  if (currentPage < pages.length) {
    pages[currentPage].style.transform = 'rotateY(-180deg)';
    currentPage++;
  }
});
