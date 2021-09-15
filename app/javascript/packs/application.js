// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import { initMapbox } from '../plugins/init_mapbox';
// import { initCalendar } from '../plugins/init_calendar';
import { initTyped } from '../plugins/init_typejs';
import { initCarousel } from '../plugins/init_carousel';
import { initSweetalert } from '../plugins/init_sweetalert';
import { addEvent } from '../plugins/init_addevent';
// import { initChatroom } from '../plugins/init_chatroom';
// import { initChatroomCable } from '../channels/chatroom_channel';


Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  // initCalendar();
  addEvent();
  initSweetalert();
  initTyped();
  initCarousel();
  initMapbox();
  // initChatroom();
  // initChatroomCable();
});
