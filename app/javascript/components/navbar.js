const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const banner = document.querySelector('.home-banner');
  const logo = document.querySelector('#Airbnbike');
  if (navbar && banner) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight*0.1 && window.scrollY <= window.innerHeight*0.45) {
        logo.classList.add('invisible-logo');
      } else {
        logo.classList.remove('invisible-logo');
      }
      if (window.scrollY >= window.innerHeight*0.7) {
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

const chooseNavBar = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const banner = document.querySelector('.home-banner');
  if (banner === null) {
    navbar.classList.add('navbar-lewagon-white');
    navbar.classList.remove('fixed-top');
  }
}

export { initUpdateNavbarOnScroll };
export { chooseNavBar };