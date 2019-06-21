const loadMoreProjects = () => {
  const moreButton = document.querySelectorAll('.more-button, #more-button')
  if (moreButton) {
    moreButton.forEach((button) => {
      button.addEventListener('click', (e) => {
        e.preventDefault();
      const projects = document.querySelector('#projects');
      projects.scrollIntoView({ behavior: 'smooth' });
    })
  })
}
}

export { loadMoreProjects  };


