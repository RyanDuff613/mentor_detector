# Mentor Detector

#### Epicodus: Capstone Project

#### Ryan Duff 

## Description
Mentor Detector is a Ruby on Rails app that allows users to sign up, either as a mentor or as someone in search of a mentor. Users can add an association with a technology (programming language, library, framework etc) in which they are interested and see a list of potential mentors/mentees that are working with the same tech, along with their contact info. This project is in progress and is not fully functional. A user can create, read, edit and delete a personal account. Users may also create, read, update and delete a technology but site does not currently have functionality for making relationships between users and technologies or for finding user matches. Eventually I’d like to add an ability to enable in-app chat between a mentor and a mentee, but that will have to remain a stretch goal for now. Apologies for the complete lack of styling, I prefer to build core functionality with minimum styling first and layer on the fancy stuff once the logic is in good shape.


## Setup/Installation Requirements
Users will need to install Ruby, Rails, psql and Postgres.
[Click here](https://www.ruby-lang.org/en/documentation/installation/) for instructions on installing Ruby.
[Click here](https://dataschool.com/learn-sql/how-to-start-a-postgresql-server-on-mac-os-x/) for instructions on installing psql and Postgres.
After installing the above software, users will need to clone this project from my [github repository](https://github.com/RyanDuff613/ruby_independent_project4.git). Once cloned, use the command line to navigate to the project folder and install all necessary Ruby Gems with: 
* _$ bundle install_
In the command line, type the following commands which will create the necessary database and launch a local server sso that you can access the application in a browser window.
* _$ rake db:create 
* _$ rake db:migrate
* _$ rake db:test:prepare
* _$ rails s
Now open a web browser and enter localhost:3000 in the address bar to view the project.

## Specifications

| Behavior       | Input         | Output  |
| :--- |:---| :---|
|User navigates to home page and is proompted to create an account if they do not already have one|localhost:3000|Landing page with signin form, link to signup page|
|User navigates to signup page and is prompted to enter email, password, first and last name and select whether they prefer to be a mentor or a mentee. Fields for bio, phone, city and state are optional|http://localhost:3000/signup|Signup form|
|User presses signup button and is taken to their profile page displaying information held in database for that user as well as links to edit and delete the account|Press "Sign up", navigate to localhost:3000/users/1|User Profile Page|
|User navigates to 'Technologies" page and can access a list of all the technologies for which the site has mentors|http://localhost:3000/technologies|List of all supprted technologies, link to add tech to list|
|User clicks a technology and is given the option to add to their profile|http://localhost:3000/technologies/6|Technology page with description of technology, list of users of the technology and option to add technology to user profile|
|User navigates to users list and sees a list of all users. If user is a mentor, page shows recomended mentees, if user is mentee, page shows recommended mentors| http://localhost:3000/users| "Your recommended mentors/mentees. Vee Fakington, Steve Jo, Janine Pace"|
User clicks link to mentor/mentee and is taken to user profile page displaying mento/mentee contact info|Click "Janine Pace"|http://localhost:3000/users/100: A profile of the recommended mentor/mentee that includes contact information|

## User Stories Employed to Determine Behavior Driven Development Strategy

* As user I want to be able to create an account as either a mentor or a mentee
* As a user I want the app to store limited data about me, email, phone, my name and the languages/technologies in which I'm working. 
* As a user I want to have the option to include more data as I see fit, a basic bio as well as information on my current professional position and my physical location so that I can find matches based on this data
* As a mentor I want to see a list of all potential mentees working with technologies that parallel my expertise.
* As a mentor I want the app to recommend best matches based on interest and location.
* As a mentee I want to be able to find potential mentors working with similar technology.

## Technologies Used
* _Ruby_
* _Rails_
* _ActiveRecord_
* _Rspec_
* _Pry_
* _Postgres_
* _Markdown_
* _git & gitHub_

## Known Bugs

Site is unfinished. A user can create, read, edit and delete a personal account. Users may also create, read, update and delete a technology but site does not currently have functionality for making relationships between users and technologies or for finding user matches.

### License

**The MIT license**

Copyright (c) 2020 **Ryan Duff**