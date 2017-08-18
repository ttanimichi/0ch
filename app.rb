require 'sinatra'
require 'slim'

require_relative 'models/topic'

get '/' do
  @topics = Topic.all
  slim :index
end
