
function displayDirectory() {
    const hostBody = document.getElementById('host-an-event');
    const directoryBody = document.getElementById('directorytable');
    const mainBody = document.getElementById('main');
    directoryBody.style.display = 'block';
    directoryBody.style.transition = 'all 0.3s';
    directoryBody.style.pointerEvents = 'all';
    mainBody.style.filter = "blur(4px)";
    mainBody.style.transition = '0.3s';
}

function clickOnX() {
    const hostBody = document.getElementById('host-an-event');
    const directoryBody = document.getElementById('directorytable');
    const mainBody = document.getElementById('main');
    console.log('what');
    hostBody.style.display = 'none';
    hostBody.style.transition = 'all 0.3s';
    hostBody.style.pointerEvents = 'none';
    directoryBody.style.display = 'none';
    directoryBody.style.transition = 'all 0.3s';
    directoryBody.style.pointerEvents = 'none';
    mainBody.style.filter = "blur(0px)";
    mainBody.style.transition = '0.3s';
}

function displayHost() {
    const hostBody = document.getElementById('host-an-event');
    const directoryBody = document.getElementById('directorytable');
    const mainBody = document.getElementById('main');
    hostBody.style.display = 'block';
    hostBody.style.transition = 'all 0.3s';
    hostBody.style.pointerEvents = 'all';
    mainBody.style.filter = "blur(4px)";
    mainBody.style.transition = '0.3s';
}

window.onload = function() {
  const mainBody = document.getElementById('main');
// Events
var modalEvent = document.getElementById('myModalEvents');

var eventbtn = document.getElementById('eventBtn');

var eventsSpan = document.getElementsByClassName('Eventsclose')[0];

eventbtn.onclick = function () {
  modalEvent.style.display = 'block';
  mainBody.style.filter = "blur(4px)";
  mainBody.style.transition = '0.3s';
};
eventsSpan.onclick = function () {
  modalEvent.style.display = 'none';
  mainBody.style.filter = "blur(0px)";
  mainBody.style.transition = '0.3s';
};

// Alerts
var modalAlert = document.getElementById('myModalAlerts');

var alertbtn = document.getElementById('alertBtn');

var alertsSpan = document.getElementsByClassName('Alertsclose')[0];

alertbtn.onclick = function () {
  modalAlert.style.display = 'block';
  mainBody.style.filter = "blur(4px)";
  mainBody.style.transition = '0.3s';
};
alertsSpan.onclick = function () {
  modalAlert.style.display = 'none';
  mainBody.style.filter = "blur(0px)";
  mainBody.style.transition = '0.3s';
};

// Request
var modalRequest = document.getElementById('myModalRequest');

var requestbtn = document.getElementById('requestBtn');

var requestSpan = document.getElementsByClassName('Requestclose')[0];

requestbtn.onclick = function () {
  modalRequest.style.display = 'block';
  mainBody.style.filter = "blur(4px)";
  mainBody.style.transition = '0.3s';
};
requestSpan.onclick = function () {
  modalRequest.style.display = 'none';
  mainBody.style.filter = "blur(0px)";
  mainBody.style.transition = '0.3s';
};

// Community Speak
var modalCommunitySpeak = document.getElementById('myModalCommunitySpeak');

var communitySpeakbtn = document.getElementById('communitySpeakBtn');

var communitySpeakSpan = document.getElementsByClassName('CommunitySpeakclose')[0];

communitySpeakbtn.onclick = function () {
  modalCommunitySpeak.style.display = 'block';
  mainBody.style.filter = "blur(4px)";
  mainBody.style.transition = '0.3s';
};
communitySpeakSpan.onclick = function () {
  modalCommunitySpeak.style.display = 'none';
  mainBody.style.filter = "blur(0px)";
  mainBody.style.transition = '0.3s';
};

}