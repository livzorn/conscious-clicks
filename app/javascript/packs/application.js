// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';

const bigPictureSave = () => {
  const bigPictureInput = document.getElementById('big-picture');
  const bigPictureSubmit = document.getElementById('big-picture-submit');
  bigPictureInput.addEventListener('blur', (event) => {
    console.log(bigPictureInput.value);
    bigPictureSubmit.click();
  });
};

const littleGoalsSave = () => {
  const littleGoalsInput = document.getElementById('little-goals');
  const littleGoalsSubmit = document.getElementById('little-goals-submit');
  littleGoalsInput.addEventListener('blur', (event) => {
    console.log(littleGoalsInput.value);
    littleGoalsSubmit.click();
  });
};

const customMessageSave = () => {
  const customMessageInput = document.getElementById('custom-message');
  const customMessageSubmit = document.getElementById('custom-message-submit');
  customMessageInput.addEventListener('blur', (event) => {
    console.log(customMessageInput.value);
    customMessageSubmit.click();
  });
};

const togglePopup = () => {
  const moodButton = document.getElementById('mood-check-in');
  const moodForm = document.getElementById('mood-form');
  moodButton.addEventListener('click', (event) => {
    moodForm.classList.toggle('invisible');
  });
};

function openTab(evt, tabName) {
  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(tabName).style.display = "block";
  evt.currentTarget.className += " active";
}

const toggleMessagesList = () => {
  console.log("is this working?")
  document.querySelectorAll(".btn-show").forEach((button, index) => {
    button.addEventListener("click", (event) => {
      document.querySelector(`.messages-list${index}`).classList.toggle("invisible");
    });
  });
};

document.addEventListener('turbolinks:load', () => {
  bigPictureSave();
  littleGoalsSave();
  customMessageSave();
  toggleMessagesList();
});


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
