// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js


document.addEventListener("DOMContentLoaded", () => {
  const messageInput = document.querySelector("input[name='message']")

  messageInput.addEventListener("keydown", (event) => {
  	if(event.keyCode === 13){
  		event.preventDefault()
  		console.log("hit enter")
  	}
  })
})