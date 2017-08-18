require 'sinatra'
require 'slim'

require_relative 'models/topic'
require_relative 'models/post'

get '/' do
  @topics = Topic.all
  slim :index
end

post '/topics' do
  topic = Topic.new(title: params[:title])
  topic.save
  redirect '/'
end
