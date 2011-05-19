require 'yaml'

module Yakka  
  class Configuration
    attr_reader :rules, :rule_keys
    
    def initialize
      if ! File.exists?(File.expand_path("~/.yakka"))
        puts "[Initializing] ".color(:red) + "Can not be done. You should run `yakka install`"
        exit 0
      end
      
      @rules      = YAML.load_file(File.expand_path("~/.yakka"))["rules"]
      @rule_keys  = rules.map(&:first)
    end
  end
end