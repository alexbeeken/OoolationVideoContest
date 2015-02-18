require("sinatra")
require("sinatra/reloader")
require('./lib/candidate')
require('./lib/user')
require('pg')
require('pry')
require('./lib/sql')
require 'sinatra/captcha'

DB = SQL.connect

=begin
configure :development do
  set :bind, '0.0.0.0'
  set :port, 3000
end
=end

get '/' do
  erb(:index)
end

get '/submit_video' do
