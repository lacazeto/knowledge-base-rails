# README

## REQUIREMENTS

Valid Microsoft Azure Translator Text API Key.

## SETUP

Run `bundle install` to install all needed gems  

Run `yarn install` to install all JavaScript packages  

Run `bin/rake db:setup` to setup the development and test databases  

Add you Translator Text API key to ENV["TRANSLATOR_TEXT_SUBSCRIPTION_KEY"] (App set to look for key-value entries inside `config/local_env.yml`)

Finally, run `rails server` to run it locally

## USAGE

User can create and edit articles. Upon article creation/edit the german translation will be fetched automatically and it will become available to be seen by selecting the "DE" pill in the article view page.

Example: By going to `/articles/1` url, initially no DE option will be available, but if this article is edited and saved, it will fetch the german translation and it will become available to be selected on this same page.

There is still things to be done, usage is limited.

## TODO

- Add questions and answers to articles;
- Add logic to article deletion;
- translation service should run in the background, maybe with Redis and Sidekiq (to be confirmed);
- Add tests suites;
- Add pagination to articles index page;
- Add filter / search feature to articles (find by name / filter by most commented);
- Have it staged in Heroku.
