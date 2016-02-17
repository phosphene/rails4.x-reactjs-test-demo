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

and if you have issues with sqlite migrations on Mac you will get an activerecord exception on rspec spec

    $ rake db:migrate


#### run tests

    $ rspec spec

##### run development mode

    $ rake db:setup

will load your seed admin user so you can sign in. It will also run any migrations necessary. check db/seeds.rb for what is loaded

    admin password is now "changeme"

#### start rails server to view app in browser

    $ rails s


###### view the app in browser

http://localhost:3000



Documentation and Support
-------------------------

### Gems we are using and their proper uses


#### Devise for authentication


https://github.com/plataformatec/devise


#### Pundit for policies


https://github.com/elabs/pundit




### VIM as your text editor

astrails has done a good job of pulling together many good plugins and his setup targets Rails development

> All the right plugins are in. Nerdtree, CtrlP, you name it.
>
>   The focus is on supporting Rails, but there is a lot of generic stuff too, so it will surely serve you well with any language of your choice.

https://github.com/astrails/dotvim



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
