// Flash messages JS
var elem = document.getElementsByClassName("alert");

function listen(elem:any) {
  for (var i = 0; i < elem.length; ++i) {
    elem[i].addEventListener('click', function(){
      this.classList.add("fade-out");
    });
  }
}

///////////////////////// QUIZIES

function answerListener(){
  var answers = document.getElementsByClassName('answer');
  for (var i = 0; i < answers.length; ++i) {
    var answer = answers[i];
    answer.addEventListener('click', function(){
      checkCorrectness(this);
      // this.classList.add("chosen");
    })
  }
}

function checkCorrectness(element:any) {
  var test = document.getElementsByClassName("answer"),
      correctness = element.getAttribute("data-correct");
  addClass(element, correctness);
}

function addClass(element:Element, correctness:string|boolean) {
  var alreadyHasClass = element.classList.contains("wrong")||element.classList.contains("right");
  if (!alreadyHasClass){
    if(correctness == "true"){
      element.classList.add("correct");
    } else {
      element.classList.add("wrong");
    }
  }
}

////////////

function quizListener(){
  var answersClusters = document.getElementsByClassName('answers');
  for (var i = 0; i < answersClusters.length; ++i) {
    var children = answersClusters[i];
    // console.log(child[0]);
    // getAnswers(children);
  }
}

window.onload = function() {
  listen(elem);
  // quizListener();
  answerListener();
 };
