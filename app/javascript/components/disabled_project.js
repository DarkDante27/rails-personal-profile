const disableProject = () => {
  const project = document.getElementById('5')
  if (project) {
    project.setAttribute('href', 'javascript:void(0)')
  }
}

export { disableProject };
