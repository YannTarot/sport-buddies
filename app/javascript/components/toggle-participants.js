export const initToggle = () => {
  const toggle = document.querySelector('#toggle-participants-count');
  const content = document.querySelector('.participants');


  toggle.addEventListener("change", () => {
   content.classList.toggle('hidden')
  });
};
