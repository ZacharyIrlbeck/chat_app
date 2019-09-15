Chat App

The first thing I did was decide and what gems I would want to include in my project - i.e. bootstrap gem adds some low-hanging fruit in regards to style, devise already does authentication quite a bit better than me, etc.

The second move was deciding on models and relations of those models. This was a pretty simple setup, where there are chatrooms, and them messages belonging to the chatroom. Finally, a user has many messages.

I then fleshed out the controllers, actions, and views for a bare-bones chat application without Action Cable.

After this was set up, I proceeded to set up the authentication using warden/devise in the action cable connection.

Next up, setting up the channel for the messages, both back and front-end.

After I had a working group chat - it was just one communal chat at this point - I went ahead and made the changes necessary on both the front and back and to allow for multiple rooms. 

Next I set up a channel to monitor for active users. Originally I had a notification in the chat room but later decided on a list of active users in a column to the left of the chat. 

Finally I spend a bit of time applying some styling for fun and creating a seed file so that it will be easier for others to run and test on their machine. 

ON THE SEED FILE
-----------------

Just go ahead and instantiate a new database, load the schema and run the seed file. 

I created two users for easy login

thing1@site.com

and

thing2@site.com

If you should want to login to any of the others users, all the users passwords are "password".