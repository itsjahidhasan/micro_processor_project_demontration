
const open = document.getElementById('open');
const model_container = document.getElementById('model_container');
const close = document.getElementById('close');

open.addEventListener('click', () => {
  model_container.classList.add('show');

});
close.addEventListener('click', () => {
  model_container.classList.remove('show');

});

const open1 = document.getElementById('open1');
const model_container1 = document.getElementById('model_container1');
const close1 = document.getElementById('close1');

open1.addEventListener('click', () => {
  model_container1.classList.add('show');
});
close1.addEventListener('click', () => {
  model_container1.classList.remove('show');
});

const open2 = document.getElementById('open2');
const model_container2 = document.getElementById('model_container2');
const close2 = document.getElementById('close2');

open2.addEventListener('click', () => {
  model_container2.classList.add('show');
});
close2.addEventListener('click', () => {
  model_container2.classList.remove('show');
});

const open3 = document.getElementById('open3');
const model_container3 = document.getElementById('model_container3');
const close3 = document.getElementById('close3');

open3.addEventListener('click', () => {
  model_container3.classList.add('show');
});
close3.addEventListener('click', () => {
  model_container3.classList.remove('show');
});

const open4 = document.getElementById('open4');
const model_container4 = document.getElementById('model_container4');
const close4 = document.getElementById('close4');

open4.addEventListener('click', () => {
  model_container4.classList.add('show');
});
close4.addEventListener('click', () => {
  model_container4.classList.remove('show');
});

const panels = document.querySelectorAll('.code-done-by');
panels.forEach(panel => {
  panel.addEventListener('click', () => {
    removeActiveClass();
    panel.classList.add('active')
  })
})
function removeActiveClass() {
  panels.forEach(panel => {
    panel.classList.remove('active');
  })
}
const menu = document.querySelector('.menu.container')
document.addEventListener('scroll', () => {
  var scroll_position = window.scrollY;
  if (scroll_position > 250) {
    menu.style.backgroundColor = '#29323c'
  }
  else {
    menu.style.backgroundColor = 'transparent'
  }
})