require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg' if development?

require_relative 'db/db'
require_relative 'models/planet'
require_relative 'controllers/planet_controller'


get '/' do
    results = all_planets();
    resultsArr = results.to_a
    erb :index, locals: {planets: results, resultsArr: resultsArr}
end

 