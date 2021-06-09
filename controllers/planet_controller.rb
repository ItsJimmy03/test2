get '/planets/create' do
        erb :'/planets/create'
end

post '/planets/create' do

        name = params['name']
        image_url = params['image_url']
        diameter = params['diameter']
        distance = params['distance']
        mass = params['mass']
        moon_count = params['moon_count']
        #binding.irb
        add_planet(name, image_url, diameter, distance, mass, moon_count)
        redirect '/'
end


get '/planets/:id' do 
        name = params["name"]
        
        erb :'/planets/individual', locals: {name: name}
end

get '/planets/:id/edit' do   
        erb :'/planets/edit'
end


delete '/planets/:id/delete' do
        id = params['id']

        delete_planet(id)
        redirect '/'
end
