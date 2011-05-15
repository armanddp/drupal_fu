require 'rails/generators'
require 'rails/generators/migration'

module DrupalFu
  class DrupalGenerator < Rails::Generators::Base
  
    def copy_initializer_file
      copy_file 'initializer.rb', 'config/initializers/drupal_fu.rb'
    end
  end
end