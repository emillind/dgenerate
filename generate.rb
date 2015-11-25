require 'rubygems'
require 'haml'
require 'yaml'

yaml_file = ARGV[0] || 'beer_cider.yaml'
template_file = ARGV[1] || 'default.haml'

drinks = YAML.load_file(yaml_file)
engine = Haml::Engine.new(File.read(template_file))

puts engine.render(Object.new, {drinks: drinks})
