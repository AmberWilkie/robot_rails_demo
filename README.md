# How to make this simple app
## Step by step instructions

### Scaffolding the app: 

1 Create a new folder

2 Initialize git(git init)

3 Create a git repository on Github

4 Add Github repo as remote to local repo (git remote add origin https://github.com/YourGHName/YourRepo.git)

6 Install rails = gem install rails

7 scaffold empty rails app: rails new . --database=postgresql --skip-test --skip-bundle (no bundle and no default testing and using the postgresql db)

8 add necessary files to gitignore

9 branch off from master to develop

There you have a working scaffold ready to be worked on!

## The gems I am using:
  
  #### gem 'devise':
  I need the devise gem in order to generate a devise model (Owner). I can also use the gem to set up sign up and login to my application.

  #### gem 'rspec-rails': 
  This gem is for unit testing(testing models and actions, as well as FactoryGirls)
  
  #### gem 'shoulda-matchers': 
  Lets you write simple one liner tests in rspec, reducing the amount of code you have to write
  
  #### gem 'factory_girl_rails': 
  I need it for unit testing. Instead of having to create a new model and adding all attributes everytime i can simply run FactoryGirl for that model. In case I need to test an association etc.
  
  #### gem 'cucumber-rails': 
  Cucumber is used for Acceptance tests, testing the functionality of the app from the users perspective. Right now in this application there is no user interface. Therefore there is no cucumber Acceptance tests.
  
  #### gem 'database_cleaner': 
  Wiping the database between every test in order to not fill up the db with unnecessary objects.
  
  #### gem 'travis': 
  I used it for initializing a travis yml file and encrypting my Heroku api-key. 
  
  #### gem 'coveralls': 
  Used for viewing how much of the application that is tested. On the Coveralls site you will receive a percentage.
  
  #### gem 'faker': 
  Used it for my email attribute in Owner FactoryGirl, where I had an issue when generated two owners in one test, I got thrown an error that the email was already registered. So I solved it with faker. 


###Setting up continuous deployment via travis CI and test coverage with Coveralls:

Add the travis gem to your repo,
Run travis init to initialize a .travis.yml file
Run travis encrypt YOURHEROKUAPIKEY
Add this code to your Travis file:
````
language: ruby

cache: bundler

rvm:
  - 2.3.0
before_script:
- bundle exec rails db:create --all
- bundle exec rails db:migrate
services:
- postgresql
deploy:
  provider: heroku
  api_key:
    secure: YOUR ENCRYPTED API KEY
  app:  
    develop: heroku-app-name
  on:
    repo: YourGHName/YourRepoName
  run:
  - bundle exec rails db:migrate