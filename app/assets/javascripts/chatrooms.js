// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js
App.messages = App.cable.subscriptions.create("MessagesChannel", {
  received: data => handleMessage(data)
})

App.users = App.cable.subscriptions.create("UsersChannel", {
	received: data => handleMessage(data)
})

function handleMessage(data){
		const messages = document.querySelector(".messages")
		const message = document.createElement("div")
		message.innerText = data.msg
		message.classList.add('msg')
		messages.append(message)
}

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