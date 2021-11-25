window.addEventListener( "load", function () {
    document.forms[0].addEventListener( "submit", function ( event ) {
        event.preventDefault();
        sendData();
    });
});


function sendData() {
    const XHR = new XMLHttpRequest();
    XHR.open( "POST", "/api/leads");
    const FD = new FormData( document.forms[0]);
    XHR.onload = function() {
        if (XHR.status === 200) {
            console.log("Success");
        }
    }
    XHR.onerror = function(){
        console.log('fail');
    };

    XHR.send( FD );
}
function mySubmit() {
    document.getElementById("forml").innerHTML = "Thanks! We will get back to you soon.";
  }

  function validateForm() {
    let x = document.forms["myForm"]["name"]["email"]["phone"].value;
    if (x == "") {
      alert("Fill all columns");
      return false;
    }
  }
/*
 XHR.onreadystatechange = function() {
 console.log("ready State " + XHR.readyState);
 if (XHR.readyState == 4) {
 console.log("ready status " + XHR.status);
 if(XHR.status == 0) {
 alert('OH NO!');
 }
 }

 }
 */