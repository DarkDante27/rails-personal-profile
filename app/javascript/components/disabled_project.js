const disableProject = () => {
  const project = document.getElementById('4')
  if (project) {
    project.setAttribute('href', 'javascript:void(0)')
  }
}

export { disableProject };
