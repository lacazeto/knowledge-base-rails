# README

## SETUP

Run bundle install to install all needed gems
Run yarn install to install all JavaScript packages
Run bin/rake db:setup to setup the development and test databases

## USAGE

User can create and edit articles. Once they are created is also possible to see them in German by selecting the "DE" pill in the article view page.

There is still things to be done, usage is limited.

## TODO

- Add questions and answers to articles;
- Add logic to article deletion;
- translation service should run in the background, maybe with Redis and Sidekiq (to be confirmed);
- Add tests suites;
- Add pagination to articles index page;
- Add filter / search feature to articles (find by name / filter by most commented).
