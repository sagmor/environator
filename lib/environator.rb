require 'yaml'

module Environator
  FILE = File.join('config', 'environment.yml')
  
  def self.load!
    if File.exists? FILE
      YAML.load_file(FILE).each { |key,value| ENV[key] ||= value }
    end
  end
end

Environator.load!
