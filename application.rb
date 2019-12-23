require 'rack'
require 'rack/response'

class Application
  def call(env)
    response = Rack::Response.new

    # Append text to response body
    response.write "This is Rack"
    response.write "!!!"
    # Set Content-Type
    response['Content-Type'] = "text/html"
    # Set cookie
    response.set_cookie("my_cookie", "Hello Rack");
    # [status, headers, body]
    response.finish
  end
end

run Application.new
