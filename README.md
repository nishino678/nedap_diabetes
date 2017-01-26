# README

This is a school project, creating a web-app for diabetic type 2 patients which can:

* Help patients verify the validity of recent news articles regarding diabetis type 2.
* Teach them to be able to verify information themselves.
* Learn us to use github, scss and Ruby on Rails.
* sudo make us a sandwich

It is built to run on a mobile device so layouts will probably look off in a desktop browser.

#Installation

This project uses Ruby 2.3.1 and Rails 5.0.0.1, after cloning run 'bundle install' to install the required gems. To migrate and seed the database run rails db:reset.

This project also uses some important gems and software:
* Paperclip
* TypeScript
* Froala

##Paperclip
https://github.com/thoughtbot/paperclip

Paperclip relies on imagemagick to resize images, on MacOS this can be installed with homebrew by running 'brew install imagemagick'. On a Debian Linux distribution you'll want to run 'sudo apt-get install imagemagick -y'.

##TypeScript
https://www.typescriptlang.org/

Typescript is used for quiz logic, to install typescript you can download the package from the website. Or use NPM package manager and install using 'npm install -g typescript'.

##Froala
https://github.com/froala

Froala is a WYSIWYG text editor, it's used for styling articles. This project installs the rails gem found at https://github.com/froala/wysiwyg-rails.

#Running the project

When installation is finished you may start the server by running 'rails s'.

If you have seeded the database you may log in with two accounts:
  - Admin ( admin@example.com / 123123 ), is able to edit users, articles, specialists and facts.
  - User ( user@example.com / 123123 ), is not able to do so but may view articles and facts.

Otherwise you have the possibility to create a user account by yourself in the app, this will be a user account.
