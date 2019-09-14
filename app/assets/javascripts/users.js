function handleUsersList(data){
  // data['active'], data['userid'], data['username']
  if(data.active === true){
    $('#userList').append(`<li data-userid='${data.userid}'>${data.username}</li>`)
  } else {
    $("[data-userid='" + data.userid + "'").remove()
  }
}


document.addEventListener("DOMContentLoaded", ()=> {
	App.users = App.cable.subscriptions.create("UsersChannel", {
		received: data => handleUsersList(data)
	})
})