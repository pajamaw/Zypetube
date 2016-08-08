Project Guidelines
=====================

This project will be done in two parts:

1. High level architecture overview.
  * Explain how the site will function from a broad level. Describe the architecture of
the app and how it will communicate with the Zype api. Give an overview of the models and controllers. Describe where various portions of the functionality and logic will be. You can use diagrams if you would like.
  * Keep in mind that this application will eventually do more than simply allow a user to login, so design the app the be flexible and modular.
2. Code the basic application.
  * Send us a link to a github repository with your source code.
  * Bonus points if we can run the app via a publicly accessible url.

Roadmap
-------
## Framework
  * play with api call in Postman
  * Generate Rails app
  * Add basic video routes
  * Add necessary gems
  * Setup .env
  * Test out video embedding
  * Decide where to put video api Call
  * Decide on authentication

## Videos
  * Setup video model
  * Setup zype api service
    * Two methods:
      * grabs json body
      * maps json body into array of video objects
  * Setup videoscontroller
    * index
      * call ZypeService
    * show
  * setup video views
    * setup index page
    * setup show with partials and info from video

### Authentication
  * Authenticate User with zype oauth in zypeservice
  * Session controller with access token
  * Add appropriate callbacks with custom methods to ensure "subscription vs non-subscription videos" are distinguished
  * Add "Firewall" type view
    * redirects from subscription video with flash alert to sign in
    * form that has two buttons
      * Login
        * Upon successful login redirects back to previous video
        * Keeps you there until successful login
      * Subscribe
        * Nothing for right now

### GUI
  * Navbar
    * login/logout
    * logo -> index
  * Bootstrap it a little
  * Add pagination (Kaminari maybe?)

### Heroku
  * Push it up baby!

### Test it out and Good Luck!
