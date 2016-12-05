$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

require 'rack'
require 'erb'
require 'tilt'

module RackMvc
  autoload :Router, 'rack_mvc/router'
  autoload :Application, 'rack_mvc/application'
  autoload :BaseController, 'rack_mvc/base_controller'
end
