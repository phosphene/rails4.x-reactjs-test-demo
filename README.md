<<<<<<< HEAD
# rails4.x-reactjs-test-demo
# rails4.x-reactjs-test-demo
=======
Rails4.x Test Demo
================

Rails application informed by acceptance testing.

The basic idea of this demo is to see if Rails is Pareto Optimal for the rapid development of a basic archive site for the use of scientists

Basic requirements are:

1. User sign_in and authorization/authentication:   Devise, see #gems used
2. A policy system for user access to functions:    Pundit, see #gems used
3. Upload of artifacts:                             Carrierwave
4. Archivists can create categories for artifacts:  Categories controller
5. Archivists can tag artifacts and browse tags:    to be implemented
6: A decent look and feel:                          Bootstrap
7: Production deployment to AWS                     to be implemented


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

A navigation config is in place. However, only [application slim](app/views/layouts/_navigation.html.slim) is rendering it

https://github.com/codeplant/simple-navigation

    # generate nav
    $ rails generate navigation_config

current nav config is at

[current nav config](config/navigation.rb)

in our views, if we choose to use simple nav for bootstrap we would do the following:

    render_navigation :expand_all => true, :renderer => :bootstrap


this example is based on

https://github.com/pdf/simple-navigation-bootstrap

which we have included in our Gemfile

[current Gemfile](Gemfile)


from the simple-navigation-bootstrap docs:

> Split navigation
>
> For items with sub-navigation, you may specify :split => true on an item to enable a split dropdown. Split dropdowns allow using an url on the primary navigation item, as well as having a dropdown containing sub-navigation. If you plan on using this feature, in your application.css or equivalent you must require the bootstrap_navbar_split_dropdowns stylesheet after requiring Bootstrap.
>
> For example:
>
> /*
> *= require bootstrap_and_overrides
> *= require bootstrap_navbar_split_dropdowns
> */
>
> You may also enable split navigation for all children by setting the split attribute of the container to true (defaults to false).


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
    $ git push  # origin master   push to master is implicit if you are on that branch: depends on your git version and settings

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
>>>>>>> 2e781d63be52ea58c78bc20c960b3135f44337c9
