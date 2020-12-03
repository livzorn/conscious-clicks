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
  if (bigPictureInput && bigPictureSubmit) {
    bigPictureInput.addEventListener('blur', (event) => {
      bigPictureSubmit.click();
    });
  }
};

const littleGoalsSave = () => {
  const littleGoalsInput = document.getElementById('little-goals');
  const littleGoalsSubmit = document.getElementById('little-goals-submit');
  if (littleGoalsInput && littleGoalsSubmit) {
    littleGoalsInput.addEventListener('blur', (event) => {
      littleGoalsSubmit.click();
    });
  }
};

const customMessageSave = () => {
  const customMessageInput = document.getElementById('custom-message');
  const customMessageSubmit = document.getElementById('custom-message-submit');
  if (customMessageInput && customMessageSubmit) {
    customMessageInput.addEventListener('blur', (event) => {
      customMessageSubmit.click();
    });
  }
};

const togglePopup = () => {
  const moodButton = document.getElementById('mood-check-in');
  const moodForm = document.getElementById('mood-form');
  moodButton.addEventListener('click', (event) => {
    moodForm.classList.toggle('invisible');
  });
};


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
  // toggleMessagesList();

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

  const tabopen = document.getElementById("defaultOpen")
  if (tabopen) {
    tabopen.addEventListener('click', (event) => {
       openTab(event, 'my-custom-sets');
    });
  }
  const byConsciousClicks = document.getElementById("byConsciousClicks")
  if (byConsciousClicks) {
      byConsciousClicks.addEventListener('click', (event) => {
      openTab(event, 'by-conscious-clicks');
    });
  }
  const byOtherClickers = document.getElementById("byOtherClickers")
  if (byOtherClickers) {
      byOtherClickers.addEventListener('click', (event) => {
      openTab(event, 'by-other-clickers');
    });
  }
  const addSet = document.getElementById("addSet")
    if (addSet) {
      addSet.addEventListener('click', (event) => {
      openTab(event, 'add-set');
    });
  }

  // Get the element with id="defaultOpen" and click on it
  document.getElementById("byConsciousClicks").click();

  const items = document.querySelectorAll('.category-item label')
  console.log(items)
  items.forEach((item) => {
    item.addEventListener('click', (event) => {
      items.forEach(item => item.classList.remove('active-emoji'))
      event.currentTarget.classList.add('active-emoji')
    })
  })
});


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
