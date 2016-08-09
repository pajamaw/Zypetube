# README
## ZYPETUBE

* Ruby version
  - 2.2.3

* This tableless Rails application uses the Zype API to fetch videos from a custom Zype SNL channel. You can check it out deployed to heroku at http://zype.herokuapp.com .

* At this time you can only Login, as the Subscribe functionality has yet to be implemented, to login you can use the following test parameters
  * Username: test@test.com
  * Password: password

* You can also run clone this app for your own uses. I set the environment variables with dotenv - you'll need these in order to fetch the videos for yourself
  * ZYPE_APP_ID
  * ZYPE_CLIENT_ID
  * ZYPE_CLIENT_SECRET
you can learn more about these keys by going to Zype's API documentation, http://dev.zype.com/api_docs/intro/.
