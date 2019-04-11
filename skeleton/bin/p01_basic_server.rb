require 'rack'
require 'byebug'

class RackApp
  
  def self.call(env)
    req = Rack::Request.new(env)
    res = Rack::Response.new
    res['Content-Type'] = 'text/html'
    res.write(req.path_info)
    res.finish
  end
  
end

Rack::Server.start(
  app: RackApp,
  Port: 3000
)