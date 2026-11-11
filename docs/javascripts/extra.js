// const variable syntax highlighting for lua
document.querySelectorAll('.highlight .nv').forEach(token => {
  if (token.textContent === 'const') {
    token.classList.replace('nv', 'kd');
  }
});
