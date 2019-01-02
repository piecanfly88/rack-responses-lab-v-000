class Application
 
  def call(env)
    resp = Rack::Response.new
    current_time = Time.new
    current_time.hour >= 12 ? resp.write "Good Afternoon!" : resp.write "Good Morning!"
    resp.finish
  end
 
end