require 'rails/generators'
require 'rails/generators/migration'

class DrupalGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  
  def copy_initializer_file
    copy_file 'initializer.rb', 'config/initializers/drupal_fu.rb'
  end
end