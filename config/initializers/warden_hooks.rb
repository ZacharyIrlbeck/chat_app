Warden::Manager.before_logout do |user, auth, opts|
  BroadcastLogoutJob.perform_later(user)
end

Warden::Manager.after_authentication do |user, auth, opts|
  BroadcastLoginJob.perform_later(user)
end