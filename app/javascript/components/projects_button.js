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

const goToContact = () => {
  const contactLink = document.querySelector('#projects-link')
  if (contactLink) {
      contactLink.addEventListener('click', (e) => {
        e.preventDefault();
      const contact = document.querySelector('#contact');
      contact.scrollIntoView({ behavior: 'smooth' });
    })
}
}

const goToForm = () => {
  const emailIcon = document.querySelector('.email-icon')
  if (emailIcon) {
      emailIcon.addEventListener('click', (e) => {
        e.preventDefault();
      const contactForm = document.querySelector('.contact-form');
      contactForm.scrollIntoView({ behavior: 'smooth' });
    })
}
}

export { loadMoreProjects, goToContact, goToForm  };


