var elem = document.getElementsByClassName("alert");

function listen(elem:any) {
  for (var i = 0; i < elem.length; ++i) {
    elem[i].addEventListener('click', function(){
      this.classList.add("fade-out");
    });
  }
}

window.onload = function() {
  listen(elem);
};
