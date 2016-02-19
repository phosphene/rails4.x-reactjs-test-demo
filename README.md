Rails4.x Test Demo
================

Rails application informed by acceptance testing.

Ruby on Rails
-------------

This application requires:

- Ruby 2.3.0
- Rails 4.2.5.1

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).


##### Useful RVM tips


install bundler globally

    $ cd # to move to your home dir and outside of repo!
    $ rvm gemset use global
    $ gem list
    $ gem install bundler
    $ cd /path/to/repo



Getting Started
---------------
#### first time to repo

    $ bundle install


#### run tests

    $ rspec spec
    $ rspec spec/features   #will run only features
    $ rspec spec/policies  #will run only policies
    $ rspec spec/features/users/sign*  #wildcard
    $ rspec spec/features/users/sign_in_spec.rb  #fullpath

db problems?

   $ rake db:migrate RAILS_ENV=test  #or whatever environment: defaults to development


##### run development mode

    $ rake db:setup

to load your seeds

Currently loads:

1. admin user so you can sign in. It will also run any migrations necessary. check db/seeds.rb if you wnant to for what is loaded

   a. admin password is now "changeme"

#### start rails server in development mode

    $ rails s


###### view the app in browser

http://localhost:3000



Documentation and Support
-------------------------

## Gems we are using and their proper uses


##### Devise for authentication


https://github.com/plataformatec/devise


##### Pundit for policy


https://github.com/elabs/pundit


##### Simple Navigation for nav

https://github.com/codeplant/simple-navigation

    # generate nav
    $ rails generate navigation_config



##### Pareto Optimal Text editing

### VIM as your text editor

astrails has done a good job of pulling together many good plugins and his setup targets Rails development

> All the right plugins are in. Nerdtree, CtrlP, you name it.
>
>   The focus is on supporting Rails, but there is a lot of generic stuff too, so it will surely serve you well with any language of your choice.

https://github.com/astrails/dotvim

### Git commit flow

This is the most basic of git commit flows as if you were working on the master branch of this demo project

    $ git pull origin master # check remote for changes
    $ git status  # get the status of our current changes
    $ git add . # or only the files I want to commit
    $ git commit -m  ""  # you can commit many times locally before pushing
    $ git push origin master  # push to master

In practice, you will probably be working on your own feature branches off of the development branch of a private repository. In that instance, it will be time for you to adopt something along the lines of git-flow

http://danielkummer.github.io/git-flow-cheatsheet/




Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
