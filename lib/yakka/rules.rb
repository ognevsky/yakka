require 'ghost'
require 'rainbow'

module Yakka
  class Rules
    class << self
      def enable(rule)
        begin
          clear
          
          Yakka.configuration.rules[rule].each do |host|
            Host.add(host, '127.0.0.1', true)
            
            puts "[Adding] ".color(:green) + host.underline
          end
        rescue
          puts "[Adding] ".color(:red) + "Can not be done."
          exit 0
        end
      end
      
      def clear
        begin
          Host.empty!

          puts "[Emptying] ".color(:green) + "Done."
        rescue
          puts "[Emptying] ".color(:red) + "Can not be done."
          exit 0
        end
      end
      
      def list
        begin
          rules = Yakka.configuration.rules
          
          puts "[Listing] ".color(:green) + "#{rules.length} rule(s):"
          rules.each_key do |key|
            puts "  #{key}"
          end
        rescue
          puts "[Listing] ".color(:red) + "Can not be done."
          exit 0
        end
      end
    end
  end
end