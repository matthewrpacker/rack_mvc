$LOAD_PATH.unshift '.'

require 'lib/rack_mvc'
require 'app/controllers/users_controller'
require 'app/models/user'

# use Rack::CommonLogger
use Rack::Static, root: 'public', urls: ['/images', '/js', '/css']
use Rack::ContentLength
use Rack::Reloader, 0
use RackMvc::Router do
  match '/' => 'users#index'
end

run RackMvc::Application
