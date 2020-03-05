require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
set :database, { adapter: "sqlite3", database: "mydb.db" }
require './models/user'

get '/' do
    @users = User.all
    rb :seeds
end

post '/' do
end