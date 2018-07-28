# README
Description
This project is designed to meet the requirements of the Flatiron School Rails Project assignment and serve the Emporia Social Justice Supporters Facebook Group, whose members seek and create opportunities to raise awareness of social issues and find ways to solve them.

Because this group is on Facebook, adding "login with Facebook" was a logical way to address that portion of the project requirements. I echo the Flatiron staff's recommendation to stay away from this if possible. It adds a layer of complexity that took days to resolve.

Things you may want to cover:

* Ruby version - 2.4.2
* Gem version - 2.7.6
* Rails 5.2.0

* System dependencies - most important:
  bcrypt (~> 3.1.7)
  dotenv-rails (~> 2.5.0)
  omniauth
  omniauth-facebook (~> 4.0)
  omniauth-google-oauth2
  pry
  puma (~> 3.11)
  rails (~> 5.2.0)
  spring
  spring-watcher-listen (~> 2.0.0)
  sprockets (~> 3.7.2)
  sqlite3
  thin

  also added require 'securerandom' to config/application.rb to generate random password for Facebook users

* Database creation - tables were generated with models and frequently manually edited. A number of changes had to be made - deleting one table, changing a join table, changing the join table's name, adding and deleting columns - all changes were made by generating migrations

* Database initialization - once the initial set of tables were constructed, rake db:migrate was run. It was re-run with each additional generated migration.

* How to run the test suite - I started to add testing at the beginning of this project, but my lack of understanding would have required additional time to stop and learn more about rspec. I didn't feel I had time to do that. I wish I had learned more about it in preceding lessons since it is something I must have in my developer's toolbox.

* Deployment instructions - fork and clone the git repo, go to the terminal and in the same directory as the repo, run 'bundle install', 'rake db:migrate', then 'thin start --ssl'. Go to the browser and type in the URL of https://localhost:3000. The home screen should appear.

* README file contains the following sections: *

Contributors guide (e.g. file an issue, file an issue with a pull request, etc)
Licensing statement (e.g. This project has been licensed under the MIT open source license.)
LICENSE file is included in your repo and linked at the bottom of your README file(e.g. MIT open source license, GNU public license, Creative Commons license) *
True...





