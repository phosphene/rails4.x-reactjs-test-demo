# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :category, 'Categories', categories_path
    primary.item :artifact, 'Artifacts', artifacts_path
    primary.item :admin, 'Admin', admin_root_path, class: 'special', if: -> { current_user.admin? }
    primary.item :account, 'Account', user_path, unless: -> { logged_in? }

    # you can also specify html attributes to attach to this particular level
    # works for all levels of the menu
    # primary.dom_attributes = {id: 'menu-id', class: 'menu-class'}

    # You can turn off auto highlighting for a specific level
    # primary.auto_highlight = false
  end
end
