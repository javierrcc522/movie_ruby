require('actor')
require ('movie')
require('pry')
require('rspec')
require('pg')

DB = PG.connect(:dbname => "movie_database_test")

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM movies *;")
    DB.exec("DELETE FROM actors *;")
  end
end
