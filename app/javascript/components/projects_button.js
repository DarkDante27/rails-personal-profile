const loadMoreProjects = () => {
  const moreButton = document.querySelectorAll('.more-button, #more-button')
  console.log(moreButton)
  if (moreButton) {
    moreButton.forEach((button) => {
      button.addEventListener('click', (e) => {
        console.log("forEach worked");
        e.preventDefault();
      const projects = document.querySelector('#projects');
      projects.scrollIntoView({ behavior: 'smooth' });
    })
  })
}
}

export { loadMoreProjects  };


