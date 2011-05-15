require 'rails/generators'
require 'rails/generators/migration'

module DrupalFu
  class ConfigGenerator < Rails::Generators::Base
    
    source_root File.expand_path("../templates", __FILE__)
    
    def copy_initializer_file
      copy_file 'initializer.rb', 'config/initializers/drupal_fu.rb'
    end
  end
end