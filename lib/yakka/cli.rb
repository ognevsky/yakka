require 'thor'
require 'yakka'

module Yakka
  class Cli < Thor
    include Thor::Actions
    
    def self.source_root
      File.dirname(__FILE__)
    end
    
    desc "clear", "Clear all rules"
    def clear
      Rules.clear
    end
    map "c" => :clear
    
    desc "enable RULE", "Enable a rule"
    def enable(rule)
      Rules.enable(rule)
    end
    map "e" => :enable
    
    desc "install", "Create ~/.yakka file for your own rules"
    def install
      template('templates/yakka.yml', "~/.yakka")
    end
    map "i" => :install
    
    desc "list", "List all available rules"
    def list
      Rules.list
    end
    map "l" => :list
  end
end