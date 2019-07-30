const loadMoreProjects = () => {
  const moreButton = document.querySelectorAll('.more-button, #more-button')
  if (moreButton) {
    moreButton.forEach((button) => {
      button.addEventListener('click', (e) => {
        e.preventDefault();
      const projects = document.querySelector('#projects');
      if (projects) {
      projects.scrollIntoView({ behavior: 'smooth' });
      } else {
        window.location.href = '/#projects'
      }
    })
  })
}
}

const goToContact = () => {
  const contactLink = document.querySelector('#projects-link')
  if (contactLink) {
      contactLink.addEventListener('click', (e) => {
        e.preventDefault();
      const contact = document.querySelector('#contact');
      if (contact) {
      contact.scrollIntoView({ behavior: 'smooth' });
      } else {
        window.location.href = '/#contact'
      }
    })
  }
}

const goToAboutMe = () => {
  const aboutMeLink = document.querySelector('#about-me')
  if (aboutMeLink) {
      aboutMeLink.addEventListener('click', (e) => {
        e.preventDefault();
      const about = document.querySelector('#about');
      if (about) {
      about.scrollIntoView({ behavior: 'smooth' });
      } else {
        window.location.href = '/#about'
      }
    })
  }
}


export { loadMoreProjects, goToContact, goToAboutMe };


