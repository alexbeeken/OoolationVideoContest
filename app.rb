require("sinatra")
require("sinatra/reloader")
require('./lib/submission')
require('pg')
require('pry')
require('./lib/sql')

DB = SQL.connect

get '/' do
  erb(:index)
end

post '/submit_video' do
  submission = Submission.new({
    :video_title => params.fetch("video_title"),
    :email => params.fetch("email"),
    :name => params.fetch("name"),
    :street_address => params.fetch("street_address"),
    :city => params.fetch("city"),
    :state => params.fetch("state"),
    :zip => params.fetch("zip"),
    :link => params.fetch("link")
  })
  submission.save_to_database
  erb(:thank_you)
end
