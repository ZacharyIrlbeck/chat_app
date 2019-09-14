// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js
App.messages = App.cable.subscriptions.create("MessagesChannel", {
  received: function(data) {
  	console.log(data)
  }
})



document.addEventListener("DOMContentLoaded", () => {
  const messageInput = document.querySelector("input[name='message']")

  messageInput.addEventListener("keydown", (event) => {
  	if(event.keyCode === 13){
  		event.preventDefault()
  		msg = event.target.value
  		App.messages.send({msg: msg})
  		event.target.value = ""
  	}
  })
})