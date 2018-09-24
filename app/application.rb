class Application 
  
  def call(env)
    
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path = "/items/#{name}"
      resp.write = "#{price}"
    else 
      resp.write = 404 
    end 
  resp.finish
  end 
end 
      
  
  
  
  
  
  
 