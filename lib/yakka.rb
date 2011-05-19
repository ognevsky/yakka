module Yakka
  require 'yakka/rules'
  require 'yakka/configuration'
  
  def self.configuration
    @_configuration ||= Configuration.new
  end
end
