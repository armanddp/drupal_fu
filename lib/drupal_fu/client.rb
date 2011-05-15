require 'rest_client'
require 'json'

module DrupalFu
  class Client
    
    class << self
      def options
        @options ||= {
          :base_uri => DRUPAL_BASE_URI # Class reloading in Rails Development Environment
        }
      end
    end
        
    def method_missing(resource, args, &block)
      DrupalObject.new(JSON.parse(RestClient.get("#{self.class.options[:base_uri]}/#{resource}/#{args}", {:accept => :json})))
    end
  end
end