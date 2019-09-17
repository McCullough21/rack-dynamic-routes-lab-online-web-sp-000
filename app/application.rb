class Application

def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)

  if req.path.match ("/items/")
    item_name = req.path.split("/items/").last
    @@items.each do |item|
      if item == item_name
      resp.write item.price.to_s
      end
    end
  resp.finish
  end
end




end
