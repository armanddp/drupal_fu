module DrupalFu
  class DrupalObject
    def initialize(hash)
      @hash = hash
    end
    
    def method_missing(method, *args, &block)
      if @hash.has_key?(method.to_s)
        return @hash[method.to_s]
      end
      super
    end
  end
end