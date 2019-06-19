const loadMoreProjects = () => {
  const moreButton = document.querySelector('#more-button-img')
  if (moreButton) {
    moreButton.addEventListener('click', function (e) {
      e.preventDefault();
      const projects = document.querySelector('#projects');
      projects.scrollIntoView({ behavior: 'smooth' });
    })
  }
}

export { loadMoreProjects  };
