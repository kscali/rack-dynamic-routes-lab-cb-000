class Application 
  
  def call(env)
    
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last 
      item= @@items.find{|i| i.item = item_name}
      
      resp.write item.price 
      
    else 
      resp.write "Route not found"
      resp.write 404 
    end 
  resp.finish
  end 
end 
      
  
  
  
  
  
  
 